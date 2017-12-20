package nz.govt.nzqa.m11n.tools.automation.db

import groovy.util.logging.Slf4j

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

    String getTypeFromStatus(boolean isCreateStatement) {

        if(isCreateStatement){
            return "add"
        }

        return "drop"
    }

    String getTypeFromLine(String line) {

        if(lineContains(line, "add") || lineContains(line, "create")){
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
                regexFilterList =[/(?i)CONSTRAINT (\W+.*)/]
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

    boolean entityNameHasChanged(String newEntityName, String currentEntityName){
        if(!newEntityName.equalsIgnoreCase(currentEntityName)){
            return ! newEntityName.replace("dbo.", "").equalsIgnoreCase(currentEntityName)
        }

        return ! newEntityName.equalsIgnoreCase(currentEntityName)
    }


}
