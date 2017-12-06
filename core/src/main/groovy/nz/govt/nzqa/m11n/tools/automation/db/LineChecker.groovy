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

    String getEntityNameFromLine(String line) {

        def regexFilterList = [/'(\w+)'/, /'(\w+).(\w+)'/, /(\w+)\.(\w+)/, /CREATE TRIGGER (\w+)/,/(\w+)_(\w+)/, /CREATE PROCEDURE (\w+)/, /create procedure (\w+)/]

//        System.out.println("Line before:" + line)
//        line.replace(".", "\\.")
//        System.out.println("Line after:" + line)

        String name = ''

        mainloop:
        for (def regexFilter : regexFilterList){

            def result = (line =~ /$regexFilter/)

            if (result){ //&& lineStartsWith(line, "create procedure")) {
                System.out.println("Result[0]: " + result[0])

                // Return full match and strip away single quote
                name = result[0][0].replace("'", "")
                break mainloop
            }
        }
//        System.out.println("entity name: " + name)

        return name
    }


    boolean entityNameHasChanged(String newEntityName, String currentEntityName){
        return ! newEntityName.equalsIgnoreCase(currentEntityName)
    }

    // For splitTables
    boolean lineIsCreateTable(String line) {
        return (line.toLowerCase().contains("create table"))
    }

    String[] getSchemaAndTableNames(String line) {
        return line.substring(line.lastIndexOf(" ") + 1).split("\\.")
    }

}
