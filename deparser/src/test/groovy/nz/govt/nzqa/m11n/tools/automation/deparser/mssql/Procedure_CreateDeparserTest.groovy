package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Procedure_CreateDeparserTest {
    UtilitiesDeparser deparser
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        /*create procedure dbo.get_next_id (
                @sequencename name      = 'OID',
                @allocation   object_id = 1000,
                @next_id      object_id = null output,
                @select       int       = 1
        )
        as

        *//*
         * Allocate out ID numbers from a sequence called @sequencename in chunks
         * of @allocation.  If @select is 1, return the next_id in result set, otherwise
         * the caller will have to use the output parameter @next_id to get the next_id.
         *
         * Version: $Revision: 1.5 $
         * Source:  $Source: /usr/local/git/cvs/eqa/eqa/common/dbase/db/eqa/procs/get_next_id.sql,v $
         * Author:  $Author: adrianp $
         * Updated: 24/12/2015 ChrisMid
         *          Replaced entire logic with "for update of" cursor to prevent a race condition
         *          between application servers executing the stored procedure at the same time
         *          leading to duplicate next_id values being returned to both callers.
         *
         *//*

        begin

        *//*
           This cursor performs a select using:
             1. 'for update of'
                This syntax locks the affected row for subsequent update.
             2. 'at isolation serializable'
                This syntax holds shared locks until the transaction completes.

           Together these options should ensure that no two callers can select the same next_id value
        *//*
        declare get_next_id_cur cursor for
        select next_id
        from next_id
        where id_type = @sequencename
        for update of next_id
        at isolation serializable

        --
                -- Local variables to hold the additional allocation and the current id value
        --
                declare @add_allocation object_id,
        @old_allocation object_id

        --
                -- Replace an explicit null additional allocation value with 1000
        --
                select @add_allocation = isnull(@allocation, 1000)

        --
                -- Open and fetch the cursor.  The fetch begins the transaction and locks the record
        --
                open get_next_id_cur
        fetch get_next_id_cur into @old_allocation

        --
                -- Check the fetch result.  The @@fetch_status values are:
        --   0 : fetch operation successful
        --  -1 : fetch operation unsuccessful
        --  -2 : value reserved for future use
        --
        if (@@fetch_status <> 0)
        begin
        --
                -- Set the current allocation variable to 1 as the fetch did not retrieve any value
        --
                select @old_allocation = 1

        --
                -- Insert a new record for the named sequence
        --
                insert into next_id (id_type, next_id)
        values (@sequencename, @add_allocation + 1)
        end
        else
        begin
        --
                -- The current allocation variable has been populated by the successful fetch.  Update the
        -- named sequence record to the existing value plus the allocation
        --
                update next_id
        set next_id = next_id + @add_allocation
        where current of get_next_id_cur
        end

        --
                -- Close and deallocate the cursor.  The close ends the transaction and unlocks the record
        --
                close get_next_id_cur
        deallocate get_next_id_cur

        --
                -- Select the next id value
        --
                select @next_id = @old_allocation

        --
                -- If required, return the next value(s) as a result set
        --
        if (@select = 1)
        begin
        select @next_id
                end

        end
        go
        EXEC sp_procxmode 'dbo.get_next_id', 'anymode'
        go
        IF OBJECT_ID('dbo.get_next_id') IS NOT NULL
        PRINT '<<< CREATED PROCEDURE dbo.get_next_id >>>'
        ELSE
        PRINT '<<< FAILED CREATING PROCEDURE dbo.get_next_id >>>'
        go
        GRANT EXECUTE ON dbo.get_next_id TO web_transfer
        go
        GRANT EXECUTE ON dbo.get_next_id TO edo_user
        go
        GRANT EXECUTE ON dbo.get_next_id TO sqr_eqa_user
        go
        GRANT EXECUTE ON dbo.get_next_id TO web_appserver_intranet
        go
        GRANT EXECUTE ON dbo.get_next_id TO eqa_user
        go
        GRANT EXECUTE ON dbo.get_next_id TO eqa_rpt_user
        go*/

        Utilities utility = new Utilities()
        utility.setType(DBObjMapper.UTILITIES_PROC.getObjKey())
        utility.setDatabaseName("dbo")
        utility.setName("get_next_id")
        utility.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        StringBuffer bf = new StringBuffer("begin\n" +
                "\n" +
                "    /* \n" +
                "       This cursor performs a select using:\n" +
                "         1. 'for update of'\n" +
                "            This syntax locks the affected row for subsequent update.\n" +
                "         2. 'at isolation serializable'\n" +
                "            This syntax holds shared locks until the transaction completes.\n" +
                "\n" +
                "       Together these options should ensure that no two callers can select the same next_id value\n" +
                "    */\n" +
                "    declare get_next_id_cur cursor for\n" +
                "        select next_id\n" +
                "          from next_id\n" +
                "         where id_type = @sequencename\n" +
                "           for update of next_id\n" +
                "            at isolation serializable\n" +
                "\n" +
                "    --\n" +
                "    -- Local variables to hold the additional allocation and the current id value\n" +
                "    --\n" +
                "    declare @add_allocation object_id,\n" +
                "            @old_allocation object_id\n" +
                "\n" +
                "    --\n" +
                "    -- Replace an explicit null additional allocation value with 1000\n" +
                "    --\n" +
                "    select @add_allocation = isnull(@allocation, 1000)\n" +
                "\n" +
                "    --\n" +
                "    -- Open and fetch the cursor.  The fetch begins the transaction and locks the record\n" +
                "    --\n" +
                "    open get_next_id_cur\n" +
                "    fetch get_next_id_cur into @old_allocation\n" +
                "\n" +
                "    --\n" +
                "    -- Check the fetch result.  The @@fetch_status values are:\n" +
                "    --   0 : fetch operation successful\n" +
                "    --  -1 : fetch operation unsuccessful\n" +
                "    --  -2 : value reserved for future use\n" +
                "    --\n" +
                "    if (@@fetch_status <> 0)\n" +
                "    begin\n" +
                "        --\n" +
                "        -- Set the current allocation variable to 1 as the fetch did not retrieve any value\n" +
                "        --\n" +
                "        select @old_allocation = 1\n" +
                "\n" +
                "        --\n" +
                "        -- Insert a new record for the named sequence\n" +
                "        --\n" +
                "        insert into next_id (id_type, next_id)\n" +
                "        values (@sequencename, @add_allocation + 1)\n" +
                "    end\n" +
                "    else\n" +
                "    begin\n" +
                "        --\n" +
                "        -- The current allocation variable has been populated by the successful fetch.  Update the\n" +
                "        -- named sequence record to the existing value plus the allocation\n" +
                "        --\n" +
                "        update next_id\n" +
                "           set next_id = next_id + @add_allocation\n" +
                "         where current of get_next_id_cur\n" +
                "    end\n" +
                "\n" +
                "    --\n" +
                "    -- Close and deallocate the cursor.  The close ends the transaction and unlocks the record\n" +
                "    --\n" +
                "    close get_next_id_cur\n" +
                "    deallocate get_next_id_cur\n" +
                "\n" +
                "    --\n" +
                "    -- Select the next id value\n" +
                "    --\n" +
                "    select @next_id = @old_allocation\n" +
                "\n" +
                "    --\n" +
                "    -- If required, return the next value(s) as a result set\n" +
                "    --\n" +
                "    if (@select = 1)\n" +
                "    begin\n" +
                "        select @next_id\n" +
                "    end\n" +
                "\n" +
                "end")

        utility.setSql(bf.toString())

        Param param1 = new Param()
        param1.setName("@sequencename")
        param1.setDataType("name")
        param1.setDefaultValue("'OID'")
        param1.setInOut(DBObjMapper.PARAM_IN.getObjKey())

        Param param2 = new Param()
        param2.setName("@allocation")
        param2.setDataType("object_id")
        param2.setDefaultValue("1000")
        param2.setInOut(DBObjMapper.PARAM_IN.getObjKey())

        Param param3 = new Param()
        param3.setName("@next_id")
        param3.setDataType("object_id")
        param3.setDefaultValue("null")
        param3.setInOut(DBObjMapper.PARAM_OUT.getObjKey())

        Param param4 = new Param()
        param4.setName("@select")
        param4.setDataType("int")
        param4.setDefaultValue("1")
        param4.setInOut(DBObjMapper.PARAM_IN.getObjKey())


        def paramMap = ['@sequencename': param1, '@allocation': param2, '@next_id': param3, '@select': param4,]
        utility.setInFields(paramMap)

        Relation relation1 = new Relation()
        relation1.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation1.setAction(DBObjMapper.ACTION_EXECUTE.getObjKey())
        relation1.setGrantObjectDB('dbo')
        relation1.setGrantObjectName('get_next_id')
        relation1.setGrantTo('web_transfer')

        Relation relation2 = new Relation()
        relation2.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation2.setAction(DBObjMapper.ACTION_EXECUTE.getObjKey())
        relation2.setGrantObjectDB('dbo')
        relation2.setGrantObjectName('get_next_id')
        relation2.setGrantTo('edo_user')

        Relation relation3 = new Relation()
        relation3.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation3.setAction(DBObjMapper.ACTION_EXECUTE.getObjKey())
        relation3.setGrantObjectDB('dbo')
        relation3.setGrantObjectName('get_next_id')
        relation3.setGrantTo('sqr_eqa_user')

        Relation relation4 = new Relation()
        relation4.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation4.setAction(DBObjMapper.ACTION_EXECUTE.getObjKey())
        relation4.setGrantObjectDB('dbo')
        relation4.setGrantObjectName('get_next_id')
        relation4.setGrantTo('web_appserver_intranet')

        Relation relation5 = new Relation()
        relation5.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation5.setAction(DBObjMapper.ACTION_EXECUTE.getObjKey())
        relation5.setGrantObjectDB('dbo')
        relation5.setGrantObjectName('get_next_id')
        relation5.setGrantTo('eqa_user')

        Relation relation6 = new Relation()
        relation6.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation6.setAction(DBObjMapper.ACTION_EXECUTE.getObjKey())
        relation6.setGrantObjectDB('dbo')
        relation6.setGrantObjectName('get_next_id')
        relation6.setGrantTo('eqa_rpt_user')

        def grantMap = ['g1': relation1, "g2": relation2, "g3": relation3, "g4": relation4, "g5": relation5, "g6": relation6]
        utility.setGrants(grantMap)

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new UtilitiesDeparser(utility, ow)
    }

    @Test
    void testProcedureDeparser() {
        System.out.print(deparser.deParse())

    }

}
