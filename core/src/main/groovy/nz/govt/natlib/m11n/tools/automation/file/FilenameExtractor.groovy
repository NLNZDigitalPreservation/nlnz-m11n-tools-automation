package nz.govt.natlib.m11n.tools.automation.file

class FilenameExtractor {

    String[] getListOfSqlScriptsInDir(String dir) {

        List<String> names = []

        new File(dir).eachFileMatch(~/.*.sql/) {
            file -> names.add(file.getName())
        }

        return names.sort() as String[]
    }

    String[] getListOfSplitSqlScriptsInDir(String dir, String type) {

        List<String> names = new ArrayList<>()

        def regexFilterAdd = /split(\w+)-(\d+)-(\w+.*)-add.sql/
        def regexFilterDrop = /split(\w+)-(\d+)-(\w+.*)-drop.sql/
        def regexFilter = /split(\w+)-(\d+)-(\w+.*).sql/

        if (type.equalsIgnoreCase("add")){
            regexFilter = regexFilterAdd
        }
        else if (type.equalsIgnoreCase("drop")){
            regexFilter = regexFilterDrop
        }
        new File(dir).eachFileMatch(~/$regexFilter/) {
            file -> names.add(file.getName())
        }

//        System.out.println(names)

        Collections.sort(names, new Comparator<String>() {
            int compare(String o1, String o2) {
                return extractInt(o1) - extractInt(o2)
            }

            int extractInt(String s) {
//                String num = s.replaceAll("\\D", "")
                String num = (s =~ /\d+/)[0]
                // return 0 if no digits found
                return num.isEmpty() ? 0 : Integer.parseInt(num)
            }
        })

//        System.out.println(names)
        return names as String[]
    }

      String[] getAssemblyFilesInDir(String dir) {
        def names = []

        new File(dir).eachFileMatch(~/(\d+).*.sql/) {
            file -> names.add(file.getName())
        }

        return names.sort()
    }

    String getEntityNameFromSybaseSplitSqlName(String sybaseSplitSqlName, String type){

//        System.out.println("sybaseSplitSqlName: " + sybaseSplitSqlName)
        String name = ''

        def regexFilterAdd = /split(\w+)-(\d+)-(\w+.*)-add.sql/
        def regexFilterDrop = /split(\w+)-(\d+)-(\w+.*)-drop.sql/
        def regexFilter = /split(\w+)-(\d+)-(\w+.*).sql/


        if (type.equalsIgnoreCase("add")){
//            System.out.println("after regex: " + (sybaseSplitSqlName =~ /$regexFilterAdd/)[0])
            name = ((sybaseSplitSqlName =~ /$regexFilterAdd/)[0][3])
        }

        else if (type.equalsIgnoreCase("drop")){
//            System.out.println("after regex: " + (sybaseSplitSqlName =~ /$regexFilterDrop/)[0])
            name = ((sybaseSplitSqlName =~ /$regexFilterDrop/)[0][3])

        }

        else{
            name = ((sybaseSplitSqlName =~ /$regexFilter/)[0][3])
        }

//        System.out.println("name: " + (sybaseSplitSqlName =~ /$regexFilter/)[0][3])

        return name
    }

    String[] getAllEntityNameFromSybaseSplitSqlName(String sybaseSplitDir, String type){

        String[] sqlFilenameList = getListOfSplitSqlScriptsInDir(sybaseSplitDir, type)
        List<String> result = new ArrayList<>()

        for (String sqlFilename : sqlFilenameList) {
            String name = getEntityNameFromSybaseSplitSqlName(sqlFilename, type)
            result.add(name)
        }

        return result as String[]
    }

    String getSqlTypeFromSybaseFolderName(String sybaseFolderName){

//        System.out.println("sybaseFolderName: " + sybaseFolderName)
        String sqlType = ''

        def regexFilter = /split(\w+)/
//        System.out.println("after regex: " + (sybaseFolderName =~ /$regexFilter/)[0])
        String baseName = ((sybaseFolderName =~ /$regexFilter/)[0][1])
//        System.out.println("folder Name: " + (sybaseFolderName =~ /$regexFilter/)[0][1])

        sqlType = camelCase(baseName)

//        System.out.println("sqlType " + sqlType)
        return sqlType
    }
}
