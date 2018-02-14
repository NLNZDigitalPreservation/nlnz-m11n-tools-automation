package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.WritableDeparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.MSSQLConstants
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter

class UtilitiesDeparser extends WritableDeparser{

    Utilities utility
    String outputStatement

    private UtilitiesDeparser() {}

    UtilitiesDeparser(Utilities utility1, OutputWritter outputWritter1) {
        super (outputWritter1)
        this.utility = utility1
    }

    String deParse() {
        resetWriteAttributes()
        frameOutputStatement()
        outputToFile()
        return outputStatement
    }

    void outputToFile() {
        if (outputWritter != null && outputStatement != null && outputStatement.trim().length()>0) {
            switch (utility.getType()) {
                case (DBObjMapper.UTILITIES_PROC.getObjKey()):
                    outputWritter.createProcedureFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.UTILITIES_FUNCTION.getObjKey()):
                    outputWritter.createFunctionFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.UTILITIES_TRIGGER.getObjKey()):
                    outputWritter.createTriggerFile(outputFileName, action, outputStatement.toString())
                    break
            }
        }
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        switch (utility.getType()) {
            case(DBObjMapper.UTILITIES_PROC.getObjKey()):
                outputFileName = utility.getDatabaseName() + "-" + utility.getName() + "-" + utility.getType()
                switch (utility.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropProc())
                        break
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE) {
                            buff.append(dropProc())
                            buff.append("\n")
                        }
                        buff.append(createProc())
                        break
                }
                break
            case(DBObjMapper.UTILITIES_FUNCTION.getObjKey()):
                outputFileName = utility.getDatabaseName() + "-" + utility.getName() + "-" + utility.getType()
                switch (utility.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.UTILITIES_FUNCTION.getMssqlKey() + " ")
                        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
                            buff.append("[$utility.databaseName].")
                        }
                        buff.append("[$utility.name] ")
                        break
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        buff.append(createProc())
                        break
                }
                break
            case(DBObjMapper.UTILITIES_TRIGGER.getObjKey()):
                outputFileName = utility.getDatabaseName() + "-" + utility.getName() + "-" + utility.getType()
                switch (utility.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropTrigger())
                        break
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE) {
                            buff.append(dropTrigger())
                            buff.append("\n")
                            buff.append(createTrigger())
                        }
                        break
//                    case (DBObjMapper.ACTION_ALTER.getObjKey()):
//                        action = DBObjMapper.ACTION_ALTER.getObjKey()
//                        buff.append(frameTable(DBObjMapper.ACTION_ALTER))
//                        break
                }
                break
        }

        outputStatement = buff.toString();
    }

    String dropProc() {
        String checkDrop = MSSQLConstants.CHECK_DROP_PROCEDURE
        StringBuffer bf = new StringBuffer()
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            checkDrop = checkDrop.replaceAll('@DB@', utility.getDatabaseName())
        } else {
            checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
        }
        checkDrop = checkDrop.replaceAll('@PROCNAME@',utility.getName())
        bf.append(checkDrop + "\n")

        bf.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.UTILITIES_PROC.getMssqlKey() + " ")
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            bf.append("[$utility.databaseName].")
        }
        bf.append("[$utility.name] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String createProc() {
        StringBuffer bf = new StringBuffer()
        String checkCreate = MSSQLConstants.CHECK_CREATE_PROCEDURE
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            checkCreate = checkCreate.replaceAll('@DB@', utility.getDatabaseName())
        } else {
            checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
        }
        checkCreate = checkCreate.replaceAll('@PROCNAME@',utility.getName())
        bf.append(checkCreate + "\n")

        bf.append(" EXEC dbo.sp_executesql @statement = N'$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.UTILITIES_PROC.mssqlKey ")
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            bf.append("[$utility.databaseName].")
        }
        bf.append("[$utility.name] AS'")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        bf.append("$DBObjMapper.ACTION_ALTER.mssqlKey $DBObjMapper.UTILITIES_PROC.mssqlKey ")
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            bf.append("[$utility.databaseName].")
        }
        bf.append("[$utility.name] ")

        if (utility.getInFields() != null && utility.getInFields().size()>0) {
            bf.append("( ")
            ParamDeparser pd
            boolean firstCall = true
            for (param in utility.getInFields().values()) {
                if (firstCall) {
                    firstCall = false
                    bf.append("\n    ")
                } else {
                    bf.append("  , ")
                }
                pd = new ParamDeparser(param)
                bf.append(pd.deParse())
                bf.append("\n")
            }
            bf.append(") ")
        }

        bf.append("AS \n")
        String sqlTemp = utility.sql
        if (DBObjMapper.END_OF_LINE_MAPPER != null && DBObjMapper.END_OF_LINE_MAPPER.trim().length()>0) {
            sqlTemp = sqlTemp.replaceAll(DBObjMapper.END_OF_LINE_MAPPER, "\n")
        }
        bf.append(" $sqlTemp ")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        if (utility.getGrants() != null && utility.getGrants().size()>0) {
            RelationDeparser rd
            for (relation in utility.getGrants().values()) {
                rd = new RelationDeparser(relation)
                bf.append(rd.deParse())
                bf.append(MSSQLConstants.CLOSE_BLOCK)
            }
        }

        return bf.toString()
    }

    String dropTrigger() {
        String checkDrop = MSSQLConstants.CHECK_DROP_TRIGGER
        StringBuffer bf = new StringBuffer()
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            checkDrop = checkDrop.replaceAll('@DB@', utility.getDatabaseName())
        } else {
            checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
        }
        checkDrop = checkDrop.replaceAll('@TRIGGERNAME@',utility.getName())
        bf.append(checkDrop + "\n")

        bf.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.UTILITIES_TRIGGER.getMssqlKey() + " ")
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            bf.append("[$utility.databaseName].")
        }
        bf.append("[$utility.name] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String createTrigger() {
        StringBuffer bf = new StringBuffer()

        String checkCreate = MSSQLConstants.CHECK_CREATE_TRIGGER
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            checkCreate = checkCreate.replaceAll('@DB@', utility.getDatabaseName())
        } else {
            checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
        }
        checkCreate = checkCreate.replaceAll('@TRIGGERNAME@',utility.getName())
        bf.append(checkCreate + "\n")

        bf.append(" EXEC dbo.sp_executesql @statement = N'$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.UTILITIES_TRIGGER.mssqlKey ")
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            bf.append("[$utility.databaseName].")
        }
        bf.append("[$utility.name] ON ")
        if (utility.getDatabaseName()!=null && utility.getDatabaseName().trim().length()>0 ){
            bf.append("[$utility.databaseName].")
        }
        bf.append(utility.getTriggerTableName() + " ")

        bf.append("FOR \n")
        if (utility.getTriggerOperations() != null && utility.getTriggerOperations().size()>0) {
            boolean firstCall = true
            for (operation in utility.getTriggerOperations()) {
                if (firstCall) {
                    firstCall = false
                } else {
                    bf.append(", ")
                }
                bf.append(operation)
            }
        }

        bf.append(" AS \n")
        bf.append(" $utility.sql ")
        bf.append("' ")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }
}
