package nz.govt.nzqa.dbmigrate.mapper;

import java.util.*;

public class DBObjMapper {
    public static ObjMapper USE = new ObjMapper("", "USE", "USE");
    public static ObjMapper GO = new ObjMapper("", "GO", "GO");
    public static ObjMapper AS = new ObjMapper("", "AS", "AS");

    public static ObjMapper KEY_COLUMN = new ObjMapper("COLUMN", "Column", "COLUMN");
    public static ObjMapper KEY_CONSTRAINT = new ObjMapper("CONSTRAINT", "CONSTRAINT", "CONSTRAINT");
    public static ObjMapper KEY_GRANT = new ObjMapper("GRANT", "GRANT", "GRANT");
    public static ObjMapper KEY_INDEX = new ObjMapper("INDEX", "INDEX", "INDEX");
    public static ObjMapper KEY_LOCK = new ObjMapper("LOCK", "LOCK", "");

    public static ObjMapper ACTION_CREATE = new ObjMapper("CREATE", "CREATE", "CREATE");
    public static ObjMapper ACTION_ALTER = new ObjMapper("ALTER", "ALTER", "ALTER");
    public static ObjMapper ACTION_ADD = new ObjMapper("ADD", "ADD", "WITH CHECK ADD");
    public static ObjMapper ACTION_DROP = new ObjMapper("DROP", "DROP", "DROP");
    public static ObjMapper ACTION_DROPONLY = new ObjMapper("DROPONLY", "DROP", "DROP");
    public static ObjMapper ACTION_ADD_DATATYPE = new ObjMapper("ADDTYPE", "sp_addtype", "CREATE");
    public static ObjMapper ACTION_DROP_DATATYPE = new ObjMapper("DROPTYPE", "sp_droptype", "DROP");
    public static ObjMapper ACTION_ADD_USER = new ObjMapper("ADDUSER", "sp_adduser", "CREATE");
    public static ObjMapper ACTION_ADD_MESSAGE = new ObjMapper("ADDMSG", "sp_addmessage", "CREATE");
    public static ObjMapper ACTION_DROP_MESSAGE = new ObjMapper("DROPMSG", "sp_dropmessage", "sp_dropmessage");
    public static ObjMapper ACTION_ADD_GROUP = new ObjMapper("ADDGROUP", "sp_addgroup", "CREATE");
    public static ObjMapper ACTION_SELECT = new ObjMapper("SELECT", "SELECT", "SELECT");
    public static ObjMapper ACTION_INSERT = new ObjMapper("INSERT", "INSERT", "INSERT");
    public static ObjMapper ACTION_UPDATE = new ObjMapper("UPDATE", "UPDATE", "UPDATE");
    public static ObjMapper ACTION_DELETE = new ObjMapper("DELETE", "DELETE", "DELETE");
    public static ObjMapper ACTION_TRUNCATE = new ObjMapper("TRUNCATE", "TRUNCATE", "TRUNCATE");
    public static ObjMapper ACTION_TRANSFER = new ObjMapper("TRANSFER", "TRANSFER", "TRANSFER");
    public static ObjMapper ACTION_REFERENCES = new ObjMapper("REFERENCES", "REFERENCES", "REFERENCES");
    public static ObjMapper ACTION_EXECUTE = new ObjMapper("EXECUTE", "EXECUTE", "EXECUTE");
    public static ObjMapper ACTION_CONNECT = new ObjMapper("CONNECT", "CONNECT", "CONNECT");

    public static ObjMapper OPERATION_DIRECT = new ObjMapper("DIRECT", "", "");
    public static ObjMapper OPERATION_DERIEVED = new ObjMapper("DERIEVED", "", "");
    public static ObjMapper OPERATION_DEFAULT = new ObjMapper("DEFAULTVALE", "", "");

    public static ObjMapper ENTITY_TABLE = new ObjMapper("TABLE", "TABLE", "TABLE");
    public static ObjMapper ENTITY_KEY = new ObjMapper("KEY", "TABLE", "TABLE");
    public static ObjMapper ENTITY_CONSTRAINT = new ObjMapper("CONSTRAINT", "TABLE", "TABLE");
    public static ObjMapper ENTITY_VIEW = new ObjMapper("VIEW", "VIEW", "VIEW");
    public static ObjMapper ENTITY_DEFAULT = new ObjMapper("DEFAULT", "DEFAULT", "DEFAULT");
    public static ObjMapper ENTITY_DATATYPE = new ObjMapper("DATATYPE", "sp_..*type", "TYPE");
    public static ObjMapper ENTITY_GROUP = new ObjMapper("GROUP", "sp_..*group", "GROUP");
    public static ObjMapper ENTITY_USER = new ObjMapper("USER", "sp_..*user", "USER");
    public static ObjMapper ENTITY_RULE = new ObjMapper("RULE", "RULE", "RULE");
    public static ObjMapper ENTITY_MESSAGE = new ObjMapper("MESSAGE", "sp_..*message", "MESSAGE");
    public static ObjMapper ENTITY_INDEX= new ObjMapper("INDEX", "INDEX", "INDEX");

    public static ObjMapper CONSTRAINT_PRIMARYKEY = new ObjMapper("PK", "PRIMARY KEY", "PRIMARY KEY");
    public static ObjMapper CONSTRAINT_UNIQUE = new ObjMapper("UNIQUE", "UNIQUE", "UNIQUE");
    public static ObjMapper CONSTRAINT_FOREIGNKEY = new ObjMapper("FK", "FOREIGN KEY", "FOREIGN KEY");
    public static ObjMapper CONSTRAINT_CHECK = new ObjMapper("CHECK", "CHECK", "CHECK");

    public static ObjMapper CONSTRAINT_CLUSTERED = new ObjMapper("CLUSTERED", "CLUSTERED", "CLUSTERED");
    public static ObjMapper CONSTRAINT_NONCLUSTERED = new ObjMapper("NONCLUSTERED", "NONCLUSTERED", "NONCLUSTERED");
    public static ObjMapper CONSTRAINT_REFERENCES = new ObjMapper("REFERENCES", "REFERENCES", "REFERENCES");
    public static ObjMapper CONSTRAINT_NULL = new ObjMapper("NULL", "NULL", "NULL");
    public static ObjMapper CONSTRAINT_NOT_NULL = new ObjMapper("NOT NULL", "NOT NULL", "NOT NULL");

    public static ObjMapper CRITERIA_CHECK = new ObjMapper("CHECK", "CHECK", "CHECK");
    public static ObjMapper CRITERIA_CHECKWRAPPER = new ObjMapper("CHECKWRAPPER", "", "");

    public static String OPERATOR_OR = "OR";
    public static String OPERATOR_AND = "AND";
    public static String OPERATOR_NOT = "NOT";
    public static String OPERATOR_GREATER_THAN = ">";
    public static String OPERATOR_GREATER_OR_EQUAL = ">=";
    public static String OPERATOR_LESS_THAN = "<";
    public static String OPERATOR_LESS_OR_EQAUL = "<=";
    public static String OPERATOR_EQUAL = "=";
    public static List<String> OPERATORS = new ArrayList<String>(Arrays.asList(OPERATOR_GREATER_THAN, OPERATOR_GREATER_OR_EQUAL,
            OPERATOR_LESS_THAN, OPERATOR_LESS_OR_EQAUL, OPERATOR_EQUAL));

    public static String SPECIAL_OPERATOR_IN = "IN";
    public static String SPECIAL_OPERATOR_IS = "IS";
    public static String SPECIAL_OPERATOR_BETWEEN = "BETWEEN";
    public static List<String> SPECIAL_OPERATORS = new ArrayList<String>(Arrays.asList(SPECIAL_OPERATOR_IN, SPECIAL_OPERATOR_IS, SPECIAL_OPERATOR_BETWEEN));

    public static DataTypeMapper CRITERIA_VALUETYPE_INT = new DataTypeMapper("INT", "","", "(", ")");
    public static DataTypeMapper CRITERIA_VALUETYPE_CHAR = new DataTypeMapper("CHAR", "'", "'","'", "'");
    public static DataTypeMapper CRITERIA_VALUETYPE_FIELD = new DataTypeMapper("FIELD", "","", "[", "]");

    public static ObjMapper INDEX_CLUSTERED = new ObjMapper("CLUSTERED", "CLUSTERED", "CLUSTERED");
    public static ObjMapper INDEX_NONCLUSTERED = new ObjMapper("NONCLUSTERED", "NONCLUSTERED", "NONCLUSTERED");

    public static ObjMapper PARAM_INPUT = new ObjMapper("INPUT", "","");
    public static ObjMapper PARAM_OUTPUT = new ObjMapper("OUTPUT", "OUTPUT", "OUTPUT");
    public static ObjMapper PARAM_INPUT_AND_OUTPUT = new ObjMapper("BOTH", "INOUT", ""); //TODO check for usage of this

    public static ObjMapper UTILITIES_PROC = new ObjMapper("PROCEDURE", "PROCEDURE", "PROCEDURE");
    public static ObjMapper UTILITIES_FUNCTION = new ObjMapper("FUNCTION", "FUNCTION", "FUNCTION");
    public static ObjMapper UTILITIES_TRIGGER = new ObjMapper("TRIGGER\"", "TRIGGER", "TRIGGER");

    public static ObjMapper FOLDER_FIELD_DEFAULT = new ObjMapper("Defaults", "splitDefaults", "splitDefaults");
    public static ObjMapper FOLDER_FIELD_USERDATATYPE = new ObjMapper("CustomDataTypes", "splitUserDatatypes", "splitUserDatatypes");
    public static ObjMapper FOLDER_FIELD_TABLE = new ObjMapper("Tables", "splitTables", "splitTables");
    public static ObjMapper FOLDER_FIELD_PRIMARYKEY = new ObjMapper("Keys", "splitPrimaryKeys", "splitPrimaryKeys");
    public static ObjMapper FOLDER_FIELD_FOREIGNKEY = new ObjMapper("Keys", "splitForeignKeys", "splitForeignKeys");
    public static ObjMapper FOLDER_FIELD_CHECKCONSTRAINT = new ObjMapper("Constraints", "splitCheckConstraints", "splitCheckConstraints");
    public static ObjMapper FOLDER_FIELD_UNIQUE = new ObjMapper("Constraints", "splitUniqueKeys", "splitUniqueKeys");
    public static ObjMapper FOLDER_FIELD_INDEX = new ObjMapper("Indexes", "splitIndices", "splitIndices");
    public static ObjMapper FOLDER_FIELD_VIEW = new ObjMapper("Views", "splitViews", "splitViews");
    public static ObjMapper FOLDER_FIELD_TRIGGER = new ObjMapper("Triggers", "splitTriggers", "splitTriggers");
    public static ObjMapper FOLDER_FIELD_PROCEDURE = new ObjMapper("Procedures", "splitSPs", "splitSPs");
    public static ObjMapper FOLDER_FIELD_FUNCTION = new ObjMapper("Functions", "splitFunctions", "splitFunctions");
    public static ObjMapper FOLDER_FIELD_USER = new ObjMapper("Users", "splitUsers", "splitUsers");
    public static ObjMapper FOLDER_FIELD_GROUP = new ObjMapper("Groups", "splitGroups", "splitGroups");
    public static ObjMapper FOLDER_FIELD_RULE = new ObjMapper("Rules", "splitRules", "splitRules");
    public static ObjMapper FOLDER_FIELD_MESSAGE = new ObjMapper("Messages", "splitUserMessages", "splitUserMessages");

    public static ObjMapper REGEX_DATABASE_NAME = new ObjMapper("DatabaseName", "", "");
    public static ObjMapper REGEX_TYPE = new ObjMapper("Type", "", "");
    public static ObjMapper REGEX_SUB_TYPE = new ObjMapper("SubType", "", "");
    public static ObjMapper REGEX_NAME = new ObjMapper("Name", "", "");
    public static ObjMapper REGEX_ACTION = new ObjMapper("Action", "", "");
    public static ObjMapper REGEX_OPERATION_TYPE = new ObjMapper("OperationType", "", "");
    public static ObjMapper REGEX_FIELDS = new ObjMapper("Fields", "", "");
    public static ObjMapper REGEX_FIELD_NAME = new ObjMapper("FieldName", "", "");
    public static ObjMapper REGEX_DATA_TYPE = new ObjMapper("DataType", "", "");
    public static ObjMapper REGEX_QUERY_VALUE = new ObjMapper("QueryValue", "", "");
    public static ObjMapper REGEX_CONSRTAINTS = new ObjMapper("Constraints", "", "");
    public static ObjMapper REGEX_GRANTS = new ObjMapper("Grant", "", "");
    public static ObjMapper REGEX_LOCKS = new ObjMapper("Grant", "", "");
    public static ObjMapper REGEX_LENGTH = new ObjMapper("Length", "", "");
    public static ObjMapper REGEX_FRACTION = new ObjMapper("Fraction", "", "");
    public static ObjMapper REGEX_DEFAULT_VALUE = new ObjMapper("DefaultValue", "", "");
    public static ObjMapper REGEX_DEFAULT_VALUE_DATA_TYPE = new ObjMapper("DefaultValueDataType", "", "");
    public static ObjMapper REGEX_IS_NULL = new ObjMapper("IsNull", "", "");
    public static ObjMapper REGEX_IN_FIELDS = new ObjMapper("InFields", "", "");
    public static ObjMapper REGEX_RETURN_TYPE = new ObjMapper("ReturnType", "", "");
    public static ObjMapper REGEX_SQL = new ObjMapper("SQL", "", "");
    public static ObjMapper REGEX_GRANT_TO = new ObjMapper("GrantTo", "", "");
    public static ObjMapper REGEX_GRANT_OBJECT_DB = new ObjMapper("GrantObjectDB", "", "");
    public static ObjMapper REGEX_GRANT_OBJECT_NAME = new ObjMapper("GrantObjectName", "", "");
    public static ObjMapper REGEX_GRANT_SUBOBJECTS = new ObjMapper("GrantSubObjects", "", "");
    public static ObjMapper REGEX_IN_OUT = new ObjMapper("InOut", "", "");
    public static ObjMapper REGEX_TABLE_NAME = new ObjMapper("TableName", "", "");
    public static ObjMapper REGEX_REFERENCE_TABLE_NAME = new ObjMapper("ReferenceTableName", "", "");
    public static ObjMapper REGEX_REFERENCE_FIELDS = new ObjMapper("ReferenceFields", "", "");
    public static ObjMapper REGEX_CRITERIA = new ObjMapper("Criteria", "", "");
    public static ObjMapper REGEX_OPERATION = new ObjMapper("Operation", "", "");
    public static ObjMapper REGEX_VALUE_TYPE = new ObjMapper("ValueType", "", "");
    public static ObjMapper REGEX_VALUES = new ObjMapper("Values", "", "");
    public static ObjMapper REGEX_IS_COMPOSITE = new ObjMapper("IsComposite", "", "");
    public static ObjMapper REGEX_JOIN_OPERATOR = new ObjMapper("JoinOperator", "", "");
    public static ObjMapper REGEX_JOIN_CRITERIA = new ObjMapper("JoinCriteria", "", "");
    public static ObjMapper REGEX_ACTION_ENTITY = new ObjMapper("ActionEntity", "", "");
    public static ObjMapper REGEX_ACTION_UTILITIES = new ObjMapper("ActionUtilities", "", "");
    public static ObjMapper REGEX_ACTION_CRITERIA = new ObjMapper("ActionCriteria", "", "");
    public static ObjMapper REGEX_TRIGGER_TABLE_NAME = new ObjMapper("TriggerTableName", "", "");
    public static ObjMapper REGEX_TRIGGER_OPERATIONS = new ObjMapper("TriggerOperations", "", "");
    public static ObjMapper REGEX_WITH_CLAUSE = new ObjMapper("WithClause", "", "");
    public static ObjMapper REGEX_CHECK_WRAPPER_WITH_CHILD_CRITERIA = new ObjMapper("CheckWrapperWithChildCriteria", "", "");

//    public List<String> OPERATORS

    private static class ObjMapper {
        String objKey;
        String sybaseKey;
        String mssqlKey;

        ObjMapper(String objKey, String sybaseKey, String mssqlKey) {
            this.objKey = objKey;
            this.sybaseKey = sybaseKey;
            this.mssqlKey = mssqlKey;
        }

        public String getObjKey() {
            return objKey;
        }

        public void setObjKey(String objKey) {
            objKey = objKey;
        }

        public String getSybaseKey() {
            return sybaseKey;
        }

        public void setSybaseKey(String sybaseKey) {
            sybaseKey = sybaseKey;
        }

        public String getMssqlKey() {
            return mssqlKey;
        }

        public void setMssqlKey(String mssqlKey) {
            mssqlKey = mssqlKey;
        }

    }

    private static class DataTypeMapper {
        String dataTypeKey;
        String sybaseOpenQuote;
        String sybaseCloseQuote;
        String mssqlOpenQuote;
        String mssqlCloseQuote;

        DataTypeMapper(String dataTypeKey, String sybaseOpenQuote, String sybaseCloseQuote, String mssqlOpenQuote, String mssqlCloseQuote){
            this.dataTypeKey = dataTypeKey;
            this.sybaseOpenQuote = sybaseOpenQuote;
            this.sybaseCloseQuote = sybaseCloseQuote;
            this.mssqlOpenQuote = mssqlOpenQuote;
            this.mssqlCloseQuote = mssqlCloseQuote;

        }

        public String getDataTypeKey() {
            return dataTypeKey;
        }

        public void setDataTypeKey(String dataTypeKey) {
            this.dataTypeKey = dataTypeKey;
        }

        public String getSybaseOpenQuote() {
            return sybaseOpenQuote;
        }

        public void setSybaseOpenQuote(String sybaseOpenQuote) {
            this.sybaseOpenQuote = sybaseOpenQuote;
        }

        public String getSybaseCloseQuote() {
            return sybaseCloseQuote;
        }

        public void setSybaseCloseQuote(String sybaseCloseQuote) {
            this.sybaseCloseQuote = sybaseCloseQuote;
        }

        public String getMssqlOpenQuote() {
            return mssqlOpenQuote;
        }

        public void setMssqlOpenQuote(String mssqlOpenQuote) {
            this.mssqlOpenQuote = mssqlOpenQuote;
        }

        public String getMssqlCloseQuote() {
            return mssqlCloseQuote;
        }

        public void setMssqlCloseQuote(String mssqlCloseQuote) {
            this.mssqlCloseQuote = mssqlCloseQuote;
        }

    }

    public static DataTypeConvertor SYBASE_MSSQL_DATATYPE_CONVERSION_MAP = new DataTypeConvertor();

    private static class DataTypeConvertor {
        Map<String, String> map = new HashMap<>();

        private DataTypeConvertor(){
            initializeDataTypeConversionMap();
        }

        void initializeDataTypeConversionMap() {
            map.put("UNIVARCHAR", "NVARCHAR");
        }

        public String getMssqlForSybaseType(String dataType) {
            return dataType != null ?
                    (
                            map.containsKey(dataType.toUpperCase()) ? map.get(dataType.toUpperCase()) : dataType.toUpperCase()
                    ) : dataType;
        }
    }



}
