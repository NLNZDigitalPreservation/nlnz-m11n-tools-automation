package nz.govt.nzqa.m11n.tools.automation.file

class FilenameExtractor {

    String[] getListOfSqlScriptsInDir(String dir) {

        List<String> names = []

        new File(dir).eachFileMatch(~/.*.sql/) {
            file -> names.add(file.getName())
        }

        return names.sort() as String[]
    }

    String[] getListOfSplitSqlScriptsInDir(String dir) {

        List<String> names = new ArrayList<>()

        new File(dir).eachFileMatch(~/split.*/) {
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
}
