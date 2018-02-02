package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.ParserUtil

/**
 * Assume files in each split folder are of the same schema. New split folders should be created for files from a different schema
 */
class SybaseWrapper implements Wrapper {

    ParserUtil parserUtil = new ParserUtil()
    WrapperUtil wrapperUtil = new WrapperUtil()

    @Override
    List<MigrateWrapper> parse (String splitFoldersDir) {
        Map<String, MigrateWrapper> migrateWrapperMap = new HashMap<>()
        MigrateWrapper migrateWrapper = new MigrateWrapper()
        String schema = ''
        migrateWrapper.setSchema(schema)
        List<String> splitFolderNames = parserUtil.getAllFolderNames(splitFoldersDir)

        for (String splitFolderName : splitFolderNames) {
            String splitFolderPath = splitFoldersDir + File.separator + splitFolderName
            List<String> splitFileNames = parserUtil.getSqlFilesInDir(splitFolderPath)
            Map<String, Object> fieldMap = new HashMap<>()
            String fieldName = parserUtil.getFieldName(splitFolderName)

            for (String splitFileName : splitFileNames) {
                String splitFilePath = splitFolderPath + File.separator + splitFileName
                Parser parser = parserUtil.getParser(splitFolderName)
                String newSchema = parserUtil.getSchema(new File(splitFilePath))

                if (!schema.equalsIgnoreCase(newSchema)) {
                    schema = newSchema
                    MigrateWrapper existingMigrateWrapper = migrateWrapperMap.get(schema)

                    if (existingMigrateWrapper == null) {
                        if (!fieldMap.isEmpty()){
                            wrapperUtil.setField(migrateWrapper, fieldMap, fieldName)
                        }
                        migrateWrapper = new MigrateWrapper()
                        migrateWrapper.setSchema(schema)
                        fieldMap = new HashMap<>()
                        migrateWrapperMap.put(schema, migrateWrapper)
                    }

                    else {
                        if (!fieldMap.isEmpty()){
                            wrapperUtil.setField(migrateWrapper, fieldMap, fieldName)
                        }
                        migrateWrapper = existingMigrateWrapper
                        fieldMap = (Map<String, Object>)wrapperUtil.getMapFromDataModel(migrateWrapper, fieldName)
                    }
                }

                Object dataModelObj = parser.parse(new File(splitFilePath), schema)
                String dataModelName = wrapperUtil.getDataModelName(dataModelObj)
                fieldMap = wrapperUtil.putDataModelInMap(fieldMap, dataModelObj, dataModelName)
            }
            wrapperUtil.setField(migrateWrapper, fieldMap, fieldName)
        }

        List<MigrateWrapper> migrateWrappers = new ArrayList<>()

        for (String schemaName : migrateWrapperMap.keySet()){
            migrateWrappers.add(migrateWrapperMap.get(schemaName))
        }

        return migrateWrappers
    }
}
