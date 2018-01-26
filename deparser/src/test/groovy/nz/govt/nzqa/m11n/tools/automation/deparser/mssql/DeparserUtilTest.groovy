package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.dbmigrate.model.Relation
import org.junit.Before
import org.junit.Test

class DeparserUtilTest {
    DeparserUtil deparser;

    @Before
    void setUp(){
        //CREATE TABLE dbo.ALLOCATION_METHOD
        //(
        //        allocation_method      code_2 NOT NULL,
        //        allocation_method_desc descr  NOT NULL,
        //CONSTRAINT PK_ALLOCATION_METHOD
        //PRIMARY KEY CLUSTERED (allocation_method)
        //)
        //LOCK DATAROWS
        //GRANT REFERENCES ON dbo.ALLOCATION_METHOD TO eqa_user
        //go
        //GRANT SELECT ON dbo.ALLOCATION_METHOD TO eqa_user

        List<MigrateWrapper> wrappers = new ArrayList<MigrateWrapper>()
        MigrateWrapper wrapper = new MigrateWrapper()
        wrapper.setSchema("web_eqa")

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_TABLE.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("ALLOCATION_METHOD")
        entity.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        entity.setOperationType(DBObjMapper.OPERATION_DIRECT.getObjKey())

        Attribute attribute1 = new Attribute()
        attribute1.setType(DBObjMapper.KEY_COLUMN.getObjKey())
        attribute1.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        attribute1.setName('allocation_method')
        attribute1.setDataType('code_2')
        attribute1.setNull(false)

        Attribute attribute2 = new Attribute()
        attribute2.setType(DBObjMapper.KEY_COLUMN.getObjKey())
        attribute2.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        attribute2.setName('allocation_method_desc')
        attribute2.setDataType('descr')
        attribute2.setNull(false)

        def attributesMap = ['allocation_method': attribute1, 'allocation_method_desc': attribute2]
        entity.setFields(attributesMap)

        Constraint constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        constraint.setName('PK_ALLOCATION_METHOD')
        constraint.setSubType(DBObjMapper.CONSTRAINT_CLUSTERED.getObjKey())
        List<String> fields = ['allocation_method']
        constraint.setFields(fields)

        def constraintMap = ['PK_ALLOCATION_METHOD': constraint]
        entity.setConstraints(constraintMap)

        Relation relation1 = new Relation()
        relation1.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation1.setAction(DBObjMapper.ACTION_REFERENCES.getObjKey())
        relation1.setGrantObjectDB('dbo')
        relation1.setGrantObjectName('ALLOCATION_METHOD')
        relation1.setGrantTo('eqa_user')

        Relation relation2 = new Relation()
        relation2.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation2.setAction(DBObjMapper.ACTION_SELECT.getObjKey())
        relation2.setGrantObjectDB('dbo')
        relation2.setGrantObjectName('ALLOCATION_METHOD')
        relation2.setGrantTo('eqa_user')

        def grantMap = ['g1': relation1, "g2": relation2]
        entity.setGrants(grantMap)

        //----------------------

        Entity entity2 = new Entity()
        entity2.setType(DBObjMapper.ENTITY_TABLE.getObjKey())
        entity2.setDatabaseName("dbo")
        entity2.setName("TESTTABLE")
        entity2.setAction(DBObjMapper.ACTION_ALTER.getObjKey())
        entity2.setOperationType(DBObjMapper.OPERATION_DIRECT.getObjKey())

        Attribute attribute3 = new Attribute()
        attribute3.setType(DBObjMapper.KEY_COLUMN.getObjKey())
        attribute3.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        attribute3.setName('TESTCOLUMN')
        attribute3.setDataType('VARCHAR')
        attribute3.setLength('100')
        attribute3.setNull(false)

        def attributesMap2 = ['allocation_method': attribute3]
        entity2.setFields(attributesMap2)

        wrapper.setTables(new HashMap<String, Entity>("ALLOCATION_METHOD":entity, "TESTTABLE":entity2))

        //----------------------

        Entity entity3 = new Entity()
        entity3.setType(DBObjMapper.ENTITY_KEY.getObjKey())
        entity3.setDatabaseName("dbo")
        entity3.setName("ALLOCATION_GROUP")
        entity3.setAction(DBObjMapper.ACTION_ALTER.getObjKey())
        entity3.setOperationType(DBObjMapper.OPERATION_DIRECT.getObjKey())

        Constraint constraint3 = new Constraint()
        constraint3.setType(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey())
        constraint3.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        constraint3.setName('FK_ALLOCATION_GROUP_METHOD')
        constraint3.setTableName('ALLOCATION_GROUP')

        List<String> fields3 = ['allocation_method']
        constraint3.setFields(fields3)

        constraint3.setReferenceTableName('ALLOCATION_METHOD')
        List<String> fkFields = ['allocation_method']
        constraint3.setReferenceFields(fkFields)

        def constraintMap3 = ['FK_ALLOCATION_GROUP_METHOD': constraint3]
        entity3.setConstraints(constraintMap3)

        wrapper.setKeys(new HashMap<String, Entity>("FK_ALLOCATION_GROUP_METHOD":entity3))

        //----------------------

        Criteria criteria = new Criteria()
        criteria.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria.setFieldName('perorg_type_code')
        criteria.setOperation("=")
        criteria.setValueType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        criteria.setValues(new ArrayList<Object>(Arrays.asList('0')))
        criteria.setComposite(true)

        Criteria criteria2 = new Criteria()
        criteria2.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria2.setFieldName('is_learner')
        criteria2.setOperation("=")
        criteria2.setValueType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        criteria2.setValues(new ArrayList<Object>(Arrays.asList('1')))
        criteria2.setJoinOperator('AND')
        criteria2.setComposite(false)

        criteria.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteria2)))

        Entity entity4 = new Entity()
        entity4.setType(DBObjMapper.ENTITY_CONSTRAINT.getObjKey())
        entity4.setDatabaseName("dbo")
        entity4.setName("PERORG")
        entity4.setAction(DBObjMapper.ACTION_ALTER.getObjKey())
        entity4.setOperationType(DBObjMapper.OPERATION_DIRECT.getObjKey())

        Constraint constraint4 = new Constraint()
        constraint4.setType(DBObjMapper.CONSTRAINT_CHECK.getObjKey())
        constraint4.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        constraint4.setName('CKT_PERORG')
        constraint4.setTableName('PERORG')
        constraint4.setCriteria(criteria)


        def constraintMap4 = ['CKT_PERORG': constraint4]
        entity4.setConstraints(constraintMap4)

        wrapper.setConstraints(new HashMap<String, Entity>("CKT_PERORG":entity4))


        wrappers.add(wrapper)

        deparser = new DeparserUtil(wrappers)
    }

    @Test
    void testDeparserUtil() {
        System.out.print(deparser.deParse())

    }

}
