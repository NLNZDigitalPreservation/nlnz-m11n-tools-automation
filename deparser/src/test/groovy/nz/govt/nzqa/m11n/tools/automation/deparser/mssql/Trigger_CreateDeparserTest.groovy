package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Trigger_CreateDeparserTest {
    UtilitiesDeparser deparser
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        /*CREATE TRIGGER [dbo].[du_ACCREDITATION] ON [dbo].[ACCREDITATION]
            For DELETE,UPDATE AS
            if @@rowcount = 0
              return

            declare @type char(1),
                    @ins_count int,
                    @del_count int

            -- find out if update or delete trigger
            select @ins_count = count(*) from inserted
            select @del_count = count(*) from deleted

            if @ins_count > 0 and @del_count > 0
              select @type = ''U''
            else if  @ins_count=0 and @del_count > 0
              select @type = ''D''
            else
              select @type = ''?''

            insert into eqa_aud..A_ACCREDITATION (who,aud_time,aud_action,provider_id
            ,location
            ,std_number
            ,audit_tran_id
            )
            select   user_name()  , getdate(), @type, provider_id
            ,location
            ,std_number
            ,audit_tran_id
            from deleted*/

        Utilities utility = new Utilities()
        utility.setType(DBObjMapper.UTILITIES_TRIGGER.getObjKey())
        utility.setDatabaseName("dbo")
        utility.setName("du_ACCREDITATION")
        utility.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        utility.setTriggerTableName("ACCREDITATION")
        utility.setTriggerOperations(Arrays.asList("DELETE","UPDATE"))
        StringBuffer bf = new StringBuffer("if @@rowcount = 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                \n" +
                "  return                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         \n" +
                "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 \n" +
                "declare @type char(1),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           \n" +
                "        @ins_count int,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          \n" +
                "        @del_count int                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           \n" +
                "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 \n" +
                "-- find out if update or delete trigger                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          \n" +
                "select @ins_count = count(*) from inserted                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       \n" +
                "select @del_count = count(*) from deleted                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        \n" +
                "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 \n" +
                "if @ins_count > 0 and @del_count > 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             \n" +
                "  select @type = ''U''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             \n" +
                "else if  @ins_count=0 and @del_count > 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         \n" +
                "  select @type = ''D''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             \n" +
                "else                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             \n" +
                "  select @type = ''?''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             \n" +
                "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 \n" +
                "insert into eqa_aud..A_ACCREDITATION (who,aud_time,aud_action,provider_id                                                                                                                                                                                                                                                                                                                                                                                                                                                        \n" +
                ",location                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        \n" +
                ",std_number                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      \n" +
                ",audit_tran_id                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   \n" +
                ")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                \n" +
                "select   user_name()  , getdate(), @type, provider_id                                                                                                                                                                                                                                                                                                                                                                                                                                                                            \n" +
                ",location                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        \n" +
                ",std_number                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      \n" +
                ",audit_tran_id                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   \n" +
                "from deleted")

        utility.setSql(bf.toString())

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new UtilitiesDeparser(utility, ow)
    }

    @Test
    void testProcedureDeparser() {
        System.out.print(deparser.deParse())

    }

}
