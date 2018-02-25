package nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper

class MSSQLConstants {
    static String CHECK_DROP_TABLE = "IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]') AND type in (N'U'))"
    static String CHECK_CREATE_TABLE = "IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]') AND type in (N'U'))\n BEGIN"
    static String PREQUOTE_CREATE_TABLE = "SET ANSI_NULLS ON \nGO \nSET QUOTED_IDENTIFIER ON \nGO \nSET ANSI_PADDING ON \nGO \n"

    static String CHECK_DROP_KEY_FOREIGN = "IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[@DB@].[@KEY@]') AND parent_object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]'))"
    static String CHECK_CREATE_KEY_FOREIGN = "IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[@DB@].[@KEY@]') AND parent_object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]'))"

    static String CHECK_DROP_KEY_UNIQUE = "IF  EXISTS (SELECT * from sys.indexes WHERE name = N'[@DB@].[@KEY@]' and is_unique_constraint=1)"
    static String CHECK_CREATE_KEY_UNIQUE = "IF NOT EXISTS (SELECT * from sys.indexes WHERE name = N'[@DB@].[@KEY@]' and is_unique_constraint=1)"

    static String CHECK_DROP_CONSTRAINT_CHECK = "IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[@DB@].[@CONSTRAINTNAME@]') AND parent_object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]'))"
    static String CHECK_CREATE_CONSTRAINT_CHECK = "IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[@DB@].[@CONSTRAINTNAME@]') AND parent_object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]'))"

    static String CHECK_DROP_CONSTRAINT = "IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[@DB@].[@CONSTRAINTNAME@]') AND type = 'D')"
    static String CHECK_CREATE_CONSTRAINT = ""

    static String CHECK_DROP_VIEW = "IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[@DB@].[@VIEWNAME@]'))"
    static String CHECK_CREATE_VIEW = "IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[@DB@].[@VIEWNAME@]'))"

    static String CHECK_DROP_TRIGGER = "IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[@DB@].[@TRIGGERNAME@]'))"
    static String CHECK_CREATE_TRIGGER = "IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[@DB@].[@TRIGGERNAME@]'))"

    static String CHECK_DROP_PROCEDURE = "IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@PROCNAME@]') AND type in (N'P', N'PC'))"
    static String CHECK_CREATE_PROCEDURE = "IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@PROCNAME@]') AND type in (N'P', N'PC'))\n BEGIN"

    static String CHECK_DROP_INDEX = "IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]') AND name = N'@INDEXNAME@')"
    static String CHECK_CREATE_INDEX = "IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]') AND name = N'@INDEXNAME@')"

    static String CHECK_DROP_CUSTOMDATATYPE = "IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'@TYPENAME@' AND ss.name = N'@DB@')"
    static String CHECK_CREATE_CUSTOMDATATYPE = "IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'@TYPENAME@' AND ss.name = N'@DB@')"

    static String CHECK_DROP_RULE = "IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@RULENAME@]') AND OBJECTPROPERTY(object_id, N'IsRule') = 1)"
    static String CHECK_CREATE_RULE = "IF  NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@RULENAME@]') AND OBJECTPROPERTY(object_id, N'IsRule') = 1)"

    static String CHECK_DROP_DEFAULT = "IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@DEFAULTNAME@]') AND OBJECTPROPERTY(object_id, N'IsDefault') = 1)"
    static String CHECK_CREATE_DEFAULT = "IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@DEFAULTNAME@]') AND OBJECTPROPERTY(object_id, N'IsDefault') = 1)"

    static String CHECK_DROP_MESSAGE = "IF  EXISTS (SELECT * FROM sys.messages WHERE message_id ='@MSGID@')"
    static String CHECK_CREATE_MESSAGE = "IF  NOT EXISTS (SELECT * FROM sys.messages WHERE message_id ='@MSGID@')"
    static String DEFAULT_MESSAGE_SEVERITY = "16"

    static String CHECK_DROP_GROUP= "IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'@ROLENAME@' AND type = 'R')"
    static String CHECK_CREATE_GROUP = "IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'@ROLENAME@' AND type = 'R')"

    static String CHECK_DROP_SCHEMA = "IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'@SCHEMANAME@')"

    static String END_WITH_FILEGROUP = "\n ON [#FILEGROUP#] "
    static String DEFAULT_FILEGROUP = "PRIMARY"

    static String PATTERN_FILEGROUP = "#FILEGROUP#"
    static String PATTERN_ALLOWDUPROW = "@ALLOWDUP@"

    static String END_BLOCK = "\nEND \n"
    static String END_BLOCK_TABLE = "\nEND "
    static String POSTQUOTE_CREATE_TABLE = "\nGO \nSET ANSI_PADDING OFF "
    static String END_BLOCK_KEY_PK_UNIQUE = "\nWITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) "
    static String END_BLOCK_INDEX = "\nWITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = @ALLOWDUP@, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) "
    static String CLOSE_BLOCK = "\nGO \n"

    static String DEFAULT_BASEPATH = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"

    static boolean OVERRIDE_FILE = false
    static boolean CHECK_NOTEXIST_FOR_CREATE = true
    static boolean CHECK_EXIST_FOR_DROP = true
    static boolean ADD_DROP_FOR_CREATE = true
    static boolean WRITE_CONSOLIDATED_FILE = true
    static boolean INCLUDE_FILEGROUP = true

    static String REGEX_BLANK_DB = "\\[@DB@\\]\\."

}
