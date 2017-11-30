package nz.govt.nzqa.m11n.tools.automation.git

/**
 * Converts a tag to {@link SimpleDependency} format or converts {@code SimpleDependency} format to a tag.
 */
class GitTagConverter {
    static final Map<String, String> STANDARD_CONVERT_STRINGS_MAP = [ '__' : ':' ]

    static String convertTagToDependencyStringNotation(String originalTag) {
        return convertTagToDependencyStringNotation(originalTag, STANDARD_CONVERT_STRINGS_MAP)
    }

    static String convertTagToDependencyStringNotation(String originalTag, Map<String, String> convertStrings) {
        String convertedTag = originalTag
        convertStrings?.each { key, value ->
            convertedTag = convertedTag.replaceAll(key, value)
        }

        return convertedTag
    }

    static String convertDependencyStringNotationToTag(String simpleDependencyStringNotation) {
        return convertDependencyStringNotationToTag(simpleDependencyStringNotation, STANDARD_CONVERT_STRINGS_MAP)
    }

    static String convertDependencyStringNotationToTag(String simpleDependencyStringNotation,
                                                        Map<String, String> convertStrings) {
        String convertedNotation = simpleDependencyStringNotation
        convertStrings?.each { key, value ->
            convertedNotation = convertedNotation.replaceAll(value, key)
        }

        return convertedNotation
    }
}
