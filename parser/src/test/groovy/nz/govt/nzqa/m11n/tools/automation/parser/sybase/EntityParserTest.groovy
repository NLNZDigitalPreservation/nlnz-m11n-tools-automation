package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import org.junit.Before
import org.junit.Test
import static org.junit.Assert.assertEquals

/**
 * Tests the {@link EntityParser}.
 */

class EntityParserTest {

    EntityParser entityParser
    AttributeParser attributeParser
    ConstraintParser constraintParser
    RelationParser relationParser

    @Before
    void setup() {
        entityParser = new EntityParser()
        attributeParser = new AttributeParser()
        constraintParser = new ConstraintParser()
        relationParser = new RelationParser()
    }

    @Test
    void shouldParseTypeNameAction() {

        String attributeOneString =
                'academic_year            char(4)    NOT NULL,' +
                'academic_year_desc       descr      NOT NULL,' +
                'academic_year_start      datetime   NOT NULL,' +
                'academic_year_end        datetime   NOT NULL,' +
                'academic_year_type       varchar(4) NOT NULL,' +
                'academic_year_sort_order sortkey    NOT NULL,'
        List<Attribute> attributeList = getAttributeList(attributeOneString)

        String constraintOneString = 'CONSTRAINT PK_ACADEMIC_YEAR PRIMARY KEY CLUSTERED (academic_year)'
        List<Constraint> constraintList = getConstraintList(constraintOneString)

        String grantOneString =
                'GRANT REFERENCES ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT SELECT ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT SELECT ON dbo.ACADEMIC_YEAR TO read_only\n' +
                'GRANT SELECT ON dbo.ACADEMIC_YEAR TO rma_users\n' +
                'GRANT INSERT ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT DELETE ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT UPDATE ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT DELETE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT TRUNCATE TABLE ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT UPDATE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user\n' +
                'GRANT TRANSFER TABLE ON dbo.ACADEMIC_YEAR TO eqa_user'
        List<Relation> grantList = getRelationList(grantOneString)

        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('TABLE')
        entity.setName('ACADEMIC_YEAR')
        entity.setAction('CREATE')
        entity.setLocks(Arrays.asList('DATAROWS'))

        Entity testEntity = entityParser.parse(new File("src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/parserUtilTestFileCreateTable.sql"))
        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())
//        assertEquals(entity.getOperationType(), testEntity.getOperationType())
//        assertEquals(entity.getFields(), testEntity.getFields())
//        assertEquals(entity.getDataType(), testEntity.getDataType())
//        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())
//        assertEquals(entity.getConstraints(), testEntity.getConstraints())
//        assertEquals(entity.getGrants(), testEntity.getGrants())

        for(Attribute attribute : attributeList){
            assertEquals(attribute.getType(), testEntity.getFields().get(attribute.getName()).getType())
            assertEquals(attribute.getName(), testEntity.getFields().get(attribute.getName()).getName())
            assertEquals(attribute.getAction(), testEntity.getFields().get(attribute.getName()).getAction())
            assertEquals(attribute.getDataType(), testEntity.getFields().get(attribute.getName()).getDataType())
            assertEquals(attribute.getLength(), testEntity.getFields().get(attribute.getName()).getLength())
            assertEquals(attribute.getFraction(), testEntity.getFields().get(attribute.getName()).getFraction())
            assertEquals(attribute.getDefaultValue(), testEntity.getFields().get(attribute.getName()).getDefaultValue())
            assertEquals(attribute.getDefaultValDataType(), testEntity.getFields().get(attribute.getName()).getDefaultValDataType())
            assertEquals(attribute.isNull(), testEntity.getFields().get(attribute.getName()).isNull())

        }

        for(Constraint constraint : constraintList){
            assertEquals(constraint.getType(), testEntity.getConstraints().get(constraint.getName()).getType())
            assertEquals(constraint.getName(), testEntity.getConstraints().get(constraint.getName()).getName())
            assertEquals(constraint.getAction(), testEntity.getConstraints().get(constraint.getName()).getAction())
            assertEquals(constraint.getSubType(), testEntity.getConstraints().get(constraint.getName()).getSubType())
            assertEquals(constraint.getFields(), testEntity.getConstraints().get(constraint.getName()).getFields())
            assertEquals(constraint.getTableName(), testEntity.getConstraints().get(constraint.getName()).getTableName())
            assertEquals(constraint.setReferenceTableName(), testEntity.getConstraints().get(constraint.getName()).setReferenceTableName())
            assertEquals(constraint.setReferenceFields(), testEntity.getConstraints().get(constraint.getName()).setReferenceFields())
        }

        for(Relation grant : grantList){
            assertEquals(grant.getName(), testEntity.getGrants().get(grant.getName()).getName())
            assertEquals(grant.getAction(), testEntity.getGrants().get(grant.getName()).getAction())
            assertEquals(grant.getType(), testEntity.getGrants().get(grant.getName()).getType())
            assertEquals(grant.getGrantObjectDB(), testEntity.getGrants().get(grant.getName()).getGrantObjectDB())
            assertEquals(grant.getGrantObjectName(), testEntity.getGrants().get(grant.getName()).getGrantObjectName())
            assertEquals(grant.getGrantTo(), testEntity.getGrants().get(grant.getName()).getGrantTo())
        }

        assertEquals(entity.getLocks(), testEntity.getLocks())

    }

    @Test
    void shouldReturnCorrectOperationTypes(){
        String createStatement = 'CREATE TABLE dbo.ACADEMIC_YEAR (' +
                'academic_year            char(4)    NOT NULL, ' +
                'academic_year_desc       descr      NOT NULL, ' +
                'academic_year_start      datetime   NOT NULL, ' +
                'academic_year_end        datetime   NOT NULL, ' +
                'academic_year_type       varchar(4) NOT NULL,    ' +
                'academic_year_sort_order sortkey    NOT NULL, ' +
                'CONSTRAINT PK_ACADEMIC_YEAR PRIMARY KEY CLUSTERED (academic_year)) ' +
                'LOCK DATAROWS'

        String opTypeCreate = 'Direct'
        String testOpTypeCreate = entityParser.getOperationType(createStatement)
        assertEquals(opTypeCreate, testOpTypeCreate)

        String defaultStatement = 'CREATE DEFAULT dbo.Yes AS 1'
        String opTypeDefault= 'DefaultValue'
        String testOpTypeDefault = entityParser.getOperationType(defaultStatement)
        assertEquals(opTypeDefault, testOpTypeDefault)

        String deriveStatement = 'CREATE VIEW dbo.VW_PEOPLE' +
                'AS ' +
                '/***************************************************** ' +
                ' * VW_PEOPLE - replicates web view W_PEOPLE ' +
                ' * ' +
                ' * Copyright 2003 SolNet Limited and New Zealand ' +
                ' * Qualifications Authority.  All rights reserved. ' +
                ' * ' +
                ' * $Id: VW_PEOPLE.sql,v 1.1 2007/06/15 03:25:17 antonyb Exp $ ' +
                ' * Author: Origainally Matt Watson (NZQA) ' +
                ' * ' +
                ' * ' +
                ' * Version: $Revision: 1.1 $ ' +
                ' * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/VW_PEOPLE.sql,v $ ' +
                ' * Author:  $Author: antonyb $ ' +
                ' *************************************************/ ' +
                'SELECT ' +
                '    p.perorg_id, ' +
                '    n.title, ' +
                '    n.name1, ' +
                '    n.name2, ' +
                '    n.name3, ' +
                '    n.surname, ' +
                '    p.dob, ' +
                '    p.ird_number, ' +
                '    p.gender_code ' +
                'FROM ' +
                '    PERORG p, ' +
                '    NAME   n ' +
                'WHERE ' +
                '    p.perorg_type_code = \'P\'         and ' +
                '    p.is_learner       = 0           and ' +
                '    p.perorg_id        = n.perorg_id and ' +
                '    p.perorg_status    = \'AC\'        and ' +
                '    n.preferred_ind    = 1           and ' +
                '    n.active_ind       = 1'

        String opTypeDerive= 'Derived'
        String testOpTypeDerive = entityParser.getOperationType(deriveStatement)
        assertEquals(opTypeDerive, testOpTypeDerive)
    }

    @Test
    void shouldReturnDropTableEntity() {
        String sqlStatement = 'DROP TABLE dbo.ACRD_INHERITANCE_MAP'
        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('TABLE')
        entity.setName('ACRD_INHERITANCE_MAP')
        entity.setAction('DROP')

        Entity testEntity = entityParser.parse(sqlStatement)

        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())
    }

    @Test
    void shouldReturnCreateDefaultEntity() {
        String sqlStatement = 'CREATE DEFAULT dbo.default_y AS 1'
        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('DEFAULT')
        entity.setName('default_y')
        entity.setAction('CREATE')
        entity.setOperationType('DefaultValue')
        entity.setDataType('int')
        entity.setQueryValue('1')

        Entity testEntity = entityParser.parse(sqlStatement)

        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())
        assertEquals(entity.getOperationType(), testEntity.getOperationType())
        assertEquals(entity.getDataType(), testEntity.getDataType())
        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())
    }

    @Test
    void shouldReturnCreateViewEntity(){
        String sqlStatement = 'CREATE VIEW dbo.w_providers_all_names AS ' +
                'SELECT p.provider_id,  pr.end_date FROM  PROVIDER p WHERE  p.provider_id = pr.perorg_role_id'

        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('VIEW')
        entity.setName('w_providers_all_names')
        entity.setAction('CREATE')
        entity.setOperationType('Derived')
        entity.setQueryValue('SELECT p.provider_id,  pr.end_date FROM  PROVIDER p WHERE  p.provider_id = pr.perorg_role_id')

        Entity testEntity = entityParser.parse(sqlStatement)

        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())
        assertEquals(entity.getOperationType(), testEntity.getOperationType())
//        assertEquals(entity.getDataType(), testEntity.getDataType())
        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())
    }

    @Test
    void shouldReturnCreateDatatypeEntity(){
        String sqlStatement = "EXEC sp_addtype 'wwwaddr','varchar(255)','NULL'"

        Entity entity = new Entity()
        entity.setType('type')
        entity.setName('wwwaddr')
        entity.setAction('ADD')
        entity.setDataType('varchar(255)')
        entity.setQueryValue('NULL')

        Entity testEntity = entityParser.parse(sqlStatement)

//        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())
//        assertEquals(entity.getOperationType(), testEntity.getOperationType())
        assertEquals(entity.getDataType(), testEntity.getDataType())
        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())
    }

    @Test
    void shouldReturnAlterTableFKEntity(){
        String sqlStatement = 'ALTER TABLE dbo.ACRD_INHERITANCE_MAP ADD CONSTRAINT FK_ACRD_INHERIT_MAP_PROVIDER_1 ' +
                'FOREIGN KEY (inheriting_moe_provider_id,inheriting_location) REFERENCES dbo.PROVIDER (moe_provider_id,location)'

        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('KEY')
        entity.setName('ACRD_INHERITANCE_MAP')
        entity.setAction('ALTER')

        Constraint constraint = new Constraint()
        constraint.setType('FK')
        constraint.setName('FK_ACRD_INHERIT_MAP_PROVIDER_1')
        constraint.setAction('ADD')
        List<String> fields = Arrays.asList('inheriting_moe_provider_id','inheriting_location')
        constraint.setFields(fields)
        constraint.setTableName('ACRD_INHERITANCE_MAP')
        constraint.setReferenceTableName('PROVIDER')
        List<String> refFields = Arrays.asList('moe_provider_id', 'location')
        constraint.setReferenceFields(refFields)

        Map<String, Constraint> constraintMap = new HashMap<>()
        constraintMap.put(constraint.getName(), constraint)
        entity.setConstraints(constraintMap)

        Entity testEntity = entityParser.parse(sqlStatement)

        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())

        for (String key : entity.getConstraints().keySet()){
            Constraint testConstraint = testEntity.getConstraints().get(key)
            assertEquals(constraint.getType(), testConstraint.getType())
            assertEquals(constraint.getName(), testConstraint.getName())
            assertEquals(constraint.getAction(), testConstraint.getAction())
            assertEquals(constraint.getFields(), testConstraint.getFields())
            assertEquals(constraint.getTableName(), testConstraint.getTableName())
            assertEquals(constraint.getReferenceTableName(), testConstraint.getReferenceTableName())
            assertEquals(constraint.getReferenceFields(), testConstraint.getReferenceFields())
        }
//        assertEquals(entity.getOperationType(), testEntity.getOperationType())
//        assertEquals(entity.getDataType(), testEntity.getDataType())
//        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())

    }

    @Test
    void shouldReturnAlterTableUniqueKeyEntity(){
        String sqlStatement = 'ALTER TABLE dbo.ASSESS_SESSION_RELATIONSHIP ADD CONSTRAINT AK_ASSESS_SESSION_RELATIONSHIP ' +
                'UNIQUE NONCLUSTERED (assessment_session_id,related_assessment_session_id,assessment_session_rel_type)'

        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('KEY')
        entity.setName('ASSESS_SESSION_RELATIONSHIP')
        entity.setAction('ALTER')

        Constraint constraint = new Constraint()
        constraint.setType('UNIQUE')
        constraint.setName('AK_ASSESS_SESSION_RELATIONSHIP')
        constraint.setSubType('NONCLUSTERED')
        constraint.setAction('ADD')
        List<String> fields = Arrays.asList('assessment_session_id','related_assessment_session_id', 'assessment_session_rel_type')
        constraint.setFields(fields)
        constraint.setTableName('ASSESS_SESSION_RELATIONSHIP')

        Map<String, Constraint> constraintMap = new HashMap<>()
        constraintMap.put(constraint.getName(), constraint)
        entity.setConstraints(constraintMap)

        Entity testEntity = entityParser.parse(sqlStatement)

        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())

        for (String key : entity.getConstraints().keySet()){
            Constraint testConstraint = testEntity.getConstraints().get(key)
            assertEquals(constraint.getType(), testConstraint.getType())
            assertEquals(constraint.getName(), testConstraint.getName())
            assertEquals(constraint.getSubType(), testConstraint.getSubType())
            assertEquals(constraint.getAction(), testConstraint.getAction())
            assertEquals(constraint.getFields(), testConstraint.getFields())
            assertEquals(constraint.getTableName(), testConstraint.getTableName())
        }
//        assertEquals(entity.getOperationType(), testEntity.getOperationType())
//        assertEquals(entity.getDataType(), testEntity.getDataType())
//        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())

    }

    @Test
    void shouldReturnCreateRuleEntity(){
        String sqlStatement = 'CREATE RULE dbo.R_yn AS @column in (0,1)'

        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('RULE')
        entity.setName('R_yn')
        entity.setQueryValue('@column in (0,1)')

        Entity testEntity = entityParser.parse(sqlStatement)

        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())
    }

    @Test
    void shouldReturnCreateUserEntity(){
        String sqlStatement = "EXEC sp_adduser 'batch_user','batch_user','public'"

        Entity entity = new Entity()
        entity.setType('user')
        entity.setName('batch_user')
        entity.setAction('ADD')
        entity.setDataType('batch_user')
        entity.setQueryValue('public')

        Entity testEntity = entityParser.parse(sqlStatement)

        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())
        assertEquals(entity.getDataType(), testEntity.getDataType())
        assertEquals(entity.getQueryValue(), testEntity.getQueryValue())
    }

    @Test
    void shouldExtractCorrectDatatypeForSysType(){
        String sqlStatement = "EXEC sp_addtype 'dt','datetime','NULL'"
        String dataType = 'datetime'
        String testDataType = entityParser.getDataType(sqlStatement)
        assertEquals(dataType, testDataType)
    }

    @Test
    void shouldExtractDefaultValue(){
        String sqlStatement = 'CREATE DEFAULT dbo.Yes AS 1'
        String defaultValue = '1'
        String testDefaultValue = entityParser.getQueryValue(sqlStatement)
        assertEquals(defaultValue, testDefaultValue)
    }

    List<Attribute> getAttributeList(String attributeOneString){
        List<Attribute> attributeList = new ArrayList<>()
        String[] attributeStrings = attributeOneString.split(",")
        for (String attributeString : attributeStrings){
            Attribute attribute = attributeParser.parse(attributeString)
            attribute.setAction('CREATE')
            attribute.setType('COLUMN')
            attributeList.add(attribute)
        }

        return attributeList
    }

    List<Constraint> getConstraintList(String constraintOneString){
        List<Constraint> constraintList = new ArrayList<>()
        String[] constraintStrings = constraintOneString.split(",")
        for (String constraintString : constraintStrings){
            Constraint constraint = constraintParser.parse(constraintString)
            constraint.setAction('CREATE')
            constraint.setType('PK')
            constraint.setTableName('ACADEMIC_YEAR')
            constraintList.add(constraint)
        }

        return constraintList
    }

    List<Relation> getRelationList(String grantOneString){
        List<Relation> grantList = new ArrayList<>()
        String[] grantStrings = grantOneString.split("\n")
        for (String grantString : grantStrings){
            grantList.add(relationParser.parse(grantString))
        }

        return grantList
    }
}
