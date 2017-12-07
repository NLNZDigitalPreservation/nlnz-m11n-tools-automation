package nz.govt.nzqa.m11n.tools.automation.db

import groovy.util.logging.Slf4j

@Slf4j
class LineChecker {

    // Generic
    boolean lineStartsWith(String line, String prefix) {
        return (line.toLowerCase().startsWith(prefix))
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

            case 'create':
                regexFilterList =[/(?i)CREATE (\w+) (\w+\.\w+)/, /(?i)CREATE (\w+) (\w+)/]
                resultIndex = 2
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
                System.out.println("Result[0]: " + result[0])

                // Return full match and strip away single quote
                name = result[0][resultIndex].replace("'", "")
                break mainloop
            }
        }
        return name
    }

    boolean entityNameHasChanged(String newEntityName, String currentEntityName){
        if(!newEntityName.equalsIgnoreCase(currentEntityName)){
            return ! newEntityName.replace("dbo.", "").equalsIgnoreCase(currentEntityName)
        }

        return ! newEntityName.equalsIgnoreCase(currentEntityName)
    }
}
