package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Index
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser}.
 */

class IndexParserTest {

    IndexParser indexParser = new IndexParser()

    @Before
    void setup() {
        indexParser = new IndexParser()
    }

    @Test
    void shouldParseIndexAndReturnCorrectIndex() {
        String indexString = "CREATE NONCLUSTERED INDEX idx_accrd_item_status_hist_01 ON dbo.ACCREDITED_ITEM_STATUS_HIST" +
                "(accredited_item_id,accredited_item_status,active_ind)"

        Index index = new Index()
        List<String> fields = Arrays.asList('accredited_item_id','accredited_item_status','active_ind')

        index.setType(DBObjMapper.INDEX_NONCLUSTERED.getObjKey())
        index.setName('idx_accrd_item_status_hist_01')
        index.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        index.setDatabaseName('dbo')
        index.setTableName('ACCREDITED_ITEM_STATUS_HIST')
        index.setFieldNames(fields)
//        index.setWithClause()

        Index testIndex = indexParser.parse(indexString)

        assertEquals(index.getType(), testIndex.getType())
        assertEquals(index.getName(), testIndex.getName())
        assertEquals(index.getAction(), testIndex.getAction())
        assertEquals(index.getDatabaseName(), testIndex.getDatabaseName())
        assertEquals(index.getTableName(), testIndex.getTableName())
        assertEquals(index.getFieldNames(), testIndex.getFieldNames())
//        assertEquals(index.getWithClause(), testIndex.getWithClause())
    }

    @Test
    void shouldReturnIndexWithDrop(){
        String indexString = 'DROP INDEX ACADEMIC_YEAR.idx_academic_year_01'

        Index index = new Index()
        index.setType('')
        index.setName('idx_academic_year_01')
        index.setAction(DBObjMapper.ACTION_DROPONLY.getObjKey())
        index.setDatabaseName('')
        index.setTableName('ACADEMIC_YEAR')
//        index.setFieldNames('')
//        index.setWithClause()

        Index testIndex = indexParser.parse(indexString)

        assertEquals(index.getType(), testIndex.getType())
        assertEquals(index.getName(), testIndex.getName())
        assertEquals(index.getAction(), testIndex.getAction())
        assertEquals(index.getDatabaseName(), testIndex.getDatabaseName())
        assertEquals(index.getTableName(), testIndex.getTableName())
//        assertEquals(index.getFieldNames(), testIndex.getFieldNames())
//        assertEquals(index.getWithClause(), testIndex.getWithClause())

    }


}
