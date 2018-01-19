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
