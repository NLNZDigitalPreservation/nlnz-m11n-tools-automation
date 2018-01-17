package nz.govt.nzqa.dbmigrate.mapper;

import java.util.*;

public class DBObjMapper {
    public static ObjMapper KEY_COLUMN = new ObjMapper("COLUMN", "Column", "COLUMN");
    public static ObjMapper KEY_CONSTRAINT = new ObjMapper("CONSTRAINT", "CONSTRAINT", "CONSTRAINT");
    public static ObjMapper KEY_GRANT = new ObjMapper("GRANT", "GRANT", "GRANT");

    public static ObjMapper ACTION_CREATE = new ObjMapper("CREATE", "", "");
    public static ObjMapper ACTION_ADD = new ObjMapper("ADD", "ADD", "WITH CHECK ADD");
    public static ObjMapper ACTION_DROP = new ObjMapper("DROP", "DROP", "DROP");
    public static ObjMapper ACTION_DROPONLY = new ObjMapper("DROPONLY", "DROP", "DROP");
    public static ObjMapper ACTION_SELECT = new ObjMapper("SELECT", "SELECT", "SELECT");
    public static ObjMapper ACTION_INSERT = new ObjMapper("INSERT", "INSERT", "INSERT");
    public static ObjMapper ACTION_UPDATE = new ObjMapper("UPDATE", "UPDATE", "UPDATE");
    public static ObjMapper ACTION_DELETE = new ObjMapper("DELETE", "DELETE", "DELETE");
    public static ObjMapper ACTION_TRUNCATE = new ObjMapper("TRUNCATE", "TRUNCATE", "TRUNCATE");
    public static ObjMapper ACTION_TRANSFER = new ObjMapper("TRANSFER", "TRANSFER", "TRANSFER");
    public static ObjMapper ACTION_REFERENCES = new ObjMapper("REFERENCES", "REFERENCES", "REFERENCES");

    public static ObjMapper ENTITY_TABLE = new ObjMapper("TABLE", "TABLE", "TABLE");
    public static ObjMapper ENTITY_VIEW = new ObjMapper("VIEW", "VIEW", "VIEW");
    public static ObjMapper ENTITY_DEFAULT = new ObjMapper("DEFAULT", "DEFAULT", "DEFAULT");
    public static ObjMapper ENTITY_DATATYPE = new ObjMapper("DATATYPE", "sp_addtype", "TYPE");
    public static ObjMapper ENTITY_GROUP = new ObjMapper("GROUP", "sp_addgroup", "TABLE");
    public static ObjMapper ENTITY_USER = new ObjMapper("USER", "sp_adduser", "TABLE");
    public static ObjMapper ENTITY_RULE = new ObjMapper("RULE", "RULE", "TABLE");
    public static ObjMapper ENTITY_MESSAGE = new ObjMapper("MESSAGE", "MESSAGE", "MESSAGE");

    public static ObjMapper CONSTRAINT_PRIMARYKEY = new ObjMapper("PK", "PRIMARY KEY", "PRIMARY KEY");
    public static ObjMapper CONSTRAINT_UNIQUE = new ObjMapper("UNIQUE", "UNIQUE", "UNIQUE");
    public static ObjMapper CONSTRAINT_FOREIGNKEY = new ObjMapper("FK", "FOREIGN KEY", "FOREIGN KEY");
    public static ObjMapper CONSTRAINT_CHECK = new ObjMapper("CHECK", "CHECK", "CHECK");

    public static ObjMapper CONSTRAINT_CLUSTERED = new ObjMapper("CLUSTERED", "CLUSTERED", "CLUSTERED");
    public static ObjMapper CONSTRAINT_NONCLUSTERED = new ObjMapper("NONCLUSTERED", "NONCLUSTERED", "NONCLUSTERED");
    public static ObjMapper CONSTRAINT_REFERENCES = new ObjMapper("REFERENCES", "REFERENCES", "REFERENCES");


    public static ObjMapper CRITERIA_CHECK = new ObjMapper("CHECK", "CHECK", "CHECK");
    public static ObjMapper CRITERIA_CHECKWRAPPER = new ObjMapper("CHECKWRAPPER", "", "");
    public static List<String> OPERATORS = new ArrayList<String>(Arrays.asList(">", ">=", "<", "<=", "="));

    public static String SPECIAL_OPERATOR_IN = "IN";
    public static String SPECIAL_OPERATOR_IS = "IS";
    public static String SPECIAL_OPERATOR_BETWEEN = "BETWEEN";
    public static List<String> SPECIAL_OPERATORS = new ArrayList<String>(Arrays.asList(SPECIAL_OPERATOR_IN, SPECIAL_OPERATOR_IS, SPECIAL_OPERATOR_BETWEEN));

    public static DataTypeMapper CRITERIA_VALUETYPE_INT = new DataTypeMapper("INT", "","", "(", ")");
    public static DataTypeMapper CRITERIA_VALUETYPE_CHAR = new DataTypeMapper("CHAR", "'", "'","'", "'");


    public static ObjMapper INDEX_CLUSTERED = new ObjMapper("CLUSTERED", "CLUSTERED", "CLUSTERED");
    public static ObjMapper INDEX_NONCLUSTERED = new ObjMapper("NONCLUSTERED", "NONCLUSTERED", "NONCLUSTERED");




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
}
