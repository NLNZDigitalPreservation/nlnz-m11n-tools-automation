package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Index
import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.WritableDeparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.MSSQLConstants
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter

class IndexDeparser extends WritableDeparser{

    Index index
    String outputStatement

    private IndexDeparser() {}

    IndexDeparser(Index index1, OutputWritter outputWritter1) {
        super (outputWritter1)
        this.index = index1
    }

    String deParse() {
        resetWriteAttributes()
        frameOutputStatement()
        outputToFile()
        return outputStatement
    }

    void outputToFile() {
        if (outputWritter != null && outputStatement != null && outputStatement.trim().length()>0) {
            outputWritter.createIndexFile(outputFileName, action, outputStatement.toString())
        }
    }


    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

                if (index.getType() != null) {
                    outputFileName = index.getDatabaseName() + "-" + index.getName() + "-" + index.getType() + DBObjMapper.KEY_INDEX.getMssqlKey()
                } else {
                    outputFileName = index.getDatabaseName() + "-" + index.getName() + "-" + DBObjMapper.KEY_INDEX.getMssqlKey()
                }
                switch (index.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropIndex())
                        break
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        switch (index.getType()) {
                            case (DBObjMapper.INDEX_CLUSTERED.getObjKey()):
                                buff.append(dropIndex())
                                buff.append("\n")
                                buff.append(frameCreateIndex(DBObjMapper.INDEX_CLUSTERED))
                                break
                            case (DBObjMapper.INDEX_NONCLUSTERED.getObjKey()):
                                buff.append(dropIndex())
                                buff.append("\n")
                                buff.append(frameCreateIndex(DBObjMapper.INDEX_NONCLUSTERED))
                                break
                            default:
                                buff.append(dropIndex())
                                buff.append("\n")
                                buff.append(frameCreateIndex(null))
                                break
                        }
                        break
                }

        outputStatement = buff.toString();
    }

    String dropIndex() {
        String checkDrop = MSSQLConstants.CHECK_DROP_INDEX
        StringBuffer bf = new StringBuffer()
        if (index.getDatabaseName()!=null ){
            checkDrop = checkDrop.replaceAll('@DB@', index.getDatabaseName())
        } else {
            checkDrop = checkDrop.replaceAll('[@DB@].', '')
        }
        checkDrop = checkDrop.replaceAll('@TABLENAME@',index.getTableName())
        checkDrop = checkDrop.replaceAll('@INDEXNAME@',index.getName())
        bf.append(checkDrop + "\n")

        bf.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.KEY_INDEX.getMssqlKey() + " ")
        if (index.getDatabaseName()!=null ){
            bf.append("[$index.databaseName].")
        }
        bf.append("[$index.name] ON ")
        if (index.getDatabaseName()!=null ){
            bf.append("[$index.databaseName].")
        }
        bf.append("[$index.tableName] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String frameCreateIndex(DBObjMapper.ObjMapper indexType) {
        StringBuffer bf = new StringBuffer()

        String checkCreate = MSSQLConstants.CHECK_CREATE_INDEX
        if (index.getDatabaseName()!=null ){
            checkCreate = checkCreate.replaceAll('@DB@', index.getDatabaseName())
        } else {
            checkCreate = checkCreate.replaceAll('[@DB@].', '')
        }
        checkCreate = checkCreate.replaceAll('@TABLENAME@',index.getTableName())
        checkCreate = checkCreate.replaceAll('@INDEXNAME@',index.getName())
        bf.append(checkCreate + "\n")

        if (indexType != null) {
            bf.append(" $DBObjMapper.ACTION_CREATE.mssqlKey $indexType.mssqlKey $DBObjMapper.KEY_INDEX.mssqlKey ")
        } else  {
            bf.append(" $DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.KEY_INDEX.mssqlKey ")
        }
        if (index.getDatabaseName()!=null ){
            bf.append("[$index.databaseName].")
        }
        bf.append("[$index.name] ON ")
        if (index.getDatabaseName()!=null ){
            bf.append("[$index.databaseName].")
        }
        bf.append("[$index.tableName] ( ")

        if (index.getFieldNames()!=null && index.getFieldNames().size()>0){
            boolean firstCall = true
            for (field in index.getFieldNames()) {
                if (firstCall) {
                    firstCall = false
                } else {
                    bf.append(", ")
                }
                bf.append("\n[$field] ASC ")
            }
        }
        bf.append("\n ) ")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }
}
