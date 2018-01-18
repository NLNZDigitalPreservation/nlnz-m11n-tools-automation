package nz.govt.nzqa.m11n.tools.automation.regex

interface RegexBuilder {

    String build (String className, String fieldName, String parameter)
    String build (String className, String fieldName)
    String buildEntityRegex(String fieldName, String parameter)
    String buildAttributeRegex(String fieldName, String parameter)
    String buildRelationRegex(String fieldName, String parameter)
    String buildUtilitiesRegex(String fieldName, String parameter)
    String buildParamRegex(String fieldName, String parameter)
    String buildIndexRegex(String fieldName, String parameter)
    String buildConstraintRegex(String fieldName, String parameter)
    String buildCriteriaRegex(String fieldName, String parameter)

    String buildEntityRegex(String fieldName)
    String buildAttributeRegex(String fieldName)
    String buildRelationRegex(String fieldName)
    String buildUtilitiesRegex(String fieldName)
    String buildParamRegex(String fieldName)
    String buildIndexRegex(String fieldName)
    String buildConstraintRegex(String fieldName)
    String buildCriteriaRegex(String fieldName)

}