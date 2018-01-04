package nz.govt.nzqa.m11n.tools.automation.db

import groovy.util.logging.Slf4j

import java.util.regex.Matcher
import java.util.regex.Pattern

@Slf4j
class LineChecker {
    // Generic
    boolean lineStartsWith(String line, String prefix) {

//        System.out.println("Line before:" + line)
        // Remove unecessary comments and overhead etc
        def regex = '.*(?i)' + prefix + " "
        def result = (line =~ /$regex/)
//        System.out.println("regex:" + regex)


        if(result){
//            System.out.println("Line after:" + result[0])
            return true
        }
        else{
            return false
        }
    }

    boolean lineContains(String line, String subString) {
        return (line.toLowerCase().contains(subString))
    }

    boolean lineEndsWith(String line, String subString) {
        return (line.toLowerCase().endsWith(subString))
    }

    String getTypeFromStatus(boolean isCreateStatement) {

        if(isCreateStatement){
            return "add"
        }

        return "drop"
    }

    String getTypeFromLine(String line) {

        if(lineContains(line, "addtype") || lineContains(line, "create ")){
            return "add"
        }

        return "drop"
    }

    String getEntityNameFromLine(String line, String lineType) {

        def regexFilterList = []
        int resultIndex = 0

        switch(lineType){
            case 'exec':
                regexFilterList = [/EXEC (\w+) (\w+)/, /EXEC (\w+) '(\w+)'/, /EXEC (\w+) '(\w+\.\w+)'/]
                resultIndex = 2
                break

            case 'exec type and name':
                regexFilterList = [/EXEC (\w+) (.*)/]
                resultIndex = 2
                break

            case 'create':
                regexFilterList =[/(?i)CREATE (\w+) (\w+\.\w+)/, /(?i)CREATE (\w+) (\w+)/]
                resultIndex = 2
                break

            case 'create index':
                regexFilterList =[/.*(?i)index (\w+)/]
                resultIndex = 1
                break

            case 'if index':
                regexFilterList =[/.*(?i)id=OBJECT_ID\('(\w+.*)'\) and name='(\w+)'/]
                resultIndex = 2
                break

            case 'constraint':
                regexFilterList =[/(?i)CONSTRAINT (\w+.*)/]
                resultIndex = 1
                break

            default:
                regexFilterList = [/(\w+)\.(\w+)/, /'(\w+)'/, /'(\w+).(\w+)'/, /(\w+)\.(\w+)/, /(\w+)_(\w+)/]
                resultIndex = 0
                break
        }

        String name = ''

        mainloop:
        for (def regexFilter : regexFilterList){

            def result = (line =~ /$regexFilter/)

            if (result){ //&& lineStartsWith(line, "create procedure")) {
//                System.out.println("Result[0]: " + result[0])

                // Return full match and strip away single quote
                name = result[0][resultIndex].replace("'", "")
                break mainloop
            }
        }
        return name
    }

    String getValueFromLine (String line){
        def regexFilter = /(?i)create (\w+) (\w+\.\w+) as (.*)/
        def result = (line =~ /$regexFilter/)

        String name = ''

        if (result){
            name = result[0][3]
        }

        return name
    }

    String[] getOperationNameAndUserFromGrantLine (String line){
        def regexFilter = /(?i)grant (\w+) on (\w+.*) to (\w+.*)/
        def result = (line =~ /$regexFilter/)

        if (result){
            return result[0]
        }

        return []
    }

    String getIndexTypeFromCreateLine (String line){
        def regexFilter = /(?i)create (\w+.*) index \w+.*/
        def result = (line =~ /$regexFilter/)

        if (result){
            return result[0][1]
        }

        return []
    }

    String[] getNameIndicesFromOnLine(String line){
        def regexFilter = /(?i)on (.*)\((.*)\)/
        def result = (line =~ /$regexFilter/)

        if (result){
            return result[0]
        }

        return []
    }

    String getFkColumnNameFromFkLine(String line){
        def regexFilter = /(?i)foreign key \((.*)\)/
        def result = (line =~ /$regexFilter/)

        if (result){
            return result[0][1]
        }

        return []
    }

    String[] getFkRefTableColumnFromReferencesLine(String line){
        def regexFilter = /(?i)references (.*) \((.*)\)/
        def result = (line =~ /$regexFilter/)

        if (result){
            return result[0]
        }

        return []
    }

    String getChecksFromCheckLine(String line) {

        // check name in ints, check name between val1 and val2, check multiple conditions separated by brackets
        def regexFilterList = [/(?i)check (.*)/]


        for (def regexFilter : regexFilterList) {
            def result = (line =~ /$regexFilter/)

            if (result) {
                return result[0][1]
            }
        }

        return ''
    }

    String formatCheckStatement(List<String> completeCheckStatement){

        List<String> result = new ArrayList<>()

        for (String checkStatement : completeCheckStatement){
            if(checkStatement.contains(" between ") && checkStatement.contains(" and ")){
                def filteredStatement = (checkStatement =~ /(?i)\(((\w+) between (\d+) and (\d+))\)/)
                String bracketedEntityName = "[" + filteredStatement[0][2] + "]"
                String min = (Long.valueOf((String)filteredStatement[0][3]) < Long.valueOf((String)filteredStatement[0][4])? filteredStatement[0][3] : filteredStatement[0][4])
                String max = (Long.valueOf((String)filteredStatement[0][3]) > Long.valueOf((String)filteredStatement[0][4])? filteredStatement[0][3] : filteredStatement[0][4])

                String formattedStatement = "(" + bracketedEntityName + ">=(" + min + ") AND " + bracketedEntityName + "<=(" + max+ "))"
                result.add(formattedStatement)
            }

            else if (checkStatement.contains(" in ")){
                def filteredStatement = (checkStatement =~ /(?i)\((\w+) in \((.*)\)\)/)
                String bracketedEntityName = "[" + filteredStatement[0][1] + "]"
                List<String> valueList = filteredStatement[0][2].replaceAll('"', "'").split(",")
                String formattedStatement = '('

                for (String value : valueList) {
                    formattedStatement += bracketedEntityName + "=" + value + (value.equalsIgnoreCase(valueList[-1])? "" : " OR ")
                }

                formattedStatement += ")"
                result.add(formattedStatement)
            }

            else if (checkStatement.contains("=")) {
                Pattern intPattern = Pattern.compile(/\= (\d+)/)
                Matcher intMatcher = intPattern.matcher(checkStatement)
                String modifiedCheckStatement = checkStatement

                while(intMatcher.find()){
                    modifiedCheckStatement = modifiedCheckStatement.replaceAll(intMatcher.group(), "= (" + intMatcher.group(1) + ")")
                }

                Pattern stringPattern = Pattern.compile(/\= "(\d+)"/)
                Matcher stringMatcher = stringPattern.matcher(checkStatement)

                while(stringMatcher.find()){
                    modifiedCheckStatement = modifiedCheckStatement.replaceAll(stringMatcher.group(), "= '" + stringMatcher.group(1) + "'")
                }

                result.add(modifiedCheckStatement)
            }

            else {
                result.add(checkStatement)
            }
        }

        String resultString = String.join(" ", result)

        return resultString
    }

    String [] getCheckEntityNameValuesFromCheckLine(String line){
        def regexFilter = /(?i)check \((.*) in \((.*)\)\)/
        def result = (line =~ /$regexFilter/)

        if (result){
            return result[0]
        }

        return []
    }

    boolean entityNameHasChanged(String newEntityName, String currentEntityName){
        if(!newEntityName.equalsIgnoreCase(currentEntityName)){
            return ! newEntityName.replace("dbo.", "").equalsIgnoreCase(currentEntityName)
        }

        return ! newEntityName.equalsIgnoreCase(currentEntityName)
    }


}
