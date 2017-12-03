package nz.govt.nzqa.m11n.tools.automation.db

import groovy.util.logging.Slf4j

@Slf4j
class LineChecker {

    // Generic
    boolean lineStartsWith(String line, String prefix) {
        return (line.toLowerCase().startsWith(prefix))
    }

    boolean lineContains(String line, String subString) {
        return (line.toLowerCase().startsWith(subString))
    }


    String getName (String line) {

    }

    // For splitDefaults
    boolean lineStartsWithIf(String line){
        return (line.toLowerCase().startsWith("if"))
    }

    boolean lineStartsWithCreate(String line) {
        return (line.toLowerCase().startsWith("create"))
    }

    // For splitUserDatatypes
    String getTypeFromLine(String line) {

       if(line.toLowerCase().contains("add")){
           return "add"
       }

        return "drop"
    }

    String getEntityNameFromLine(String line) {

        def regexFilter = /'(\w+)'/
        String name = ((line =~ /$regexFilter/)[0][1])
        System.out.println("entity name: " + name)
        return (name.size() >= 1 ? name : '')
    }


    boolean entityNameHasChanged(String line, String currentEntityName){
        name = getEntityNameFromLine(line)
        return (name.equals(currentEntityName))
    }

    // For splitTables
    boolean lineIsCreateTable(String line) {
        return (line.toLowerCase().contains("create table"))
    }

    String[] getSchemaAndTableNames(String line) {
        return line.substring(line.lastIndexOf(" ") + 1).split("\\.")
    }

}
