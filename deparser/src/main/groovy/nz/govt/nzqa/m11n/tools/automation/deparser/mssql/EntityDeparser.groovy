package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.WritableDeparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.MSSQLConstants
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter

class EntityDeparser extends WritableDeparser{

    Entity entity
    String outputStatement

    private EntityDeparser () {}

    EntityDeparser(Entity entity1, OutputWritter outputWritter1) {
        super (outputWritter1)
        this.entity = entity1
    }

    String deParse() {
        resetWriteAttributes()
        frameOutputStatement()
        outputToFile()
        return outputStatement
    }

    void outputToFile() {
        if (outputWritter != null && outputStatement != null && outputStatement.trim().length()>0) {
            switch (entity.getType()) {
                case (DBObjMapper.ENTITY_TABLE.getObjKey()):
                    outputWritter.createTableFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_KEY.getObjKey()):
                    outputWritter.createKeyFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_CONSTRAINT.getObjKey()):
                    outputWritter.createConstraintFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_VIEW.getObjKey()):
                    outputWritter.createViewFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_DEFAULT.getObjKey()):
                    outputWritter.createDefaultFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_DATATYPE.getObjKey()):
                    outputWritter.createCustomDataTypeFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_GROUP.getObjKey()):
                    outputWritter.createGroupFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_USER.getObjKey()):
                    outputWritter.createUserFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_RULE.getObjKey()):
                    outputWritter.createRuleFile(outputFileName, action, outputStatement.toString())
                    break
                case (DBObjMapper.ENTITY_MESSAGE.getObjKey()):
                    outputWritter.createMessageFile(outputFileName, action, outputStatement.toString())
                    break
            }
        }
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        /**
         * Actions for
         * --> Table, Key, Constraint
         *      Create
         *      DropOnly
         *      Alter
         * --> Key
         *      Alter
         * --> Key, Constraint
         *      Alter
         * --> View
         *      Create
         *      DropOnly
         * --> Default
         *      Create
         *      DropOnly
         * --> Custom Data Type
         *      Add
         *      DropOnly
         */
        outputFileName = entity.getDatabaseName() + "-" + entity.getName() + "-" + entity.getType()

        switch (entity.getType()) {
            case(DBObjMapper.ENTITY_TABLE.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropTable())
                        break
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        buff.append(dropTable())
                        buff.append("\n")
                        buff.append(createTable(DBObjMapper.ACTION_CREATE))
                        break
                    case (DBObjMapper.ACTION_ALTER.getObjKey()):
                        action = DBObjMapper.ACTION_ALTER.getObjKey()
                        buff.append(createTable(DBObjMapper.ACTION_ALTER))
                        break
                }
                break
            case(DBObjMapper.ENTITY_KEY.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_ALTER.getObjKey()):
                        action = DBObjMapper.ACTION_ALTER.getObjKey()
                        //buff.append(dropKey())
                        buff.append(createTable(DBObjMapper.ACTION_ALTER))
                        break
                }
                break
            case(DBObjMapper.ENTITY_CONSTRAINT.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_ALTER.getObjKey()):
                        action = DBObjMapper.ACTION_ALTER.getObjKey()
                        //buff.append(dropConstraint())
                        buff.append(createTable(DBObjMapper.ACTION_ALTER))
                        break
                }
                break
            case(DBObjMapper.ENTITY_VIEW.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropView())
                        break

                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        buff.append(dropView())
                        buff.append("\n")
                        buff.append(createView())
                        break
                }
                break

            case(DBObjMapper.ENTITY_DEFAULT.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_DEFAULT.getMssqlKey() + " ")
                        if (entity.getDatabaseName()!=null ){
                            buff.append("[$entity.databaseName].")
                        }
                        buff.append("[$entity.name] ")
                        break

                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        buff.append(createDefault())
                        break
                }
                break

            case(DBObjMapper.ENTITY_DATATYPE.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROP_DATATYPE.getObjKey()):
                        action = DBObjMapper.ACTION_DROP_DATATYPE.getObjKey()
                        buff.append(DBObjMapper.ACTION_DROP_DATATYPE.getMssqlKey() + " " + DBObjMapper.ENTITY_DATATYPE.getMssqlKey() + " ")
                        if (entity.getDatabaseName()!=null ){
                            buff.append("[$entity.databaseName].")
                        }
                        buff.append("[$entity.name] ")
                        break

                    case (DBObjMapper.ACTION_ADD_DATATYPE.getObjKey()):
                        action = DBObjMapper.ACTION_ADD_DATATYPE.getObjKey()
                        buff.append(createCustomDataType())
                        break
                }
                break

            case(DBObjMapper.ENTITY_USER.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_USER.getMssqlKey() + " ")
                        if (entity.getDatabaseName()!=null ){
                            buff.append("[$entity.databaseName].")
                        }
                        buff.append("[$entity.name] ")
                        break

                    case (DBObjMapper.ACTION_ADD_USER.getObjKey()):
                        action = DBObjMapper.ACTION_ADD_USER.getObjKey()
                        buff.append(createUser())
                        break
                }
                break

            case(DBObjMapper.ENTITY_RULE.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_RULE.getMssqlKey() + " ")
                        if (entity.getDatabaseName()!=null ){
                            buff.append("[$entity.databaseName].")
                        }
                        buff.append("[$entity.name] ")
                        break

                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        buff.append(createRule())
                        break
                }
                break

        }

        outputStatement = buff.toString();
    }

    String dropTable() {
        String checkDrop = MSSQLConstants.CHECK_DROP_TABLE
        StringBuffer bf = new StringBuffer()
        if (entity.getDatabaseName()!=null ){
            checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
        } else {
            checkDrop = checkDrop.replaceAll('[@DB@].', '')
        }
        checkDrop = checkDrop.replaceAll('@TABLENAME@',entity.getName())
        bf.append(checkDrop + "\n")
        bf.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_TABLE.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] ")
        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String createTable(DBObjMapper.ObjMapper obj) {
        StringBuffer bf = new StringBuffer()

        if (DBObjMapper.ACTION_CREATE.getObjKey() == obj.getObjKey()) {
            String checkCreate = MSSQLConstants.CHECK_CREATE_TABLE
            if (entity.getDatabaseName()!=null ){
                checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkCreate = checkCreate.replaceAll('[@DB@].', '')
            }
            checkCreate = checkCreate.replaceAll('@TABLENAME@',entity.getName())
            bf.append(checkCreate + "\n")
        }

        bf.append(obj.getMssqlKey() + " " + DBObjMapper.ENTITY_TABLE.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }
        if (entity.operationType == DBObjMapper.OPERATION_DERIEVED.getObjKey()) {
            bf.append("[$entity.name] AS \n $entity.queryValue ")
        } else { //Direct
            bf.append("[$entity.name] (")
            if (entity.getFields() != null && entity.getFields().size()>0) {
                AttributeDeparser ad
                for (field in entity.getFields().values()) {
                    ad = new AttributeDeparser(field)
                    bf.append(ad.deParse())
                }
            }

            if (entity.getConstraints() != null && entity.getConstraints().size()>0) {
                ConstraintDeparser cd
                for (constraint in entity.getConstraints().values()) {
                    cd = new ConstraintDeparser(constraint)
                    bf.append(cd.deParse())
                }
            }
            bf.append(")")
        }

        if (DBObjMapper.ACTION_CREATE.getObjKey() == obj.getObjKey()) {
            bf.append(MSSQLConstants.END_BLOCK)
        }
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        if (entity.getGrants() != null && entity.getGrants().size()>0) {
            RelationDeparser rd
            for (relation in entity.getGrants().values()) {
                rd = new RelationDeparser(relation)
                bf.append(rd.deParse())
                bf.append(MSSQLConstants.CLOSE_BLOCK)
            }
        }

        return bf.toString()
    }

    String dropView() {
        String checkDrop = MSSQLConstants.CHECK_DROP_VIEW
        StringBuffer bf = new StringBuffer()
        if (entity.getDatabaseName()!=null ){
            checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
        } else {
            checkDrop = checkDrop.replaceAll('[@DB@].', '')
        }
        checkDrop = checkDrop.replaceAll('@VIEWNAME@',entity.getName())
        bf.append(checkDrop + "\n")

        bf.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_VIEW.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()

    }

    String createView() {
        StringBuffer bf = new StringBuffer()

        String checkCreate = MSSQLConstants.CHECK_CREATE_VIEW
        if (entity.getDatabaseName()!=null ){
            checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
        } else {
            checkCreate = checkCreate.replaceAll('[@DB@].', '')
        }
        checkCreate = checkCreate.replaceAll('@VIEWNAME@',entity.getName())
        bf.append(checkCreate + "\n")

        bf.append("EXEC ")
        if (entity.getDatabaseName()!=null ){
            bf.append("$entity.databaseName.")
        }
        bf.append("sp_executesql @statement = N'")
        bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_VIEW.mssqlKey ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }

        bf.append("[$entity.name] AS \n $entity.queryValue \n'")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        if (entity.getGrants() != null && entity.getGrants().size()>0) {
            RelationDeparser rd
            for (relation in entity.getGrants().values()) {
                rd = new RelationDeparser(relation)
                bf.append(rd.deParse())
                bf.append(MSSQLConstants.CLOSE_BLOCK)
            }
        }

        return bf.toString()
    }

    String createDefault() {
        StringBuffer bf = new StringBuffer()
        bf.append("EXEC ")
        if (entity.getDatabaseName()!=null ){
            bf.append("$entity.databaseName.")
        }
        bf.append("sp_executesql @statement N'")
        bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_DEFAULT.mssqlKey ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }

        bf.append("[$entity.name] AS \n $entity.queryValue \n'")
        //TODO handle CHAR value
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

    String createCustomDataType() {
        StringBuffer bf = new StringBuffer()
        bf.append("$DBObjMapper.ACTION_ADD_DATATYPE.mssqlKey $DBObjMapper.ENTITY_DATATYPE.mssqlKey ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }

        bf.append("[$entity.name] FROM ")
        if (entity.getDataType().indexOf("(") > -1) {
            String dataType = entity.getDataType().substring(0, entity.getDataType().indexOf("("))
            dataType = DBObjMapper.SYBASE_MSSQL_DATATYPE_CONVERSION_MAP.getMssqlForSybaseType(dataType)
            String length = entity.getDataType().substring(entity.getDataType().indexOf("("))
            bf.append("[$dataType]$length")
        } else {
            bf.append("[$entity.dataType]")
        }
        bf.append(" $entity.queryValue ")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        if (entity.getGrants() != null && entity.getGrants().size()>0) {
            RelationDeparser rd
            for (relation in entity.getGrants().values()) {
                rd = new RelationDeparser(relation)
                bf.append(rd.deParse())
                bf.append(MSSQLConstants.CLOSE_BLOCK)
            }
        }

        //For MSSQL, it is required to create the type & grant reference of the type as public
        Relation relation = new Relation()
        relation.setName('defaultGrant2Public')
        relation.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation.setAction(DBObjMapper.ACTION_REFERENCES.getObjKey())
        if (entity.getDatabaseName()!=null ){
            relation.setGrantObjectDB(entity.getDatabaseName())
        }
        relation.setGrantObjectName(entity.getName())
        relation.setGrantTo('PUBLIC')
        relation.setTypeReference(true)

        RelationDeparser rd = new RelationDeparser(relation)
        bf.append(rd.deParse())
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

    String createUser() {
        StringBuffer bf = new StringBuffer()
        bf.append("$DBObjMapper.ACTION_ADD_USER.mssqlKey $DBObjMapper.ENTITY_USER.mssqlKey [$entity.name] FOR LOGIN [$entity.name] WITH DEFAULT_SCHEMA=[$entity.name]")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        //For MSSQL, it is required to create the default grant with CONNECT to database
        Relation defRelation = new Relation()
        defRelation.setName('defaultUserGrant2DB')
        defRelation.setType(DBObjMapper.KEY_GRANT.getObjKey())
        defRelation.setAction(DBObjMapper.ACTION_CONNECT.getObjKey())
        if (entity.getDatabaseName()!=null ){
            defRelation.setGrantObjectDB(entity.getDatabaseName())
        }
        defRelation.setGrantObjectName(entity.getName())
        if (entity.getDatabaseName()!=null ){
            defRelation.setGrantTo(entity.getName())
        }
        //defRelation.setTypeReference(true)

        RelationDeparser rd = new RelationDeparser(defRelation)
        bf.append(rd.deParse())
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        if (entity.getGrants() != null && entity.getGrants().size()>0) {
            for (relation in entity.getGrants().values()) {
                rd = new RelationDeparser(relation)
                bf.append(rd.deParse())
                bf.append(MSSQLConstants.CLOSE_BLOCK)
            }
        }

        return bf.toString()
    }

    String createRule() {
        StringBuffer bf = new StringBuffer()
        bf.append("EXEC ")
        if (entity.getDatabaseName()!=null ){
            bf.append("$entity.databaseName.")
        }
        bf.append("sp_executesql N'")
        //bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_DEFAULT.mssqlKey ")

        bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_RULE.mssqlKey ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }

        bf.append("[$entity.name] AS [$entity.queryValue] '")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

    String createMessage() {
        StringBuffer bf = new StringBuffer()
        bf.append("$DBObjMapper.ACTION_ADD_MESSAGE.mssqlKey $DBObjMapper.ENTITY_MESSAGE.mssqlKey ")
        if (entity.getDatabaseName()!=null ){
            bf.append("[$entity.databaseName].")
        }

        bf.append("[$entity.name] AS [$entity.queryValue] '")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

}
