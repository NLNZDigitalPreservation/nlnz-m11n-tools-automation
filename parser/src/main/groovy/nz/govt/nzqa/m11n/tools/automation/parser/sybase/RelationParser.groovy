package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

import java.lang.reflect.Array
import java.util.regex.Matcher
import java.util.regex.Pattern

class RelationParser implements Parser{

    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
    String regex = regexBuilder.buildRelationRegex(DBObjMapper.REGEX_TYPE.getObjKey())

    String getType(String sqlStatement){
        def result = (sqlStatement =~ /$regex/)
        String type = (result? result[0][1] : '')
        return type
    }

    String getName(String sqlStatement){
        def result = (sqlStatement =~ /$regex/)
        String name = (result? result[0][0] : '')
        return name
    }

    String getAction(String sqlStatement){
        def result = (sqlStatement =~ /$regex/)
        String action = (result? result[0][2] : '')

        return action
    }

    String getGrantTo(String sqlStatement){
        def result = (sqlStatement =~ /$regex/)
        String grantTo = (result? result[0][5] : '')

        return grantTo
    }

    String getGrantObjectDb(String sqlStatement){
        def result = (sqlStatement =~ /$regex/)
        String[] dbObject = (result? result[0][3].toString().split("\\.") : '')
        String grantObjectDb = (dbObject? dbObject[0] : '')

        return grantObjectDb
    }

    String getGrantObjectName(String sqlStatement){
        def result = (sqlStatement =~ /$regex/)
        String[] dbObject = (result? result[0][3].toString().split("\\.") : '')
        String grantObjectName = (dbObject? dbObject[1] : '')

        return grantObjectName
    }

    List<String> getGrantSubObjects(String sqlStatement){
        List<String> grantSubObjects = new ArrayList<String>()

        Pattern pattern = Pattern.compile(/$regex/)
        Matcher matcher = pattern.matcher(sqlStatement)

        while(matcher.find()){
            if (matcher.group(4) != null){
                grantSubObjects = Arrays.asList(matcher.group(4).toString().replaceAll(" |\\(|\\)", "").split(","))
            }
        }

        return grantSubObjects
    }

    @Override
    Relation parse(File file){
        Relation relation = new Relation()
        return relation
    }

    @Override
    Relation parse(String sqlStatement) {
        Relation relation = new Relation()

        relation.setType(getType(sqlStatement))
        relation.setName(getName(sqlStatement))
        relation.setAction(getAction(sqlStatement))
        relation.setGrantTo(getGrantTo(sqlStatement))
        relation.setGrantObjectDB(getGrantObjectDb(sqlStatement))
        relation.setGrantObjectName(getGrantObjectName(sqlStatement))
        relation.setGrantSubObjects(getGrantSubObjects(sqlStatement))

        return relation
    }
}
