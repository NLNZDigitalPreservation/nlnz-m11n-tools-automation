package nz.govt.nzqa.m11n.tools.automation

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.parser.ConstraintParser
import nz.govt.nzqa.m11n.tools.automation.parser.EntityParser
import nz.govt.nzqa.m11n.tools.automation.parser.IndexParser
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.parser.ParserUtil
import nz.govt.nzqa.m11n.tools.automation.parser.UtilitiesParser

class SybaseWrapper implements Wrapper {

    MigrateWrapper migrateWrapper = new MigrateWrapper()
    ParserUtil util = new ParserUtil()

    @Override
    Object parse(String splitFoldersDir) {

        List<String> splitFolderNames = util.getAllFolderNames(splitFoldersDir)
        for (String splitFolderName : splitFolderNames){
            String splitFolderPath = splitFoldersDir + File.separator + splitFolderName
            List<String> splitFileNames = util.getSqlFilesInDir(splitFolderPath)

            for (String splitFileName : splitFileNames){
                Parser parser = getParser(splitFolderName)
                Object dataModelObj = parser.parse(new File(splitFileName))
                return dataModelObj
            }
        }
    }

    Parser getParser(String folderName){
        String type = util.getTypeFromFolderName(folderName)

        switch (type){
            case ("Tables"): case("Views"): case("Defaults"): case("UserDatatypes"): case("Groups"): case("Users"):
            case("Rules"): case("UserMessages"):
                return new EntityParser()

            case("Trigger"): case("SPs"):
                return new UtilitiesParser()

            case("ForeignKeys"): case("CheckConstraints"): case("UniqueKeys"):
                return new ConstraintParser()

            case("Indices"):
                return new IndexParser()
        }
    }
}
