package nz.govt.nzqa.m11n.tools.automation.parser

class ParserUtil {

    /**
     * Read the file line by line and extract lines between 'go' as a statement
     * @param file
     * @return
     */
    List<String> getStatementsFromFile(File file) {

        List<String> statements = new ArrayList<String>()
        boolean newStatement = false
        String statement = ''

        file.eachLine { String line ->
            if (line.trim()) {
                line = line.trim()
                if (line.equalsIgnoreCase("go")) {
                    statements.add(statement)
                    newStatement = true
                } else if (line.startsWith("USE")) {
                    statement = line
                } else if (newStatement) {
                    newStatement = false
                    statement = line
                } else {
                    statement += " " + line
                }

            }
        }

        return statements
    }

    String getTypeFromFolderName(String dbFolderName) {

        def result = (dbFolderName =~ /split(\w+)/)

        return (result? result[0][1]: '')
    }

    List<String> getAllFolderNames(String dbFolderName) {

        List<String> names = new ArrayList<>()

        new File(dbFolderName).eachDir(){
            dir -> names.add(dir.getName())
        }

        return names.sort()
    }

    List<String> getSqlFilesInDir(String dir) {

        List<String> names = []

        new File(dir).eachFileMatch(~/.*.sql/) {
            file -> names.add(file.getName())
        }

        return names.sort() as String[]
    }
}
