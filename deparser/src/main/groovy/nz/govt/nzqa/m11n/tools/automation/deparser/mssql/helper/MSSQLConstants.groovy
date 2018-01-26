package nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper

class MSSQLConstants {
    static String CHECK_DROP_TABLE = "IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]') AND type in (N'U'))"
    static String CHECK_CREATE_TABLE = "IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]') AND type in (N'U'))\n BEGIN"

    static String CHECK_DROP_FK = "IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[@DB@].[@FK@]') AND parent_object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]'))"
    static String CHECK_CREATE_FK = ""

    static String CHECK_DROP_CONSTRAINT_CHECK = "IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[@DB@].[@CONSTRAINTNAME@]') AND parent_object_id = OBJECT_ID(N'[@DB@].[@TABLENAME@]'))"
    static String CHECK_CREATE_CONSTRAINT_CHECK = ""

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

    static String CHECK_DROP_TYPE = "IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'@TYPENAME@' AND ss.name = N'@DB@')"
    static String CHECK_DROP_RULE = "IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@RULENAME@]') AND OBJECTPROPERTY(object_id, N'IsRule') = 1)"
    static String CHECK_DROP_DEFAULT = "IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[@DB@].[@DEFAULTNAME@]') AND OBJECTPROPERTY(object_id, N'IsDefault') = 1)"

    static String CHECK_DROP_SCHEMA = "IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'@SCHEMANAME@')"

    static String END_BLOCK = "\nEND \n"
    static String CLOSE_BLOCK = "\nGO \n"

    static String DEFAULT_BASEPATH = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"

}
