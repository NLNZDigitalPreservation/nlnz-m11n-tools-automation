package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import com.sun.org.apache.bcel.internal.generic.SWITCH
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
    boolean checkObjectB4Create
    boolean checkObjectB4Drop
    boolean dropObjectB4Create
    boolean includeTablePrePostQuotes

    private EntityDeparser () {}

    /**
     * Initialize this object with null OutputWritter for not writing to file.
     * @param entity1
     * @param outputWritter1
     */
    EntityDeparser(Entity entity1, OutputWritter outputWritter1) {
        super (outputWritter1)
        this.entity = entity1
        this.checkObjectB4Create = true
        this.checkObjectB4Drop = true
        this.dropObjectB4Create = true
        this.includeTablePrePostQuotes = true
    }

    /**
     * Initialize this object with null OutputWritter for not writing to file.
     * @param entity1
     * @param outputWritter1
     */
    EntityDeparser(Entity entity1, OutputWritter outputWritter1, boolean CheckObjectB4Create1, boolean checkObjectB4Drop1, boolean dropObjectB4Create1, boolean includeTablePrePostQuotes1) {
        super (outputWritter1)
        this.entity = entity1
        this.checkObjectB4Create = CheckObjectB4Create1
        this.checkObjectB4Drop = checkObjectB4Drop1
        this.dropObjectB4Create = dropObjectB4Create1
        this.includeTablePrePostQuotes = includeTablePrePostQuotes1
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
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE && this.dropObjectB4Create){
                            buff.append(dropTable())
                            buff.append("\n")
                        }
                        buff.append(createTable(DBObjMapper.ENTITY_TABLE, DBObjMapper.ACTION_CREATE))
                        break
                    case (DBObjMapper.ACTION_ALTER.getObjKey()):
                        action = DBObjMapper.ACTION_ALTER.getObjKey()
                        buff.append(createTable(DBObjMapper.ENTITY_TABLE, DBObjMapper.ACTION_ALTER))
                        break
                }
                break
            case(DBObjMapper.ENTITY_KEY.getObjKey()):
                //Overrided with constraint specific name
                //Assumption one constraint only available for the individual key alter
                outputFileName = entity.getDatabaseName() + "-" + entity.getConstraints().values().first().getName() + "-" + entity.getType()
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropKey())
                        break
                    case (DBObjMapper.ACTION_ALTER.getObjKey()):
                        action = DBObjMapper.ACTION_ALTER.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE && this.dropObjectB4Create) {
                            buff.append(dropKey())
                            buff.append("\n")
                        }
                        buff.append(createTable(DBObjMapper.ENTITY_KEY, DBObjMapper.ACTION_ALTER))
                        break
                }
                break
            case(DBObjMapper.ENTITY_CONSTRAINT.getObjKey()):
                //Overrided with constraint specific name
                //Assumption one constraint only available for the individual constraint alter
                outputFileName = entity.getDatabaseName() + "-" + entity.getConstraints().values().first().getName() + "-" + entity.getType()
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropConstraint())
                        break
                    case (DBObjMapper.ACTION_ALTER.getObjKey()):
                        action = DBObjMapper.ACTION_ALTER.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE && this.dropObjectB4Create) {
                            buff.append(dropConstraint())
                            buff.append("\n")
                        }
                        buff.append(createTable(DBObjMapper.ENTITY_CONSTRAINT, DBObjMapper.ACTION_ALTER))
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
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE && this.dropObjectB4Create) {
                            buff.append(dropView())
                            buff.append("\n")
                        }
                        buff.append(createView())
                        break
                }
                break

            case(DBObjMapper.ENTITY_DEFAULT.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropDefault())
                        break

                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE) {
                            buff.append(dropDefault())
                            buff.append("\n")
                        }
                        buff.append(createDefault())
                        break
                }
                break

            case(DBObjMapper.ENTITY_DATATYPE.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROP_DATATYPE.getObjKey()):
                        action = DBObjMapper.ACTION_DROP_DATATYPE.getObjKey()
                        buff.append(dropCustomDataType())
                        buff.append(DBObjMapper.ACTION_DROP_DATATYPE.getMssqlKey() + " " + DBObjMapper.ENTITY_DATATYPE.getMssqlKey() + " ")
                        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
                            buff.append("[$entity.databaseName].")
                        }
                        buff.append("[$entity.name] ")
                        break

                    case (DBObjMapper.ACTION_ADD_DATATYPE.getObjKey()):
                        action = DBObjMapper.ACTION_ADD_DATATYPE.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE) {
                            buff.append(dropCustomDataType())
                            buff.append("\n")
                        }
                        buff.append(createCustomDataType())
                        break
                }
                break

            case(DBObjMapper.ENTITY_RULE.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropRule())
                        break

                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        action = DBObjMapper.ACTION_CREATE.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE) {
                            buff.append(dropRule())
                            buff.append("\n")
                        }
                        buff.append(createRule())
                        break
                }
                break

            case(DBObjMapper.ENTITY_USER.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_USER.getMssqlKey() + " ")
                        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
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

            case(DBObjMapper.ENTITY_MESSAGE.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                        buff.append(dropMessage())
                        break

                    case (DBObjMapper.ACTION_ADD_MESSAGE.getObjKey()):
                        action = DBObjMapper.ACTION_ADD_MESSAGE.getObjKey()
                        if (MSSQLConstants.ADD_DROP_FOR_CREATE) {
                            buff.append(dropMessage())
                            buff.append("\n")
                        }
                        buff.append(createMessage())
                        break
                }
                break

            case(DBObjMapper.ENTITY_GROUP.getObjKey()):
                switch (entity.getAction()) {
                    case (DBObjMapper.ACTION_DROPONLY.getObjKey()):
                        action = DBObjMapper.ACTION_DROPONLY.getObjKey()

                        if (MSSQLConstants.CHECK_EXIST_FOR_DROP) {
                            String checkDrop = MSSQLConstants.CHECK_DROP_GROUP
//                            if (entity.getDatabaseName() != null) {
//                                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
//                            } else {
//                                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
//                            }
                            checkDrop = checkDrop.replaceAll('@ROLENAME@', entity.getName())
                            buff.append(checkDrop + "\n")
                        }

                        buff.append(DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_GROUP.getMssqlKey() + " ")
                        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
                            buff.append("[$entity.databaseName].")
                        }
                        buff.append("[$entity.name] ")
                        break

                    case (DBObjMapper.ACTION_ADD_GROUP.getObjKey()):
                        action = DBObjMapper.ACTION_ADD_GROUP.getObjKey()
                        buff.append(createGroup())
                        break
                }
                break

        }

        outputStatement = buff.toString();
    }

    String dropTable() {
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP && this.checkObjectB4Drop) {
            String checkDrop = MSSQLConstants.CHECK_DROP_TABLE
            if (entity.getDatabaseName() != null) {
                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkDrop = checkDrop.replaceAll('@TABLENAME@', entity.getName())
            bf.append(checkDrop + "\n")
        }
        bf.append("\t" + DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_TABLE.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] ")
        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String dropKey() {
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP && this.checkObjectB4Drop) {
            String checkDrop
            switch (entity.getConstraints().values().first().getType()) {
                case(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey()):
                    checkDrop = MSSQLConstants.CHECK_DROP_KEY_FOREIGN
                    break
                case(DBObjMapper.CONSTRAINT_UNIQUE.getObjKey()):
                    checkDrop = MSSQLConstants.CHECK_DROP_KEY_UNIQUE
                    break
            }
            if (entity.getDatabaseName() != null) {
                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkDrop = checkDrop.replaceAll('@TABLENAME@', entity.getName())
            // Below value will be obtained from first constraint object.
            // It is assumed that for KEY type, only one constraint object will be available for easier identification of single Key
            checkDrop = checkDrop.replaceAll('@KEY@', entity.getConstraints().values().first().getName())
            bf.append(checkDrop + "\n")
        }
        bf.append("\t" + "$DBObjMapper.ACTION_ALTER.mssqlKey $DBObjMapper.ENTITY_TABLE.mssqlKey ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] $DBObjMapper.ACTION_DROPONLY.mssqlKey $DBObjMapper.KEY_CONSTRAINT.mssqlKey ")
        bf.append("["+ entity.constraints.values().first().getName() + "]")
        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()

    }

    String dropConstraint() {
        // It is assumed that for CONSTRAINT type, only one constraint object will be available for easier identification of single Constraint
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP && this.checkObjectB4Drop) {
            String checkDrop = MSSQLConstants.CHECK_DROP_CONSTRAINT_CHECK
            if (entity.getDatabaseName() != null) {
                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkDrop = checkDrop.replaceAll('@TABLENAME@', entity.getName())
            if (entity.getConstraints().values().first().getType() == DBObjMapper.CONSTRAINT_CHECK.getObjKey()) {
                //Other constraints - PK, FK & Unique are expected to be of type KEY
                checkDrop = checkDrop.replaceAll('@CONSTRAINTNAME@', entity.getConstraints().values().first().getName())
            }

            bf.append(checkDrop + "\n")
        }
        bf.append("\t $DBObjMapper.ACTION_ALTER.mssqlKey $DBObjMapper.ENTITY_TABLE.mssqlKey ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] $DBObjMapper.ACTION_DROPONLY.mssqlKey $DBObjMapper.KEY_CONSTRAINT.mssqlKey ")
        bf.append("["+ entity.constraints.values().first().getName() + "]")
        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()

    }

    String createTable(DBObjMapper.ObjMapper type, DBObjMapper.ObjMapper action) {
        StringBuffer bf = new StringBuffer()

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE && this.checkObjectB4Create) {
            //Add object availability check
            switch (type.getObjKey()) {
                case (DBObjMapper.ENTITY_TABLE.getObjKey()):
                    if (DBObjMapper.ACTION_CREATE.getObjKey() == action.getObjKey()) {
                        String checkCreate
                        if (this.includeTablePrePostQuotes) {
                            checkCreate = MSSQLConstants.PREQUOTE_CREATE_TABLE
                        }
                        checkCreate += MSSQLConstants.CHECK_CREATE_TABLE
                        if (entity.getDatabaseName() != null) {
                            checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
                        } else {
                            checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
                        }
                        checkCreate = checkCreate.replaceAll('@TABLENAME@', entity.getName())
                        bf.append(checkCreate + "\n")
                    }
                    break
                case (DBObjMapper.ENTITY_KEY.getObjKey()):
                    if (DBObjMapper.ACTION_ALTER.getObjKey() == action.getObjKey()) {
                        String checkCreate
                        switch (entity.getConstraints().values().first().getType()) {
                            case(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey()):
                                checkCreate = MSSQLConstants.CHECK_CREATE_KEY_FOREIGN
                                break
                            case(DBObjMapper.CONSTRAINT_UNIQUE.getObjKey()):
                                checkCreate = MSSQLConstants.CHECK_CREATE_KEY_UNIQUE
                                break
                        }
                        if (entity.getDatabaseName() != null) {
                            checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
                        } else {
                            checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
                        }
                        // Below value will be obtained from first constraint object.
                        // It is assumed that for KEY type, only one constraint object will be available for easier identification of single Key
                        checkCreate = checkCreate.replaceAll('@KEY@', entity.getConstraints().values().first().getName())
                        //checkCreate = checkCreate.replaceAll('@TABLENAME@',entity.getConstraints().values().first().getTableName())
                        checkCreate = checkCreate.replaceAll('@TABLENAME@', entity.getName())

                        bf.append(checkCreate + "\n")
                    }
                    break
                case (DBObjMapper.ENTITY_CONSTRAINT.getObjKey()):
                    if (DBObjMapper.ACTION_ALTER.getObjKey() == action.getObjKey()) {
                        // It is assumed that for CONSTRAINT type, only one constraint object will be available for easier identification of single Constraint
                        String checkCreate = MSSQLConstants.CHECK_CREATE_CONSTRAINT_CHECK
                        if (entity.getConstraints().values().first().getType() == DBObjMapper.CONSTRAINT_CHECK.getObjKey()) {
                            //Other constraints - PK, FK & Unique are expected to be of type KEY
                            checkCreate = checkCreate.replaceAll('@CONSTRAINTNAME@', entity.getConstraints().values().first().getName())
                            //checkCreate = checkCreate.replaceAll('@TABLENAME@',entity.getConstraints().values().first().getTableName())
                        }

                        if (entity.getDatabaseName() != null) {
                            checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
                        } else {
                            checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
                        }
                        checkCreate = checkCreate.replaceAll('@TABLENAME@', entity.getName())
                        bf.append(checkCreate + "\n")
                    }
                    break
            }
        }

        //Add statement for create object
        bf.append("\t" + action.getMssqlKey() + " " + DBObjMapper.ENTITY_TABLE.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }
        if (entity.operationType == DBObjMapper.OPERATION_DERIEVED.getObjKey()) {
            bf.append("[$entity.name] AS \n $entity.queryValue ")
        } else { //Direct
            bf.append("[$entity.name] (")
            boolean firstCall = true
            if (entity.getFields() != null && entity.getFields().size()>0) {
                AttributeDeparser ad
                for (field in entity.getFields().values()) {
                    if (!firstCall) {
                        bf.append(", ")
                    } else {
                        firstCall = false
                    }
                    ad = new AttributeDeparser(field)
                    String attribute = ad.deParse()
                    if (attribute.indexOf("#IDENTITY_GAP#") ) {
                        attribute = attribute.replaceAll("#IDENTITY_GAP#",
                                (entity.getIdentityGap() != null && entity.getIdentityGap().toString().trim().length() > 0) ? entity.getIdentityGap()  : "1")
                    }
                    bf.append(attribute)
                }
            }

            if (entity.getConstraints() != null && entity.getConstraints().size()>0) {

                if (!firstCall) {
                    bf.append(", ")
                    firstCall = true
                }

                ConstraintDeparser cd
                for (constraint in entity.getConstraints().values()) {
                    if (!firstCall) {
                        bf.append(", ")
                    } else {
                        firstCall = false
                    }
                    cd = new ConstraintDeparser(constraint)
                    bf.append(cd.deParse())
                }

            }
            bf.append("\n)")
        }

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE && this.checkObjectB4Create) {
            if (DBObjMapper.ACTION_CREATE.getObjKey() == action.getObjKey()) {
                if (MSSQLConstants.INCLUDE_FILEGROUP) {
                    String fg = MSSQLConstants.END_WITH_FILEGROUP
                    fg = fg.replaceAll(MSSQLConstants.PATTERN_FILEGROUP, MSSQLConstants.DEFAULT_FILEGROUP)
                    bf.append(fg)
                }
                bf.append(MSSQLConstants.END_BLOCK_TABLE)
                if (this.includeTablePrePostQuotes) {
                    bf.append(MSSQLConstants.POSTQUOTE_CREATE_TABLE)
                }
            }
        }
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        //Add check constraint to enable the ADD constraint
        //This is not required drop constraint
        //Assumption: one constraint only available for the individual key/constraint alter
        if ( (DBObjMapper.ENTITY_KEY.getObjKey() == type.getObjKey() || DBObjMapper.ENTITY_CONSTRAINT.getObjKey() == type.getObjKey()) &&
                (DBObjMapper.ACTION_ALTER.getObjKey() == action.getObjKey()) &&
                entity.getConstraints().size() >0 &&
                DBObjMapper.ACTION_ADD.getObjKey() == entity.getConstraints().values().first().getAction()
        ) {

            switch (type.getObjKey()) {
                case (DBObjMapper.ENTITY_KEY.getObjKey()):
                    if (DBObjMapper.ACTION_ALTER.getObjKey() == action.getObjKey()) {
                        String checkCreate
                        switch (entity.getConstraints().values().first().getType()) {
                            case(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey()):
                                checkCreate = MSSQLConstants.CHECK_CREATE_KEY_FOREIGN
                                break
                            case(DBObjMapper.CONSTRAINT_UNIQUE.getObjKey()):
                                checkCreate = MSSQLConstants.CHECK_CREATE_KEY_UNIQUE
                                break
                        }

                        if (entity.getDatabaseName() != null) {
                            checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
                        } else {
                            checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
                        }
                        // Below value will be obtained from first constraint object.
                        // It is assumed that for KEY type, only one constraint object will be available for easier identification of single Key
                        checkCreate = checkCreate.replaceAll('@KEY@', entity.getConstraints().values().first().getName())
                        //checkCreate = checkCreate.replaceAll('@TABLENAME@',entity.getConstraints().values().first().getTableName())
                        checkCreate = checkCreate.replaceAll('@TABLENAME@', entity.getName())

                        bf.append(checkCreate + "\n")
                    }
                    break
                case (DBObjMapper.ENTITY_CONSTRAINT.getObjKey()):
                    if (DBObjMapper.ACTION_ALTER.getObjKey() == action.getObjKey()) {
                        // It is assumed that for CONSTRAINT type, only one constraint object will be available for easier identification of single Constraint
                        String checkCreate = MSSQLConstants.CHECK_DROP_CONSTRAINT_CHECK
                        if (entity.getConstraints().values().first().getType() == DBObjMapper.CONSTRAINT_CHECK.getObjKey()) {
                            //Other constraints - PK, FK & Unique are expected to be of type KEY
                            checkCreate = checkCreate.replaceAll('@CONSTRAINTNAME@', entity.getConstraints().values().first().getName())
                            //checkCreate = checkCreate.replaceAll('@TABLENAME@',entity.getConstraints().values().first().getTableName())
                        }

                        if (entity.getDatabaseName() != null) {
                            checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
                        } else {
                            checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
                        }
                        checkCreate = checkCreate.replaceAll('@TABLENAME@', entity.getName())
                        bf.append(checkCreate + "\n")
                    }
                    break
            }

            bf.append(action.getMssqlKey() + " " + DBObjMapper.ENTITY_TABLE.getMssqlKey() + " ")
            if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
                bf.append("[$entity.databaseName].")
            }
            bf.append("[$entity.name] $DBObjMapper.ACTION_ADD_ENABLE.mssqlKey [" + entity.getConstraints().values().first().getName() + "] ")
            bf.append(MSSQLConstants.CLOSE_BLOCK)

        }

        ///bf = new StringBuffer(bf.toString().replaceAll("\n", "\n\t"))

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
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP) {
            String checkDrop = MSSQLConstants.CHECK_DROP_VIEW
            if (entity.getDatabaseName() != null) {
                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkDrop = checkDrop.replaceAll('@VIEWNAME@', entity.getName())
            bf.append(checkDrop + "\n")
        }

        bf.append("\t" + DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_VIEW.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()

    }

    String createView() {
        StringBuffer bf = new StringBuffer()

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE) {
            String checkCreate = MSSQLConstants.CHECK_CREATE_VIEW
            if (entity.getDatabaseName() != null) {
                checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkCreate = checkCreate.replaceAll('@VIEWNAME@', entity.getName())
            bf.append(checkCreate + "\n")
        }

        bf.append("\t EXEC ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("$entity.databaseName.")
        }
        bf.append("sp_executesql @statement = N'")
        bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_VIEW.mssqlKey ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
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

    String dropDefault() {
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP) {
            String checkDrop = MSSQLConstants.CHECK_DROP_DEFAULT
            if (entity.getDatabaseName() != null) {
                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkDrop = checkDrop.replaceAll('@DEFAULTNAME@', entity.getName())
            bf.append(checkDrop + "\n")
        }

        bf.append("\t" + DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_DEFAULT.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String createDefault() {
        StringBuffer bf = new StringBuffer()

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE) {
            String checkCreate = MSSQLConstants.CHECK_CREATE_DEFAULT
            if (entity.getDatabaseName() != null) {
                checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkCreate = checkCreate.replaceAll('@DEFAULTNAME@', entity.getName())
            bf.append(checkCreate + "\n")
        }

        bf.append("\t EXEC ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("$entity.databaseName.")
        }
        bf.append("sp_executesql @statement N'")
        bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_DEFAULT.mssqlKey ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }

        bf.append("[$entity.name] AS \n $entity.queryValue \n'")
        //TODO handle CHAR value
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

    String dropCustomDataType() {
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP) {
            String checkDrop = MSSQLConstants.CHECK_DROP_CUSTOMDATATYPE
            if (entity.getDatabaseName() != null) {
                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkDrop = checkDrop.replaceAll('@TYPENAME@', entity.getName())
            bf.append(checkDrop + "\n")
        }

        bf.append("\t" + DBObjMapper.ACTION_DROP_DATATYPE.getMssqlKey() + " " + DBObjMapper.ENTITY_DATATYPE.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String createCustomDataType() {
        StringBuffer bf = new StringBuffer()

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE) {
            String checkCreate = MSSQLConstants.CHECK_CREATE_CUSTOMDATATYPE
            if (entity.getDatabaseName() != null) {
                checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkCreate = checkCreate.replaceAll('@TYPENAME@', entity.getName())
            bf.append(checkCreate + "\n")
        }

        bf.append("\t $DBObjMapper.ACTION_ADD_DATATYPE.mssqlKey $DBObjMapper.ENTITY_DATATYPE.mssqlKey ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
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
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
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
        //Create user [username] for login [username] with default_schema=[username]
        bf.append("\t $DBObjMapper.ACTION_ADD_USER.mssqlKey $DBObjMapper.ENTITY_USER.mssqlKey [$entity.name] FOR LOGIN [$entity.name] WITH DEFAULT_SCHEMA=[$entity.name]")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        //For MSSQL, it is required to create the default grant with CONNECT to database
        Relation defRelation = new Relation()
        defRelation.setName('defaultUserGrant2DB')
        defRelation.setType(DBObjMapper.KEY_GRANT.getObjKey())
        defRelation.setAction(DBObjMapper.ACTION_CONNECT.getObjKey())
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            defRelation.setGrantObjectDB(entity.getDatabaseName())
        }
        defRelation.setGrantObjectName(entity.getName())
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
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

    String dropRule() {
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP) {
            String checkDrop = MSSQLConstants.CHECK_DROP_RULE
            if (entity.getDatabaseName() != null) {
                checkDrop = checkDrop.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkDrop = checkDrop.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkDrop = checkDrop.replaceAll('@RULENAME@', entity.getName())
            bf.append(checkDrop + "\n")
        }

        bf.append("\t" + DBObjMapper.ACTION_DROPONLY.getMssqlKey() + " " + DBObjMapper.ENTITY_RULE.getMssqlKey() + " ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }
        bf.append("[$entity.name] ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)
        return bf.toString()
    }

    String createRule() {
        StringBuffer bf = new StringBuffer()

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE) {
            String checkCreate = MSSQLConstants.CHECK_CREATE_RULE
            if (entity.getDatabaseName() != null) {
                checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
            } else {
                checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
            }
            checkCreate = checkCreate.replaceAll('@RULENAME@', entity.getName())
            bf.append(checkCreate + "\n")
        }

        bf.append("\t EXEC ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("$entity.databaseName.")
        }
        bf.append("sp_executesql N'")
        //bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_DEFAULT.mssqlKey ")

        bf.append("$DBObjMapper.ACTION_CREATE.mssqlKey $DBObjMapper.ENTITY_RULE.mssqlKey ")
        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
            bf.append("[$entity.databaseName].")
        }

        bf.append("[$entity.name] AS [$entity.queryValue] '")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

    String dropMessage() {
        StringBuffer bf = new StringBuffer()
        if (MSSQLConstants.CHECK_EXIST_FOR_DROP) {
            String checkDrop = MSSQLConstants.CHECK_DROP_MESSAGE
            checkDrop = checkDrop.replaceAll('@MSGID@', entity.getName())
            bf.append(checkDrop + "\n")
        }

        // ??  EXEC sp_dropmessage  @msgnum = 60000, @lang = 'all';
        bf.append("\t EXEC $DBObjMapper.ACTION_DROP_MESSAGE.mssqlKey [$entity.name]")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

    String createMessage() {
        StringBuffer bf = new StringBuffer()

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE) {
            String checkCreate = MSSQLConstants.CHECK_CREATE_MESSAGE
            checkCreate = checkCreate.replaceAll('@MSGID@', entity.getName())
            bf.append(checkCreate + "\n")
        }

        //EXEC sp_addmessage @msgnum = 60000, @severity = 16, @msgtext = N'L''élément nommé %1! existe déjà dans %2!', @lang = 'French';
        bf.append("\t EXEC $DBObjMapper.ACTION_ADD_MESSAGE.mssqlKey [$entity.name], $MSSQLConstants.DEFAULT_MESSAGE_SEVERITY, '$entity.queryValue', '$entity.dataType' ")

        bf.append(MSSQLConstants.CLOSE_BLOCK)

        return bf.toString()
    }

    String createGroup() {
        StringBuffer bf = new StringBuffer()

        if (MSSQLConstants.CHECK_NOTEXIST_FOR_CREATE) {
            String checkCreate = MSSQLConstants.CHECK_CREATE_GROUP
//            if (entity.getDatabaseName() != null) {
//                checkCreate = checkCreate.replaceAll('@DB@', entity.getDatabaseName())
//            } else {
//                checkCreate = checkCreate.replaceAll(MSSQLConstants.REGEX_BLANK_DB, '')
//            }
            checkCreate = checkCreate.replaceAll('@ROLENAME@', entity.getName())
            bf.append(checkCreate + "\n")
        }


        //Create ROLE [groupname]
        bf.append("\t $DBObjMapper.ACTION_ADD_GROUP.mssqlKey $DBObjMapper.ENTITY_GROUP.mssqlKey [$entity.name] ")
        bf.append(MSSQLConstants.CLOSE_BLOCK)

        //For MSSQL, it is required to create the default grant with CONNECT to database
//        Relation defRelation = new Relation()
//        defRelation.setName('defaultUserGrant2DB')
//        defRelation.setType(DBObjMapper.KEY_GRANT.getObjKey())
//        defRelation.setAction(DBObjMapper.ACTION_CONNECT.getObjKey())
//        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
//            defRelation.setGrantObjectDB(entity.getDatabaseName())
//        }
//        defRelation.setGrantObjectName(entity.getName())
//        if (entity.getDatabaseName()!=null && entity.getDatabaseName().trim().length()>0 ){
//            defRelation.setGrantTo(entity.getName())
//        }
//        //defRelation.setTypeReference(true)

//        RelationDeparser rd = new RelationDeparser(defRelation)
//        bf.append(rd.deParse())
//        bf.append(MSSQLConstants.CLOSE_BLOCK)

        RelationDeparser rd

        if (entity.getGrants() != null && entity.getGrants().size()>0) {
            for (relation in entity.getGrants().values()) {
                rd = new RelationDeparser(relation)
                bf.append(rd.deParse())
                bf.append(MSSQLConstants.CLOSE_BLOCK)
            }
        }

        return bf.toString()
    }

}
