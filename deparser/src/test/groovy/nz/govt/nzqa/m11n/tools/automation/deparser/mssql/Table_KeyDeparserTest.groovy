package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Table_KeyDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //ALTER TABLE dbo.ALLOCATION_GROUP
        //ADD CONSTRAINT FK_ALLOCATION_GROUP_METHOD
        //FOREIGN KEY (allocation_method)
        //REFERENCES dbo.ALLOCATION_METHOD (allocation_method)

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_KEY.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("ALLOCATION_GROUP")
        entity.setAction(DBObjMapper.ACTION_ALTER.getObjKey())
        entity.setOperationType(DBObjMapper.OPERATION_DIRECT.getObjKey())

        Constraint constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        constraint.setName('FK_ALLOCATION_GROUP_METHOD')
        constraint.setTableName('ALLOCATION_GROUP')

        List<String> fields = ['allocation_method']
        constraint.setFields(fields)

        constraint.setReferenceTableName('ALLOCATION_METHOD')
        List<String> fkFields = ['allocation_method']
        constraint.setReferenceFields(fkFields)

        def constraintMap = ['FK_ALLOCATION_GROUP_METHOD': constraint]
        entity.setConstraints(constraintMap)

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testTableDeparser() {
        System.out.print(deparser.deParse())

    }

}
