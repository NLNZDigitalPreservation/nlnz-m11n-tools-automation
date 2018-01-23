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
                'GRANT REFERENCES ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT SELECT ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT SELECT ON dbo.ACADEMIC_YEAR TO read_only ' +
                'GRANT SELECT ON dbo.ACADEMIC_YEAR TO rma_users ' +
                'GRANT INSERT ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT DELETE ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT UPDATE ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT DELETE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT TRUNCATE TABLE ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT UPDATE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user ' +
                'GRANT TRANSFER TABLE ON dbo.ACADEMIC_YEAR TO eqa_user'
        List<Relation> grantList = getRelationList(grantOneString)

        Entity entity = new Entity()
        entity.setDatabaseName('dbo')
        entity.setType('TABLE')
        entity.setName('ACADEMIC_YEAR')
        entity.setAction('CREATE')
//        entity.setFields(fieldsMap)
//        entity.setConstraints(constraintsMap)
//        entity.setGrants(grantsMap)
        entity.setLocks(Arrays.asList('DATAROWS'))

        Entity testEntity = entityParser.parse(new File("src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/parserUtilTestFileCreateTable.sql"))
        assertEquals(entity.getDatabaseName(), testEntity.getDatabaseName())
        assertEquals(entity.getType(), testEntity.getType())
        assertEquals(entity.getName(), testEntity.getName())
        assertEquals(entity.getAction(), testEntity.getAction())

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
    void shouldExtractCorrectDatatypeForSysType(){
        String sqlStatement = 'EXEC sp_addtype \'dt\',\'datetime\',\'NULL\''
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
            constraintList.add(constraint)
        }

        return constraintList
    }

    List<Relation> getRelationList(String grantOneString){
        List<Relation> grantList = new ArrayList<>()
        String[] grantStrings = grantOneString.split(" ")
        for (String grantString : grantStrings){
            grantList.add(relationParser.parse(grantString))
        }

        return grantList
    }
}
