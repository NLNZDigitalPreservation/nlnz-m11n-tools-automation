package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.ParserUtil
import nz.govt.nzqa.m11n.tools.automation.wrapper.Wrapper
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperUtil

/**
 * Assume files in each split folder are of the same schema. New split folders should be created for files from a different schema
 */
class SybaseWrapper implements Wrapper {

    ParserUtil parserUtil = new ParserUtil()
    WrapperUtil wrapperUtil = new WrapperUtil()

    @Override
    MigrateWrapper parse(String splitFoldersDir) {
        MigrateWrapper migrateWrapper = new MigrateWrapper()

        List<String> splitFolderNames = parserUtil.getAllFolderNames(splitFoldersDir)
        for (String splitFolderName : splitFolderNames) {

            String splitFolderPath = splitFoldersDir + File.separator + splitFolderName
            List<String> splitFileNames = parserUtil.getSqlFilesInDir(splitFolderPath)
            Map<String, Object> fieldMap = new HashMap<>()
            String fieldName = parserUtil.getFieldName(splitFolderName)

            for (String splitFileName : splitFileNames) {
                String splitFilePath = splitFolderPath + File.separator + splitFileName
//                System.out.println("splitFileName: " + splitFileName)
//                System.out.println("splitFilePath: " + splitFilePath)

                Parser parser = parserUtil.getParser(splitFolderName)
                if (migrateWrapper.getSchema() == null || migrateWrapper.getSchema().isEmpty()) {
                    migrateWrapper.setSchema(parserUtil.getSchema(new File(splitFilePath)))
                }

                Object dataModelObj = parser.parse(new File(splitFilePath))
                String dataModelName = wrapperUtil.getDataModelName(dataModelObj)
                fieldMap.put(dataModelName, dataModelObj)
            }
            wrapperUtil.setField(migrateWrapper, fieldMap, fieldName)
        }

        return migrateWrapper
    }
}
