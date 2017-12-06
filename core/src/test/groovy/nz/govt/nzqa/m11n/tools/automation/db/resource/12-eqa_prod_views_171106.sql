USE eqa_prod
go
IF OBJECT_ID('dbo.w_providers_all_names') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_providers_all_names
    IF OBJECT_ID('dbo.w_providers_all_names') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_providers_all_names >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_providers_all_names >>>'
END
go
IF OBJECT_ID('dbo.w_providers') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_providers
    IF OBJECT_ID('dbo.w_providers') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_providers >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_providers >>>'
END
go
IF OBJECT_ID('dbo.w_people') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_people
    IF OBJECT_ID('dbo.w_people') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_people >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_people >>>'
END
go
IF OBJECT_ID('dbo.w_markers') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_markers
    IF OBJECT_ID('dbo.w_markers') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_markers >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_markers >>>'
END
go
IF OBJECT_ID('dbo.w_learners') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_learners
    IF OBJECT_ID('dbo.w_learners') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_learners >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_learners >>>'
END
go
IF OBJECT_ID('dbo.w_learner') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_learner
    IF OBJECT_ID('dbo.w_learner') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_learner >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_learner >>>'
END
go
IF OBJECT_ID('dbo.w_all_standards') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_all_standards
    IF OBJECT_ID('dbo.w_all_standards') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_all_standards >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_all_standards >>>'
END
go
IF OBJECT_ID('dbo.w_all_providers') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_all_providers
    IF OBJECT_ID('dbo.w_all_providers') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_all_providers >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_all_providers >>>'
END
go
IF OBJECT_ID('dbo.w_all_moderation_standards') IS NOT NULL
BEGIN
    DROP VIEW dbo.w_all_moderation_standards
    IF OBJECT_ID('dbo.w_all_moderation_standards') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.w_all_moderation_standards >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.w_all_moderation_standards >>>'
END
go
IF OBJECT_ID('dbo.vw_ssb_name_status') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_ssb_name_status
    IF OBJECT_ID('dbo.vw_ssb_name_status') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vw_ssb_name_status >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vw_ssb_name_status >>>'
END
go
IF OBJECT_ID('dbo.vw_set') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_set
    IF OBJECT_ID('dbo.vw_set') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vw_set >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vw_set >>>'
END
go
IF OBJECT_ID('dbo.vw_NFQ_STATS_Result') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_NFQ_STATS_Result
    IF OBJECT_ID('dbo.vw_NFQ_STATS_Result') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vw_NFQ_STATS_Result >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vw_NFQ_STATS_Result >>>'
END
go
IF OBJECT_ID('dbo.vw_MARK_INPUT_extract') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_MARK_INPUT_extract
    IF OBJECT_ID('dbo.vw_MARK_INPUT_extract') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vw_MARK_INPUT_extract >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vw_MARK_INPUT_extract >>>'
END
go
IF OBJECT_ID('dbo.vw_LEARNER_INPUT_extract') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_LEARNER_INPUT_extract
    IF OBJECT_ID('dbo.vw_LEARNER_INPUT_extract') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vw_LEARNER_INPUT_extract >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vw_LEARNER_INPUT_extract >>>'
END
go
IF OBJECT_ID('dbo.vw_LEARNER_INPUT_MATCH_extract') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_LEARNER_INPUT_MATCH_extract
    IF OBJECT_ID('dbo.vw_LEARNER_INPUT_MATCH_extract') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vw_LEARNER_INPUT_MATCH_extract >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vw_LEARNER_INPUT_MATCH_extract >>>'
END
go
IF OBJECT_ID('dbo.vwSRSSummary') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwSRSSummary
    IF OBJECT_ID('dbo.vwSRSSummary') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwSRSSummary >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwSRSSummary >>>'
END
go
IF OBJECT_ID('dbo.vwSRSStdResult') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwSRSStdResult
    IF OBJECT_ID('dbo.vwSRSStdResult') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwSRSStdResult >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwSRSStdResult >>>'
END
go
IF OBJECT_ID('dbo.vwSRSStandard') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwSRSStandard
    IF OBJECT_ID('dbo.vwSRSStandard') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwSRSStandard >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwSRSStandard >>>'
END
go
IF OBJECT_ID('dbo.vwSRSLearner') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwSRSLearner
    IF OBJECT_ID('dbo.vwSRSLearner') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwSRSLearner >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwSRSLearner >>>'
END
go
IF OBJECT_ID('dbo.vwSRSAchievement') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwSRSAchievement
    IF OBJECT_ID('dbo.vwSRSAchievement') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwSRSAchievement >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwSRSAchievement >>>'
END
go
IF OBJECT_ID('dbo.vwROLUnitResult') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwROLUnitResult
    IF OBJECT_ID('dbo.vwROLUnitResult') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwROLUnitResult >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwROLUnitResult >>>'
END
go
IF OBJECT_ID('dbo.vwROLStandard') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwROLStandard
    IF OBJECT_ID('dbo.vwROLStandard') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwROLStandard >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwROLStandard >>>'
END
go
IF OBJECT_ID('dbo.vwROLScholResult') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwROLScholResult
    IF OBJECT_ID('dbo.vwROLScholResult') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwROLScholResult >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwROLScholResult >>>'
END
go
IF OBJECT_ID('dbo.vwROLQualificationStrand') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwROLQualificationStrand
    IF OBJECT_ID('dbo.vwROLQualificationStrand') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwROLQualificationStrand >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwROLQualificationStrand >>>'
END
go
IF OBJECT_ID('dbo.vwROLQualification') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwROLQualification
    IF OBJECT_ID('dbo.vwROLQualification') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwROLQualification >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwROLQualification >>>'
END
go
IF OBJECT_ID('dbo.vwROLLearner') IS NOT NULL
BEGIN
    DROP VIEW dbo.vwROLLearner
    IF OBJECT_ID('dbo.vwROLLearner') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vwROLLearner >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vwROLLearner >>>'
END
go
IF OBJECT_ID('dbo.tmp_standard_input_vw2') IS NOT NULL
BEGIN
    DROP VIEW dbo.tmp_standard_input_vw2
    IF OBJECT_ID('dbo.tmp_standard_input_vw2') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.tmp_standard_input_vw2 >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.tmp_standard_input_vw2 >>>'
END
go
IF OBJECT_ID('dbo.tmp_standard_input_vw1') IS NOT NULL
BEGIN
    DROP VIEW dbo.tmp_standard_input_vw1
    IF OBJECT_ID('dbo.tmp_standard_input_vw1') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.tmp_standard_input_vw1 >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.tmp_standard_input_vw1 >>>'
END
go
IF OBJECT_ID('dbo.temp_sqr_event') IS NOT NULL
BEGIN
    DROP VIEW dbo.temp_sqr_event
    IF OBJECT_ID('dbo.temp_sqr_event') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.temp_sqr_event >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.temp_sqr_event >>>'
END
go
IF OBJECT_ID('dbo.temp_sec_course_std_hist') IS NOT NULL
BEGIN
    DROP VIEW dbo.temp_sec_course_std_hist
    IF OBJECT_ID('dbo.temp_sec_course_std_hist') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.temp_sec_course_std_hist >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.temp_sec_course_std_hist >>>'
END
go
IF OBJECT_ID('dbo.temp1') IS NOT NULL
BEGIN
    DROP VIEW dbo.temp1
    IF OBJECT_ID('dbo.temp1') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.temp1 >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.temp1 >>>'
END
go
IF OBJECT_ID('dbo.sysquerymetrics') IS NOT NULL
BEGIN
    DROP VIEW dbo.sysquerymetrics
    IF OBJECT_ID('dbo.sysquerymetrics') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.sysquerymetrics >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.sysquerymetrics >>>'
END
go
IF OBJECT_ID('dbo.mc_vw_sqr_event') IS NOT NULL
BEGIN
    DROP VIEW dbo.mc_vw_sqr_event
    IF OBJECT_ID('dbo.mc_vw_sqr_event') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.mc_vw_sqr_event >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.mc_vw_sqr_event >>>'
END
go
IF OBJECT_ID('dbo.mc_compare_accedited_item') IS NOT NULL
BEGIN
    DROP VIEW dbo.mc_compare_accedited_item
    IF OBJECT_ID('dbo.mc_compare_accedited_item') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.mc_compare_accedited_item >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.mc_compare_accedited_item >>>'
END
go
IF OBJECT_ID('dbo.W_ASSESSMENT_CENTRE') IS NOT NULL
BEGIN
    DROP VIEW dbo.W_ASSESSMENT_CENTRE
    IF OBJECT_ID('dbo.W_ASSESSMENT_CENTRE') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.W_ASSESSMENT_CENTRE >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.W_ASSESSMENT_CENTRE >>>'
END
go
IF OBJECT_ID('dbo.WEB_STANDARDS') IS NOT NULL
BEGIN
    DROP VIEW dbo.WEB_STANDARDS
    IF OBJECT_ID('dbo.WEB_STANDARDS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.WEB_STANDARDS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.WEB_STANDARDS >>>'
END
go
IF OBJECT_ID('dbo.VW_STD_VERSIONS_WITH_LEVEL') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_STD_VERSIONS_WITH_LEVEL
    IF OBJECT_ID('dbo.VW_STD_VERSIONS_WITH_LEVEL') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_STD_VERSIONS_WITH_LEVEL >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_STD_VERSIONS_WITH_LEVEL >>>'
END
go
IF OBJECT_ID('dbo.VW_STD_GROUP') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_STD_GROUP
    IF OBJECT_ID('dbo.VW_STD_GROUP') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_STD_GROUP >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_STD_GROUP >>>'
END
go
IF OBJECT_ID('dbo.VW_STANDARD_INPUT_WITH_ERROR') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_STANDARD_INPUT_WITH_ERROR
    IF OBJECT_ID('dbo.VW_STANDARD_INPUT_WITH_ERROR') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_STANDARD_INPUT_WITH_ERROR >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_STANDARD_INPUT_WITH_ERROR >>>'
END
go
IF OBJECT_ID('dbo.VW_STANDARDS_SUBJECT') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_STANDARDS_SUBJECT
    IF OBJECT_ID('dbo.VW_STANDARDS_SUBJECT') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_STANDARDS_SUBJECT >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_STANDARDS_SUBJECT >>>'
END
go
IF OBJECT_ID('dbo.VW_STANDARDS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_STANDARDS
    IF OBJECT_ID('dbo.VW_STANDARDS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_STANDARDS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_STANDARDS >>>'
END
go
IF OBJECT_ID('dbo.VW_RESMAN_RELATIONSHIP') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RESMAN_RELATIONSHIP
    IF OBJECT_ID('dbo.VW_RESMAN_RELATIONSHIP') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RESMAN_RELATIONSHIP >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RESMAN_RELATIONSHIP >>>'
END
go
IF OBJECT_ID('dbo.VW_RESMAN_PROVIDER') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RESMAN_PROVIDER
    IF OBJECT_ID('dbo.VW_RESMAN_PROVIDER') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RESMAN_PROVIDER >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RESMAN_PROVIDER >>>'
END
go
IF OBJECT_ID('dbo.VW_RESMAN_PERORG_ROLE') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RESMAN_PERORG_ROLE
    IF OBJECT_ID('dbo.VW_RESMAN_PERORG_ROLE') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RESMAN_PERORG_ROLE >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RESMAN_PERORG_ROLE >>>'
END
go
IF OBJECT_ID('dbo.VW_RESMAN_PERORG_ALT_ID') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RESMAN_PERORG_ALT_ID
    IF OBJECT_ID('dbo.VW_RESMAN_PERORG_ALT_ID') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RESMAN_PERORG_ALT_ID >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RESMAN_PERORG_ALT_ID >>>'
END
go
IF OBJECT_ID('dbo.VW_RESMAN_PERORG') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RESMAN_PERORG
    IF OBJECT_ID('dbo.VW_RESMAN_PERORG') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RESMAN_PERORG >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RESMAN_PERORG >>>'
END
go
IF OBJECT_ID('dbo.VW_RESMAN_NAME') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RESMAN_NAME
    IF OBJECT_ID('dbo.VW_RESMAN_NAME') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RESMAN_NAME >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RESMAN_NAME >>>'
END
go
IF OBJECT_ID('dbo.VW_RESMAN_COM_METHOD') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RESMAN_COM_METHOD
    IF OBJECT_ID('dbo.VW_RESMAN_COM_METHOD') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RESMAN_COM_METHOD >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RESMAN_COM_METHOD >>>'
END
go
IF OBJECT_ID('dbo.VW_RELATIONSHIP_CONTACT') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_RELATIONSHIP_CONTACT
    IF OBJECT_ID('dbo.VW_RELATIONSHIP_CONTACT') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_RELATIONSHIP_CONTACT >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_RELATIONSHIP_CONTACT >>>'
END
go
IF OBJECT_ID('dbo.VW_QUAL_STRANDS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_QUAL_STRANDS
    IF OBJECT_ID('dbo.VW_QUAL_STRANDS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_QUAL_STRANDS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_QUAL_STRANDS >>>'
END
go
IF OBJECT_ID('dbo.VW_QUAL_CHECK_RESULT_IQ') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_QUAL_CHECK_RESULT_IQ
    IF OBJECT_ID('dbo.VW_QUAL_CHECK_RESULT_IQ') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_QUAL_CHECK_RESULT_IQ >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_QUAL_CHECK_RESULT_IQ >>>'
END
go
IF OBJECT_ID('dbo.VW_QUALIFICATIONS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_QUALIFICATIONS
    IF OBJECT_ID('dbo.VW_QUALIFICATIONS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_QUALIFICATIONS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_QUALIFICATIONS >>>'
END
go
IF OBJECT_ID('dbo.VW_QFN_ACHIEVED') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_QFN_ACHIEVED
    IF OBJECT_ID('dbo.VW_QFN_ACHIEVED') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_QFN_ACHIEVED >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_QFN_ACHIEVED >>>'
END
go
IF OBJECT_ID('dbo.VW_PROVIDERS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_PROVIDERS
    IF OBJECT_ID('dbo.VW_PROVIDERS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_PROVIDERS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_PROVIDERS >>>'
END
go
IF OBJECT_ID('dbo.VW_PERSONALISATION_LATEST') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_PERSONALISATION_LATEST
    IF OBJECT_ID('dbo.VW_PERSONALISATION_LATEST') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_PERSONALISATION_LATEST >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_PERSONALISATION_LATEST >>>'
END
go
IF OBJECT_ID('dbo.VW_PEOPLE') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_PEOPLE
    IF OBJECT_ID('dbo.VW_PEOPLE') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_PEOPLE >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_PEOPLE >>>'
END
go
IF OBJECT_ID('dbo.VW_ORGANISATION') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ORGANISATION
    IF OBJECT_ID('dbo.VW_ORGANISATION') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ORGANISATION >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ORGANISATION >>>'
END
go
IF OBJECT_ID('dbo.VW_OPTIONAL_STRANDS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_OPTIONAL_STRANDS
    IF OBJECT_ID('dbo.VW_OPTIONAL_STRANDS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_OPTIONAL_STRANDS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_OPTIONAL_STRANDS >>>'
END
go
IF OBJECT_ID('dbo.VW_MARKER_ALLOCATION_GROUP') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_MARKER_ALLOCATION_GROUP
    IF OBJECT_ID('dbo.VW_MARKER_ALLOCATION_GROUP') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_MARKER_ALLOCATION_GROUP >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_MARKER_ALLOCATION_GROUP >>>'
END
go
IF OBJECT_ID('dbo.VW_MARKERS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_MARKERS
    IF OBJECT_ID('dbo.VW_MARKERS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_MARKERS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_MARKERS >>>'
END
go
IF OBJECT_ID('dbo.VW_LEARNERS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_LEARNERS
    IF OBJECT_ID('dbo.VW_LEARNERS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_LEARNERS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_LEARNERS >>>'
END
go
IF OBJECT_ID('dbo.VW_IRN_STANDARDS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_IRN_STANDARDS
    IF OBJECT_ID('dbo.VW_IRN_STANDARDS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_IRN_STANDARDS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_IRN_STANDARDS >>>'
END
go
IF OBJECT_ID('dbo.VW_IRN_SCHOOL_EXCLUDES') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_IRN_SCHOOL_EXCLUDES
    IF OBJECT_ID('dbo.VW_IRN_SCHOOL_EXCLUDES') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_IRN_SCHOOL_EXCLUDES >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_IRN_SCHOOL_EXCLUDES >>>'
END
go
IF OBJECT_ID('dbo.VW_IRN_RESULTS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_IRN_RESULTS
    IF OBJECT_ID('dbo.VW_IRN_RESULTS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_IRN_RESULTS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_IRN_RESULTS >>>'
END
go
IF OBJECT_ID('dbo.VW_IRN_QUALIFICATIONS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_IRN_QUALIFICATIONS
    IF OBJECT_ID('dbo.VW_IRN_QUALIFICATIONS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_IRN_QUALIFICATIONS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_IRN_QUALIFICATIONS >>>'
END
go
IF OBJECT_ID('dbo.VW_IRN_CANDIDATES_GRADE_AVG') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_IRN_CANDIDATES_GRADE_AVG
    IF OBJECT_ID('dbo.VW_IRN_CANDIDATES_GRADE_AVG') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_IRN_CANDIDATES_GRADE_AVG >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_IRN_CANDIDATES_GRADE_AVG >>>'
END
go
IF OBJECT_ID('dbo.VW_IRN_CANDIDATES') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_IRN_CANDIDATES
    IF OBJECT_ID('dbo.VW_IRN_CANDIDATES') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_IRN_CANDIDATES >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_IRN_CANDIDATES >>>'
END
go
IF OBJECT_ID('dbo.VW_INPUT_BATCH_ERROR_LOADED') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_INPUT_BATCH_ERROR_LOADED
    IF OBJECT_ID('dbo.VW_INPUT_BATCH_ERROR_LOADED') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_INPUT_BATCH_ERROR_LOADED >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_INPUT_BATCH_ERROR_LOADED >>>'
END
go
IF OBJECT_ID('dbo.VW_EXAM_STANDARD') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_EXAM_STANDARD
    IF OBJECT_ID('dbo.VW_EXAM_STANDARD') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_EXAM_STANDARD >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_EXAM_STANDARD >>>'
END
go
IF OBJECT_ID('dbo.VW_EXAM_CENTRE') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_EXAM_CENTRE
    IF OBJECT_ID('dbo.VW_EXAM_CENTRE') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_EXAM_CENTRE >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_EXAM_CENTRE >>>'
END
go
IF OBJECT_ID('dbo.VW_EXAMS_ENTRY') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_EXAMS_ENTRY
    IF OBJECT_ID('dbo.VW_EXAMS_ENTRY') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_EXAMS_ENTRY >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_EXAMS_ENTRY >>>'
END
go
IF OBJECT_ID('dbo.VW_ENTRY_RECON') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ENTRY_RECON
    IF OBJECT_ID('dbo.VW_ENTRY_RECON') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ENTRY_RECON >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ENTRY_RECON >>>'
END
go
IF OBJECT_ID('dbo.VW_ENTRY_PERS_MARKER') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ENTRY_PERS_MARKER
    IF OBJECT_ID('dbo.VW_ENTRY_PERS_MARKER') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ENTRY_PERS_MARKER >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ENTRY_PERS_MARKER >>>'
END
go
IF OBJECT_ID('dbo.VW_COMMON_QUALIFICATION') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_COMMON_QUALIFICATION
    IF OBJECT_ID('dbo.VW_COMMON_QUALIFICATION') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_COMMON_QUALIFICATION >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_COMMON_QUALIFICATION >>>'
END
go
IF OBJECT_ID('dbo.VW_ASSESSMENT') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ASSESSMENT
    IF OBJECT_ID('dbo.VW_ASSESSMENT') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ASSESSMENT >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ASSESSMENT >>>'
END
go
IF OBJECT_ID('dbo.VW_ARC_STANDARD_INPUT') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ARC_STANDARD_INPUT
    IF OBJECT_ID('dbo.VW_ARC_STANDARD_INPUT') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ARC_STANDARD_INPUT >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ARC_STANDARD_INPUT >>>'
END
go
IF OBJECT_ID('dbo.VW_ARC_INPUT_BATCH_ERROR') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ARC_INPUT_BATCH_ERROR
    IF OBJECT_ID('dbo.VW_ARC_INPUT_BATCH_ERROR') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ARC_INPUT_BATCH_ERROR >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ARC_INPUT_BATCH_ERROR >>>'
END
go
IF OBJECT_ID('dbo.VW_ALL_STANDARDS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ALL_STANDARDS
    IF OBJECT_ID('dbo.VW_ALL_STANDARDS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ALL_STANDARDS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ALL_STANDARDS >>>'
END
go
IF OBJECT_ID('dbo.VW_ALLOCATION_GROUP_MARKERS') IS NOT NULL
BEGIN
    DROP VIEW dbo.VW_ALLOCATION_GROUP_MARKERS
    IF OBJECT_ID('dbo.VW_ALLOCATION_GROUP_MARKERS') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.VW_ALLOCATION_GROUP_MARKERS >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.VW_ALLOCATION_GROUP_MARKERS >>>'
END
go
IF OBJECT_ID('dbo.ORGANISATION_TYPE') IS NOT NULL
BEGIN
    DROP VIEW dbo.ORGANISATION_TYPE
    IF OBJECT_ID('dbo.ORGANISATION_TYPE') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.ORGANISATION_TYPE >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.ORGANISATION_TYPE >>>'
END
go
IF OBJECT_ID('dbo.ExamsMarkerLateAppointmentVw') IS NOT NULL
BEGIN
    DROP VIEW dbo.ExamsMarkerLateAppointmentVw
    IF OBJECT_ID('dbo.ExamsMarkerLateAppointmentVw') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.ExamsMarkerLateAppointmentVw >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.ExamsMarkerLateAppointmentVw >>>'
END
go
IF OBJECT_ID('dbo.ExamsMarkerInviteVw') IS NOT NULL
BEGIN
    DROP VIEW dbo.ExamsMarkerInviteVw
    IF OBJECT_ID('dbo.ExamsMarkerInviteVw') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.ExamsMarkerInviteVw >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.ExamsMarkerInviteVw >>>'
END
go
IF OBJECT_ID('dbo.ExamsMarkerDeclineVw') IS NOT NULL
BEGIN
    DROP VIEW dbo.ExamsMarkerDeclineVw
    IF OBJECT_ID('dbo.ExamsMarkerDeclineVw') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.ExamsMarkerDeclineVw >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.ExamsMarkerDeclineVw >>>'
END
go
IF OBJECT_ID('dbo.ExamsMarkerAcceptVw') IS NOT NULL
BEGIN
    DROP VIEW dbo.ExamsMarkerAcceptVw
    IF OBJECT_ID('dbo.ExamsMarkerAcceptVw') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.ExamsMarkerAcceptVw >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.ExamsMarkerAcceptVw >>>'
END
go
IF OBJECT_ID('dbo.CantyFileRptVw') IS NOT NULL
BEGIN
    DROP VIEW dbo.CantyFileRptVw
    IF OBJECT_ID('dbo.CantyFileRptVw') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.CantyFileRptVw >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.CantyFileRptVw >>>'
END
go
create view dbo.CantyFileRptVw
as
	select	right('000' +convert(varchar(4),e.provider_id),4)
		+ right('00000000' + convert(varchar(10),e.nsn),10)
		+ isnull(e.local_id + replicate(' ',10-len(e.local_id)),space(10))
		+ e.surname
		+ e.name1
		+ isnull(right('0' + convert(varchar(2),datepart(dd,e.dob)),2) 
			+ right('0' + convert(varchar(2),datepart(mm,e.dob)),2) 
			+ convert(varchar(4),datepart(yy,e.dob)),space(8))
		+ isnull(e.gender_code,space(1))
		+ isnull(replicate('0',2-len(convert(varchar(2),e.moe_year_level_code))) + convert(varchar(2),e.moe_year_level_code),space(2))
		+ isnull(replicate(' ',5-len(l.ethnicity_code_1)) + convert(varchar(5),l.ethnicity_code_1),space(5))
		+ isnull(replicate(' ',5-len(l.ethnicity_code_2)) + convert(varchar(5),l.ethnicity_code_2),space(5))
		+ isnull(replicate(' ',5-len(l.ethnicity_code_3)) + convert(varchar(5),l.ethnicity_code_3),space(5))
--		+ space(2) + convert(char(3),l.ethnicity_code_1)
--		+ space(2) + convert(char(3),l.ethnicity_code_2)
--		+ space(2) + convert(char(3),l.ethnicity_code_3)
		+ replicate('0',5-len(e.std_number)) + convert(varchar(5),e.std_number)
		+ replicate('0',2-len(convert(varchar(2),e.std_version_number))) + convert(varchar(2),e.std_version_number)
		+ replicate(' ',5-len(e.result_code)) + e.result_code as 'RowText'
--		+ replicate('0',3-len(convert(varchar(3),e.credits))) + convert(varchar(3),e.credits) as 'RowText'
	from	tempdb..CantyFileEntries e
		,tempdb..CantyFileLearners l
	where	l.perorg_id = e.perorg_id
go
IF OBJECT_ID('dbo.CantyFileRptVw') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.CantyFileRptVw >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.CantyFileRptVw >>>'
go
GRANT SELECT ON dbo.CantyFileRptVw TO eqa_user
go
GRANT SELECT ON dbo.CantyFileRptVw TO read_only
go
GRANT SELECT ON dbo.CantyFileRptVw TO rma_users
go
create view dbo.ExamsMarkerAcceptVw as
select	FirstName			
	,Surname			
	,ReturnMethod			
	,IRDNumber			
	,ScriptAddressLine1		
	,ScriptAddressLine2		
	,ScriptAddressLine3		
	,ScriptAddressLine4		
	,ScriptDeliveryInstructions	
	,StreetAddressLine1		
	,StreetAddressLine2		
	,StreetAddressLine3		
	,StreetAddressLine4		
	,PostalAddressLine1		
	,PostalAddressLine2		
	,PostalAddressLine3		
	,PostalAddressLine4		
	,HomeTelephone			
	,WorkTelephone			
	,MobilePhone			
	,EmailAddress			
	,SubjectName1			
	,StandardNumber1		
--	,Level1				
	,Category1			
	,Status1			
	,SubjectName2			
	,StandardNumber2		
--	,Level2				
	,Category2			
	,Status2			
	,SubjectName3			
	,StandardNumber3		
--	,Level3				
	,Category3			
	,Status3			
	,SubjectName4			
	,StandardNumber4		
--	,Level4				
	,Category4			
	,Status4			
	,SubjectName5			
	,StandardNumber5		
--	,Level5				
	,Category5			
	,Status5			
	,SubjectName6			
	,StandardNumber6		
--	,Level6				
	,Category6			
	,Status6			
	,SubjectName7			
	,StandardNumber7		
--	,Level7				
	,Category7			
	,Status7			
	,SubjectName8			
	,StandardNumber8		
--	,Level8				
	,Category8			
	,Status8			
	,SubjectName9			
	,StandardNumber9		
--	,Level9				
	,Category9			
	,Status9			
	,SubjectName10			
	,StandardNumber10		
--	,Level10				
	,Category10			
	,Status10			
from	tempdb..ExamsMarkerExtract
go
IF OBJECT_ID('dbo.ExamsMarkerAcceptVw') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.ExamsMarkerAcceptVw >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.ExamsMarkerAcceptVw >>>'
go
GRANT SELECT ON dbo.ExamsMarkerAcceptVw TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerAcceptVw TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerAcceptVw TO rma_users
go
create view dbo.ExamsMarkerDeclineVw as
select	FirstName			
	,Surname			
	,ScriptAddressLine1		
	,ScriptAddressLine2		
	,ScriptAddressLine3		
	,ScriptAddressLine4		
--	,Level1				
	,SubjectName1			
	,Status1			
--	,Level2				
	,SubjectName2			
	,Status2			
--	,Level3				
	,SubjectName3			
	,Status3			
--	,Level4				
	,SubjectName4			
	,Status4			
--	,Level5				
	,SubjectName5			
	,Status5			
--	,Level6				
	,SubjectName6			
	,Status6			
--	,Level7				
	,SubjectName7			
	,Status7			
--	,Level8				
	,SubjectName8			
	,Status8			
--	,Level9				
	,SubjectName9			
	,Status9			
--	,Level10			
	,SubjectName10			
	,Status10			
from	tempdb..ExamsMarkerExtract
go
IF OBJECT_ID('dbo.ExamsMarkerDeclineVw') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.ExamsMarkerDeclineVw >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.ExamsMarkerDeclineVw >>>'
go
GRANT SELECT ON dbo.ExamsMarkerDeclineVw TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerDeclineVw TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerDeclineVw TO rma_users
go
create view dbo.ExamsMarkerInviteVw as
select	FirstName			
	,Surname			
	,ScriptAddressLine1		
	,ScriptAddressLine2		
	,ScriptAddressLine3		
	,ScriptAddressLine4		
--	,Level1				
	,SubjectName1			
	,StandardNumber1		
	,StandardDescription1		
	,ExamSessionDate1		
	,MarkerFee1			
	,MaximumAllocation1		
	,PanelLeader1			
	,Status1			
	,Category1			
--	,Level2				
	,SubjectName2			
	,StandardNumber2		
	,StandardDescription2		
	,ExamSessionDate2		
	,MarkerFee2			
	,MaximumAllocation2		
	,PanelLeader2			
	,Status2			
	,Category2			
--	,Level3				
	,SubjectName3			
	,StandardNumber3		
	,StandardDescription3		
	,ExamSessionDate3		
	,MarkerFee3			
	,MaximumAllocation3		
	,PanelLeader3			
	,Status3			
	,Category3			
--	,Level4				
	,SubjectName4			
	,StandardNumber4		
	,StandardDescription4		
	,ExamSessionDate4		
	,MarkerFee4			
	,MaximumAllocation4		
	,PanelLeader4			
	,Status4			
	,Category4			
--	,Level5				
	,SubjectName5			
	,StandardNumber5		
	,StandardDescription5		
	,ExamSessionDate5		
	,MarkerFee5			
	,MaximumAllocation5		
	,PanelLeader5			
	,Status5			
	,Category5			
--	,Level6				
	,SubjectName6			
	,StandardNumber6		
	,StandardDescription6		
	,ExamSessionDate6		
	,MarkerFee6			
	,MaximumAllocation6		
	,PanelLeader6			
	,Status6			
	,Category6			
--	,Level7				
	,SubjectName7			
	,StandardNumber7		
	,StandardDescription7		
	,ExamSessionDate7		
	,MarkerFee7			
	,MaximumAllocation7		
	,PanelLeader7			
	,Status7			
	,Category7			
--	,Level8				
	,SubjectName8			
	,StandardNumber8		
	,StandardDescription8		
	,ExamSessionDate8		
	,MarkerFee8			
	,MaximumAllocation8		
	,PanelLeader8			
	,Status8			
	,Category8			
--	,Level9				
	,SubjectName9			
	,StandardNumber9		
	,StandardDescription9		
	,ExamSessionDate9		
	,MarkerFee9			
	,MaximumAllocation9		
	,PanelLeader9			
	,Status9			
	,Category9			
--	,Level10			
	,SubjectName10			
	,StandardNumber10		
	,StandardDescription10		
	,ExamSessionDate10		
	,MarkerFee10			
	,MaximumAllocation10		
	,PanelLeader10			
	,Status10			
	,Category10
from	tempdb..ExamsMarkerExtract
go
IF OBJECT_ID('dbo.ExamsMarkerInviteVw') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.ExamsMarkerInviteVw >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.ExamsMarkerInviteVw >>>'
go
GRANT SELECT ON dbo.ExamsMarkerInviteVw TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerInviteVw TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerInviteVw TO rma_users
go
create view dbo.ExamsMarkerLateAppointmentVw as
select	FirstName			
	,Surname			
	,ScriptAddressLine1		
	,ScriptAddressLine2		
	,ScriptAddressLine3		
	,ScriptAddressLine4		
--	,Level1				
	,SubjectName1			
	,StandardNumber1		
	,StandardDescription1		
	,ExamSessionDate1		
	,MarkerFee1			
	,MaximumAllocation1		
	,PanelLeader1			
	,Status1			
	,Category1			
--	,Level2				
	,SubjectName2			
	,StandardNumber2		
	,StandardDescription2		
	,ExamSessionDate2		
	,MarkerFee2			
	,MaximumAllocation2		
	,PanelLeader2			
	,Status2			
	,Category2			
--	,Level3				
	,SubjectName3			
	,StandardNumber3		
	,StandardDescription3		
	,ExamSessionDate3		
	,MarkerFee3			
	,MaximumAllocation3		
	,PanelLeader3			
	,Status3			
	,Category3			
--	,Level4				
	,SubjectName4			
	,StandardNumber4		
	,StandardDescription4		
	,ExamSessionDate4		
	,MarkerFee4			
	,MaximumAllocation4		
	,PanelLeader4			
	,Status4			
	,Category4			
--	,Level5				
	,SubjectName5			
	,StandardNumber5		
	,StandardDescription5		
	,ExamSessionDate5		
	,MarkerFee5			
	,MaximumAllocation5		
	,PanelLeader5			
	,Status5			
	,Category5			
--	,Level6				
	,SubjectName6			
	,StandardNumber6		
	,StandardDescription6		
	,ExamSessionDate6		
	,MarkerFee6			
	,MaximumAllocation6		
	,PanelLeader6			
	,Status6			
	,Category6			
--	,Level7				
	,SubjectName7			
	,StandardNumber7		
	,StandardDescription7		
	,ExamSessionDate7		
	,MarkerFee7			
	,MaximumAllocation7		
	,PanelLeader7			
	,Status7			
	,Category7			
--	,Level8				
	,SubjectName8			
	,StandardNumber8		
	,StandardDescription8		
	,ExamSessionDate8		
	,MarkerFee8			
	,MaximumAllocation8		
	,PanelLeader8			
	,Status8			
	,Category8			
--	,Level9				
	,SubjectName9			
	,StandardNumber9		
	,StandardDescription9		
	,ExamSessionDate9		
	,MarkerFee9			
	,MaximumAllocation9		
	,PanelLeader9			
	,Status9			
	,Category9			
--	,Level10			
	,SubjectName10			
	,StandardNumber10		
	,StandardDescription10		
	,ExamSessionDate10		
	,MarkerFee10			
	,MaximumAllocation10		
	,PanelLeader10			
	,Status10			
	,Category10
from	tempdb..ExamsMarkerExtract
go
IF OBJECT_ID('dbo.ExamsMarkerLateAppointmentVw') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.ExamsMarkerLateAppointmentVw >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.ExamsMarkerLateAppointmentVw >>>'
go
GRANT SELECT ON dbo.ExamsMarkerLateAppointmentVw TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerLateAppointmentVw TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerLateAppointmentVw TO rma_users
go
create view dbo.ORGANISATION_TYPE
as
--
--
--
-- $Author: pmorris $
-- $Revision: 1.1 $
--
select
  org_type_code = 
      case provider_type_code
        when 'COE' then 'COLLED'
        when 'POL' then 'POLLY'
        when 'SCH' then 'SCHOOL'
        when 'UNI' then 'UNIV'
        when 'WNA' then 'WANA'
        else provider_type_code
      end
, org_type_code_desc  = provider_type_desc
, active_ind          = convert(smallint, 1)
from PROVIDER_TYPE pt

union

select 
    case perorg_role_type_code
        when 7 then 'SSB'
        when 12 then 'QAB'
        when 13 then 'DEV'
      end
  , perorg_role_type_desc
  , 1   
from PERORG_ROLE_TYPE
where perorg_type_code = 'O'
and perorg_role_type_code not in (3, 4)
go
IF OBJECT_ID('dbo.ORGANISATION_TYPE') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.ORGANISATION_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.ORGANISATION_TYPE >>>'
go
GRANT SELECT ON dbo.ORGANISATION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ORGANISATION_TYPE TO read_only
go
GRANT SELECT ON dbo.ORGANISATION_TYPE TO rma_users
go
CREATE VIEW dbo.VW_ALLOCATION_GROUP_MARKERS AS
SELECT ag.allocation_group_id as 'allocation_group_id',
  count(mag.marker_allocation_group_id) as 'markers',
  sum(case when m.te_reo != 0 then 1 else 0 end) as 'te_reo_markers',
  case when sum(mag.max_allocation) is null then 0 else sum(mag.max_allocation) end as 'max_allocations',
  sum(case when m.te_reo != 0 then mag.max_allocation else 0 end) as 'te_reo_max_allocations'
FROM ALLOCATION_GROUP ag,
     MARKER_ALLOCATION_GROUP mag,
	 MARKER m,
	 MARKER_PANEL_MEMBER mpm,
	 MARKER_PANEL_MEMBER_STATUS mpms,
	 MARKER_CATEGORY mc,
     MARKER_PANEL_ALLOCATION_GRP mpag
WHERE ag.allocation_group_id *= mpag.allocation_group_id
  AND mpag.marker_panel_ag_id *= mag.marker_panel_ag_id
  AND mpag.panel_id *= mpm.panel_id
  AND mag.panel_member_id *= mpm.panel_member_id
  AND mpm.marker_id *= m.marker_id
  AND mpm.mpm_status *= mpms.mpm_status
  AND mpm.marker_category *= mc.marker_category
  AND mpms.allocate_to != 0
  AND mc.allocate_to != 0
  GROUP BY ag.allocation_group_id
go
IF OBJECT_ID('dbo.VW_ALLOCATION_GROUP_MARKERS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ALLOCATION_GROUP_MARKERS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ALLOCATION_GROUP_MARKERS >>>'
go
GRANT SELECT ON dbo.VW_ALLOCATION_GROUP_MARKERS TO eqa_user
go
GRANT SELECT ON dbo.VW_ALLOCATION_GROUP_MARKERS TO read_only
go
GRANT SELECT ON dbo.VW_ALLOCATION_GROUP_MARKERS TO rma_users
go
CREATE VIEW dbo.VW_ALL_STANDARDS
AS
/*****************************************************
 * VW_ALL_STANDARDS - replicates web view W_ALL_STANDARDSS
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: VW_ALL_STANDARDS.sql,v 1.1 2007/06/15 03:25:17 antonyb Exp $
 * Author: Origainally Matt Watson (NZQA)
 *
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/VW_ALL_STANDARDS.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/

SELECT
    sv.std_id,
    sv.std_number,
    smv.title,
    s.std_type_code,
    s.std_status_code,
    sv.std_version_number,
    sv.std_version_status_code,
    smv.credits,
    smv.assessment_type_code,
    ISNULL(smv.subject_ref_number, 0) as subject_ref_number,
    l.level_code,
    l.level_number,
    sv.cfn_catg_id,
    c.cfn_catg_name,
    c.cfn_catg_name_alt_lang,
    g.std_group_id,
    g.std_group_name,
    g.std_group_name_alt_lang,
    std_expired =
      case
        when sv.std_expiry_date < getdate() then 1
        else 0
      end
FROM
    STD_VERSION            sv
    LEFT JOIN CFN_CATEGORY c
    ON  sv.cfn_catg_id    = c.cfn_catg_id and
        c.cfn_system_code = 'SQ'          and
        c.cfn_depth_code  = '03',
    STD_MINOR_VERSION     smv,
    LVL                   l,
    STD                   s
    LEFT JOIN (STD_GROUP_STD_MAPPING sgm
               JOIN STD_GROUP g
               ON     sgm.std_group_id = g.std_group_id and
                      g.std_group_type_code = 'NC')
         ON     s.std_id = sgm.std_id
WHERE
    s.std_number      = sv.std_number      and
    s.std_id          = sv.std_id          and
    s.std_status_code in ('02','04')       and -- Registered, Expiring
    sv.std_version_id = smv.std_version_id and
    smv.level_code    = l.level_code
go
IF OBJECT_ID('dbo.VW_ALL_STANDARDS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ALL_STANDARDS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ALL_STANDARDS >>>'
go
GRANT SELECT ON dbo.VW_ALL_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.VW_ALL_STANDARDS TO read_only
go
GRANT SELECT ON dbo.VW_ALL_STANDARDS TO rma_users
go
CREATE view dbo.VW_ARC_INPUT_BATCH_ERROR
as
-- Criteria for the candidate to be archived:
-- INPUT_BATCH_ERROR records for batches older than 2 years
-- set cutoff date to 1 Jan 2015 on Aug 2016

    
select 
    
    s.input_batch_error_id ,
    s.batch_ref ,  -- batch_input_id can be null
    s.standard_input_id
 
    from 	INPUT_BATCH_ERROR s 
  			
    where 
        
    exists
    (
	select 1 from BATCH_STATUS bs1, eqa_archive..tmp_archive_input_batch_error_control t
     	where s.batch_ref = bs1.batch_input_id
	--and bs1.date_created < '1 Jan 2011'
	--and bs1.date_created < '1 Jan 2013'
	and bs1.date_created < t.archived_date
	and bs1.active_ind = 1
	and bs1.date_created = ( select max(date_created) from BATCH_STATUS bs2 
					where bs1.batch_input_id = bs2.batch_input_id and bs2.active_ind = 1 )
 	
    	
    )
go
IF OBJECT_ID('dbo.VW_ARC_INPUT_BATCH_ERROR') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ARC_INPUT_BATCH_ERROR >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ARC_INPUT_BATCH_ERROR >>>'
go
GRANT SELECT ON dbo.VW_ARC_INPUT_BATCH_ERROR TO eqa_user
go
GRANT SELECT ON dbo.VW_ARC_INPUT_BATCH_ERROR TO read_only
go
GRANT SELECT ON dbo.VW_ARC_INPUT_BATCH_ERROR TO rma_users
go
CREATE view dbo.VW_ARC_STANDARD_INPUT
as
-- Criteria for the candidate to be archived:
-- 1. have no related INPUT_BATCH_ERROR rcord, 
-- 2. the latest status has to be of 'Cancelled','Completed', 'Processed', or 'Processed with errors'
-- 3. the latest status date is more than 90 days old
-- 7 Dec 2005 Add check for active_ind on BATCH_STATUS
    
select 
    
    s.standard_input_id  ,
    l.batch_input_id
     
    from 	STANDARD_INPUT s (index PK_STANDARD_INPUT),
    		LEARNER_INPUT l, 
		BATCH_INPUT b
		
    where 
        s.learner_input_id = l.learner_input_id
    and b.batch_input_id = l.batch_input_id
-- to get around the problem of having two batch_status with the same maximum date_created
    and exists
    (
	select 1 from BATCH_STATUS bs1
     	where b.batch_input_id = bs1.batch_input_id
     	and bs1.date_created < (select dateadd(dd,-90,getdate()))
    	and bs1.date_created = ( select max(date_created) from BATCH_STATUS bs2 
						where bs1.batch_input_id = bs2.batch_input_id and bs2.active_ind = 1 )
      and bs1.active_ind = 1
    	and bs1.batch_status_type_code in (100, 101,70, 71)
    )
    and not exists
    (select 1 from INPUT_BATCH_ERROR e
    where s.standard_input_id = e.standard_input_id)
go
IF OBJECT_ID('dbo.VW_ARC_STANDARD_INPUT') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ARC_STANDARD_INPUT >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ARC_STANDARD_INPUT >>>'
go
CREATE VIEW dbo.VW_ASSESSMENT AS
SELECT c.std_number, c.std_version_number, c.assessment_session_comp_id, c.assessment_session_id,
s.assessment_cycle_id, s.title, s.assessment_session_type, s.session_code,
s.schedule_type, s.assessment_start, s.assessment_end
FROM assessment_session_component c
INNER JOIN assessment_session s ON c.assessment_session_id = s.assessment_session_id
go
IF OBJECT_ID('dbo.VW_ASSESSMENT') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ASSESSMENT >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ASSESSMENT >>>'
go
GRANT SELECT ON dbo.VW_ASSESSMENT TO eqa_user
go
GRANT SELECT ON dbo.VW_ASSESSMENT TO read_only
go
GRANT SELECT ON dbo.VW_ASSESSMENT TO rma_users
go
CREATE VIEW dbo.VW_COMMON_QUALIFICATION
AS
/*****************************************************
 * VW_COMMON_QUALIFICATION
 * Returns Qualification details after joining with VW_ORGANISATION
 * and QFN_ORGANISATION_ROLE. This view was created prior to Contacts
 * and its use should be investigated. It is possible that it is no longer
 * required. It is used in eqa common code. 
 *
 * Copyright 2006 SolNet Solutions Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: vw_common_qualification.sql,v 1.1 2007/06/15 03:27:32 antonyb Exp $
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/qual/db/views/vw_common_qualification.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/
select    q.qfn_number as qfn_number, qmv.title as title, qmv.short_title
          as short_title, n.surname as developer_name,
          qv.qfn_version_status_date as last_changed_date
from      QFN q, QFN_VERSION qv, QFN_MINOR_VERSION qmv,
          QFN_ORGANISATION_ROLE qor, QFN_TYPE qt, PERORG_ROLE pr, NAME n
where     q.qfn_id = qor.qfn_id
          and qor.qfn_org_role_type = 'DEV'
          and qor.active_ind = 1
          and q.qfn_type_code = qt.qfn_type_code
          and q.latest_qfn_version_id = qv.qfn_version_id
          and qv.latest_qfn_minor_version_id = qmv.qfn_minor_version_id
          and pr.perorg_role_id = qor.perorg_role_id
          and pr.perorg_role_type_code in (3, 7, 12, 13) -- Provider, SSB, QAB, DEV
          and pr.perorg_id = n.perorg_id
          and n.active_ind = 1
          and n.preferred_ind = 1
go
IF OBJECT_ID('dbo.VW_COMMON_QUALIFICATION') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_COMMON_QUALIFICATION >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_COMMON_QUALIFICATION >>>'
go
GRANT SELECT ON dbo.VW_COMMON_QUALIFICATION TO eqa_user
go
GRANT SELECT ON dbo.VW_COMMON_QUALIFICATION TO read_only
go
GRANT SELECT ON dbo.VW_COMMON_QUALIFICATION TO rma_users
go
/*==============================================================*/
/* View: VW_ENTRY_PERS_MARKER                                   */
/*==============================================================*/
create view dbo.VW_ENTRY_PERS_MARKER as
SELECT ep.entry_id, ep.personalisation_run_id, mpm.assigned_marker_code, mcs.marker_suffix
      FROM ENTRY_PERSONALISATION ep,
		 PERSONALISATION_RUN pr,
         MARKER_ALLOCATION_GROUP mag,
		 MARKER_PANEL_MEMBER mpm,
		 MARKER_CODE_SUFFIX mcs
     WHERE pr.personalisation_run_id = ep.personalisation_run_id
	  and mcs.academic_year = pr.academic_year
	  AND mcs.std_number = ep.std_number
	  AND mcs.std_version_number = ep.std_version_number
      AND ep.marker_allocation_group_id = mag.marker_allocation_group_id
	  AND mag.panel_member_id = mpm.panel_member_id
	  and mcs.marker_code = mpm.assigned_marker_code
go
IF OBJECT_ID('dbo.VW_ENTRY_PERS_MARKER') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ENTRY_PERS_MARKER >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ENTRY_PERS_MARKER >>>'
go
GRANT SELECT ON dbo.VW_ENTRY_PERS_MARKER TO eqa_user
go
GRANT SELECT ON dbo.VW_ENTRY_PERS_MARKER TO read_only
go
GRANT SELECT ON dbo.VW_ENTRY_PERS_MARKER TO rma_users
go
create view dbo.VW_ENTRY_RECON
as
  select
      e.entry_id,
      e.std_number,
      e.academic_year,
      e.std_version_number,
      (select secondary_course_name from SECONDARY_COURSE sc where e.secondary_course_id = sc.secondary_course_id) 'course_name',
      case
        when sess.title like 'NCEA%'
          then right(sess.title,len(sess.title) - 8)
        when sess.title like 'Scholarship%'
          then right(sess.title,len(sess.title) - 12)
        else sess.title
      end 'group_name',
      l.level_number 'std_level',
      case
        when exists(select 1 from ASSESSMENT_SESSION_OVERRIDE sess_override
            where sess_override.assessment_session_id = sess.assessment_session_id  and schedule_type = 'PA' or sess.schedule_type = 'PA' )
          then 1
          else 0
      end 'visual_arts',
      case
        when exists( select 1 from DIGITAL_ENTRY de, RESULT r
            where de.entry_id = e.entry_id and de.withdrawn != 1 and r.entry_id = de.entry_id and r.withdrawn != 1 and (r.assessment_method = 'DE' or r.assessment_method = 'DS')
            )
            then 1
            else 0
      end 'digital_result',
      e.reconsideration_status,
	  sess.assessment_session_type,
	  sess.schedule_type
      from ENTRY e
          join STD s on s.std_number = e.std_number
          join STD_VERSION sv on sv.std_version_id = s.latest_std_version_id
          join STD_MINOR_VERSION smv on smv.std_version_id = sv.std_version_id
          join LVL l on l.level_code = smv.level_code
          join ASSESSMENT_SESSION_COMPONENT comp on comp.std_number = e.std_number
                and comp.std_version_number = e.std_version_number
                and comp.academic_year = e.academic_year
          join ASSESSMENT_SESSION sess on sess.assessment_session_id = comp.assessment_session_id
                and sess.assessment_cycle_id = e.academic_year
go
IF OBJECT_ID('dbo.VW_ENTRY_RECON') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ENTRY_RECON >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ENTRY_RECON >>>'
go
GRANT SELECT ON dbo.VW_ENTRY_RECON TO eqa_user
go
GRANT SELECT ON dbo.VW_ENTRY_RECON TO read_only
go
GRANT SELECT ON dbo.VW_ENTRY_RECON TO rma_users
go
CREATE VIEW dbo.VW_EXAMS_ENTRY AS 
/*****************************************************
 * VW_EXAMS_ENTRY
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: proc_examViewEntry.sql,v 1.1 2012/02/20 22:01:41 pault Exp $
 * Author:
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/proc_examViewEntry.sql,v $
 * Author:  $Author: pault $
 *************************************************/

SELECT  e.entry_id as 'entry_id' 
       ,e.enrolment_id as 'enrolment_id' 
       ,le.learner_id as 'learner_id' 
       ,e.provider_id as 'home_provider_id' 
       ,e.study_provider_id as 'allocation_provider_id' 
       ,e.exam_centre_id as 'exam_centre_id' 
       ,lac.exam_code as 'exam_code' 
       ,assess.session_code as 'session_code' 
       ,e.std_number as 'std_number' 
       ,e.std_version_number as 'std_version_number' 
       ,e.marker_allocation_group_id as 'marker_allocation_group_id' 
       ,e.next_marker_ag_id as 'next_marker_ag_id' 
       ,e.allocation_run_id as 'allocation_run_id' 
       ,isnull(e.answer_in_maori_ind, 0) | isnull(e.te_reo_paper, 0) as 'is_te_reo' 
       ,e.entry_status as 'is_withdrawn' 
       ,le.academic_year as 'academic_year'
	   ,comp.allocation_group_id 
       ,p.excluded_marker_allocation | ac.excluded_marker_allocation as 'excluded_marker_allocation' 
       ,p.excluded_marker_allocation as 'excluded_home_school' 
       ,ac.excluded_marker_allocation as 'excluded_exam_centre' 
       ,ac.assessment_centre_type AS 'assessment_centre_type' 
       ,assess.schedule_type AS 'schedule_type'
FROM  ENTRY e 
     ,LEARNER_ENROLMENT le 
     ,ASSESSMENT_SESSION_COMPONENT comp 
     ,ASSESSMENT_SESSION assess 
     ,LEARNER_ASSESSMENT_CENTRE lac 
     ,ASSESSMENT_CENTRE ac 
     ,PROVIDER p 
WHERE e.enrolment_id = le.enrolment_id 
AND le.academic_year = assess.assessment_cycle_id 
AND assess.assessment_session_id = comp.assessment_session_id 
AND e.std_number = comp.std_number 
AND e.std_version_number = comp.std_version_number 
AND le.learner_id *= lac.learner_id 
AND e.exam_centre_id *= lac.provider_id 
AND e.exam_centre_location *= lac.location 
AND le.academic_year *= lac.academic_year 
AND p.moe_provider_id  = e.provider_id 
AND p.location         = e.location 
AND ac.moe_provider_id = e.exam_centre_id
AND ac.location        = e.exam_centre_location
go
IF OBJECT_ID('dbo.VW_EXAMS_ENTRY') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_EXAMS_ENTRY >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_EXAMS_ENTRY >>>'
go
GRANT SELECT ON dbo.VW_EXAMS_ENTRY TO eqa_user
go
GRANT SELECT ON dbo.VW_EXAMS_ENTRY TO read_only
go
GRANT SELECT ON dbo.VW_EXAMS_ENTRY TO rma_users
go
create view dbo.VW_EXAM_CENTRE as
select ac.moe_provider_id as exam_centre_id,
       ac.location as location,
       n.surname as exam_centre_name
from   ASSESSMENT_CENTRE ac,
       PERORG_ROLE por,
       NAME n
where  ac.assessment_centre_id = por.perorg_role_id and
       por.perorg_id = n.perorg_id and
       n.preferred_ind = 1
go
IF OBJECT_ID('dbo.VW_EXAM_CENTRE') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_EXAM_CENTRE >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_EXAM_CENTRE >>>'
go
GRANT SELECT ON dbo.VW_EXAM_CENTRE TO eqa_user
go
GRANT SELECT ON dbo.VW_EXAM_CENTRE TO read_only
go
GRANT SELECT ON dbo.VW_EXAM_CENTRE TO rma_users
go
create view dbo.VW_EXAM_STANDARD as
select  std_number,
        std_version_number,
        title
from    STD_VERSION sv,
        STD_MINOR_VERSION smv
where   sv.latest_std_minor_version_id = smv.std_minor_version_id
        and smv.assessment_type_code = 'EX'
go
IF OBJECT_ID('dbo.VW_EXAM_STANDARD') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_EXAM_STANDARD >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_EXAM_STANDARD >>>'
go
GRANT SELECT ON dbo.VW_EXAM_STANDARD TO eqa_user
go
GRANT SELECT ON dbo.VW_EXAM_STANDARD TO read_only
go
GRANT SELECT ON dbo.VW_EXAM_STANDARD TO rma_users
go
CREATE VIEW dbo.VW_INPUT_BATCH_ERROR_LOADED
as

    select s.input_batch_error_id        ,
    getdate() as archived_date,
    batch_ref,
    s.batch_input_id,
    s.learner_input_id,
    s.standard_input_id,
    batch_error_code,
    value_0,
    value_1,
    value_2,
    version_id,
    mark_input_id,
    severity_code,
    secondary_course_input_id
   
    from eqa_archive..tmp_delete_input_batch_error t , INPUT_BATCH_ERROR s
    where 
    t.input_batch_error_id = s.input_batch_error_id
go
IF OBJECT_ID('dbo.VW_INPUT_BATCH_ERROR_LOADED') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_INPUT_BATCH_ERROR_LOADED >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_INPUT_BATCH_ERROR_LOADED >>>'
go
GRANT SELECT ON dbo.VW_INPUT_BATCH_ERROR_LOADED TO eqa_user
go
GRANT SELECT ON dbo.VW_INPUT_BATCH_ERROR_LOADED TO read_only
go
GRANT SELECT ON dbo.VW_INPUT_BATCH_ERROR_LOADED TO rma_users
go
CREATE VIEW dbo.VW_IRN_CANDIDATES 
AS
    SELECT NSI, school_code, first_name, candidate_surname,
			address_line_1,address_line_2,address_line_3,address_line_4,
			post_code,learner_id,inserts,paid_code
      FROM  tempdb.guest.IRN_CANDIDATES
go
IF OBJECT_ID('dbo.VW_IRN_CANDIDATES') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_IRN_CANDIDATES >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_IRN_CANDIDATES >>>'
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES TO read_only
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES TO rma_users
go
CREATE VIEW dbo.VW_IRN_CANDIDATES_GRADE_AVG 
AS
    SELECT learner_id, subject_group_code, grade_average, level_code
         FROM  tempdb.guest.IRN_CANDIDATES_GRADE_AVG
go
IF OBJECT_ID('dbo.VW_IRN_CANDIDATES_GRADE_AVG') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_IRN_CANDIDATES_GRADE_AVG >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_IRN_CANDIDATES_GRADE_AVG >>>'
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES_GRADE_AVG TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES_GRADE_AVG TO read_only
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES_GRADE_AVG TO rma_users
go
CREATE VIEW dbo.VW_IRN_QUALIFICATIONS 
AS
    SELECT learner_id,level_one_achieved,level_one_total_credits,
         level_one_literacy_credits,level_one_numeracy_credits,
          level_two_achieved,level_three_achieved,
         university_entrance_achieved
         --,scholarship_achieved
         FROM  tempdb.guest.IRN_CANDIDATES
go
IF OBJECT_ID('dbo.VW_IRN_QUALIFICATIONS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_IRN_QUALIFICATIONS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_IRN_QUALIFICATIONS >>>'
go
GRANT SELECT ON dbo.VW_IRN_QUALIFICATIONS TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_QUALIFICATIONS TO read_only
go
GRANT SELECT ON dbo.VW_IRN_QUALIFICATIONS TO rma_users
go
CREATE VIEW dbo.VW_IRN_RESULTS 
AS
    SELECT learner_id,std_number,version_num,
         level_code,subject_group_code, result, 
         compassionate, unaccredited_flag
         FROM  tempdb.guest.IRN_RESULTS
go
IF OBJECT_ID('dbo.VW_IRN_RESULTS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_IRN_RESULTS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_IRN_RESULTS >>>'
go
GRANT SELECT ON dbo.VW_IRN_RESULTS TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_RESULTS TO read_only
go
GRANT SELECT ON dbo.VW_IRN_RESULTS TO rma_users
go
CREATE VIEW dbo.VW_IRN_SCHOOL_EXCLUDES 
AS
    select distinct provider_id
    from PROVIDER_IA_RESULT  
    where academic_year =  '2004'
	and internal_assmt_verified_ind = 0
go
IF OBJECT_ID('dbo.VW_IRN_SCHOOL_EXCLUDES') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_IRN_SCHOOL_EXCLUDES >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_IRN_SCHOOL_EXCLUDES >>>'
go
GRANT SELECT ON dbo.VW_IRN_SCHOOL_EXCLUDES TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_SCHOOL_EXCLUDES TO read_only
go
GRANT SELECT ON dbo.VW_IRN_SCHOOL_EXCLUDES TO rma_users
go
CREATE VIEW dbo.VW_IRN_STANDARDS 
AS
    SELECT std_number,title, subject_group_code,
        subject_group, 
         level_code 
         ,version_num
         ,internal_external, credits
         ,held
         ,reconsideration_code
         FROM  tempdb.guest.IRN_STANDARDS
go
IF OBJECT_ID('dbo.VW_IRN_STANDARDS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_IRN_STANDARDS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_IRN_STANDARDS >>>'
go
GRANT SELECT ON dbo.VW_IRN_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_STANDARDS TO read_only
go
GRANT SELECT ON dbo.VW_IRN_STANDARDS TO rma_users
go
CREATE VIEW dbo.VW_LEARNERS
AS
/*****************************************************
 * VW_LEARNERS - replicates web view W_LEARNERS
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: VW_LEARNERS.sql,v 1.1 2007/06/15 03:25:17 antonyb Exp $
 * Author: Origainally Matt Watson (NZQA)
 *
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/VW_LEARNERS.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/

SELECT
    p.perorg_id,
    p.gender_code,
    p.dob,
    l.learner_id,
    l.nsn,
    n.surname,
    n.name1,
    n.name2,
    n.name3,
    n.title,
    c.addr_1,
    c.addr_2,
    c.addr_3,
    c.addr_4,
    c.e_addr,
    c.phone_num,
    e.ethnicity_id

FROM
    PERORG      p,
    PERORG_ROLE r,
    LEARNER     l,
    name        n,
    COM_METHOD  c,
    ETHNICITY   e
WHERE
    p.perorg_id        = r.perorg_id    AND
    r.perorg_role_id   = l.learner_id   AND
    p.perorg_id        = n.perorg_id    AND
    p.perorg_id        = c.perorg_id    AND
    p.perorg_id        = e.perorg_id    AND
    p.perorg_type_code ='P'             AND
    p.active_ind       = 1              AND
    n.preferred_ind    = 1              AND
    n.active_ind       = 1
go
IF OBJECT_ID('dbo.VW_LEARNERS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_LEARNERS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_LEARNERS >>>'
go
GRANT SELECT ON dbo.VW_LEARNERS TO eqa_user
go
GRANT SELECT ON dbo.VW_LEARNERS TO read_only
go
GRANT SELECT ON dbo.VW_LEARNERS TO rma_users
go
CREATE VIEW dbo.VW_MARKERS
AS

/*****************************************************
 * VW_MARKERS - replicates web view W_MARKERS
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: VW_MARKERS.sql,v 1.1 2007/06/15 03:25:17 antonyb Exp $
 * Author: Origainally Matt Watson (NZQA)
 *
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/VW_MARKERS.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/

SELECT
    pr.perorg_id,
    m.marker_id,
    m.return_type,
    rt.return_type_desc,
    m.te_reo,
    m.current_teaching_position,
    m.years_experience_nz,
    m.years_experience_overseas,
    m.oe_country_code,
    c.country_name                as oe_country_name,
    m.referee_name,
    m.referee_position,
    m.referee_contact_phone,
    m.teaching_experience,
    m.standards_experience,
    m.prof_working_relationships,
    m.relevant_abilities,
    m.region_code,
    r.region_desc,
    m.perorg_role_id,
    m.assigned_marker_code,
    m.actual_marker_id,
    m.moe_provider_id,
    m.location,
    m.marker_submission_status
FROM
    MARKER      m,
    PERORG_ROLE pr,
    RETURN_TYPE rt,
    COUNTRY_CODE     c,
    REGION      r
WHERE
    m.perorg_role_id         = pr.perorg_role_id     and
    pr.perorg_role_type_code = 2                     and
    (pr.end_date is null or pr.end_date > getDate()) and
    pr.start_date <= getDate()                       and
    pr.active_ind            = 1                     and
    m.return_type           *= rt.return_type        and
    m.oe_country_code       *= c.country_short_code  and
    m.region_code           *= r.region_code
go
IF OBJECT_ID('dbo.VW_MARKERS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_MARKERS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_MARKERS >>>'
go
GRANT SELECT ON dbo.VW_MARKERS TO eqa_user
go
GRANT SELECT ON dbo.VW_MARKERS TO read_only
go
GRANT SELECT ON dbo.VW_MARKERS TO rma_users
go
CREATE VIEW dbo.VW_MARKER_ALLOCATION_GROUP
AS
/*****************************************************
 * VW_MARKER_ALLOCATION_GROUP
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: proc_examViewMarkerAllocationGroup.sql,v 1.1 2012/02/20 22:01:41 pault Exp $
 * Author:
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/proc_examViewMarkerAllocationGroup.sql,v $
 * Author:  $Author: pault $
 *************************************************/

SELECT mag.marker_allocation_group_id as 'marker_allocation_group_id',
       mpag.allocation_group_id as 'allocation_group_id',
  	   mpm.marker_id as 'marker_id',
 	   mc.marker_category as 'marker_category',
	   mc.marker_category_desc as 'marker_category_name',
	   case when mpm.marker_id is not null then n.name1 + ' ' + n.surname else null end as 'marker_name',
	   m.assigned_marker_code as 'marker_code',
	   mp.panel_id as 'panel_id',
	   mp.panel_name as 'panel_name',
     mag.max_allocation as 'max_allocation',
	   count(fp.provider_id) as 'forbidden_providers',
	   case when mpm.marker_id is not null then m.te_reo else 0 end as 'is_te_reo',
	   mpms.mpm_status as 'mpm_status',
	   mpms.mpm_status_descr as 'mpm_status_desc'
FROM MARKER_ALLOCATION_GROUP mag,
	 MARKER_PANEL_MEMBER mpm,
	 MARKER_PANEL mp,
	 MARKER_PANEL_MEMBER_STATUS mpms,
  	 FORBIDDEN_PROVIDER fp,
	 MARKER_CATEGORY mc,
     MARKER_PANEL_ALLOCATION_GRP mpag,
     MARKER m,
	 PERORG_ROLE por,
	 NAME n
WHERE mag.panel_member_id = mpm.panel_member_id
  AND mag.marker_panel_ag_id = mpag.marker_panel_ag_id
  AND mpm.marker_id *= m.marker_id
  AND m.marker_id *= fp.marker_id
  AND mpm.mpm_status = mpms.mpm_status
  AND mpm.marker_category = mc.marker_category
  AND m.marker_id *= por.perorg_role_id
  AND por.perorg_id *= n.perorg_id
  AND mpm.panel_id = mp.panel_id
  AND mpms.allocate_to = 1
  AND mc.allocate_to = 1
  AND n.preferred_ind = 1
GROUP BY mag.marker_allocation_group_id,
         mpag.marker_panel_ag_id,      
	    m.marker_id,
	    mpm.panel_member_id,
	    mpms.mpm_status,
	    mc.marker_category,
	    n.name_id,
	    por.perorg_role_id,
	    mp.panel_id
go
IF OBJECT_ID('dbo.VW_MARKER_ALLOCATION_GROUP') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_MARKER_ALLOCATION_GROUP >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_MARKER_ALLOCATION_GROUP >>>'
go
GRANT SELECT ON dbo.VW_MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT SELECT ON dbo.VW_MARKER_ALLOCATION_GROUP TO read_only
go
GRANT SELECT ON dbo.VW_MARKER_ALLOCATION_GROUP TO rma_users
go
create view dbo.VW_OPTIONAL_STRANDS as
--
-- Copyright 2005 SolNet Solutions Limited and New Zealand
-- Qualifications Authority.  All rights reserved.
--
-- Version: $Revision: 1.1 $
-- Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/sper/db/views/VW_OPTIONAL_STRANDS.sql,v $
--Author:  $Author: pault $
--
select q.qfn_number,
      qv.qfn_version_number,
      qs.strand_number,
      qs.qfn_section_type_code,
      qs.section_title_umlauts as section_title,
      qs.level_code
from QFN q,
    QFN_VERSION qv,
    QFN_MINOR_VERSION qmv,
    QFN_SECTION qs,
    QFN_SECTION_TYPE qst
where qv.qfn_id = q.qfn_id
and qmv.qfn_minor_version_id = qv.latest_qfn_minor_version_id
and qs.rules_group_id = qmv.current_rules_group_id
and qst.section_type_code = qs.qfn_section_type_code
and qst.is_optional = 1
go
IF OBJECT_ID('dbo.VW_OPTIONAL_STRANDS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_OPTIONAL_STRANDS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_OPTIONAL_STRANDS >>>'
go
GRANT SELECT ON dbo.VW_OPTIONAL_STRANDS TO eqa_user
go
GRANT SELECT ON dbo.VW_OPTIONAL_STRANDS TO read_only
go
GRANT SELECT ON dbo.VW_OPTIONAL_STRANDS TO rma_users
go
CREATE VIEW dbo.VW_ORGANISATION
AS
/*****************************************************
 * VW_ORGANISATION - replicates web view VW_ORGANISATION
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: vw_organisation.sql,v 1.1 2007/06/15 03:27:32 antonyb Exp $
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/qual/db/views/vw_organisation.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/

select
    'organisation_id' = pr.perorg_role_id
  , 'perorg_id' = pr.perorg_id
  , 'resman_client_id' = convert(numeric(12), pars.altid_value1)
  , 'master_client_id' = pr.perorg_role_id
  , 'moe_provider_id' = convert(numeric(12), pamo.altid_value1)
  , 'location' = p.location
  , 'location_name' = convert(varchar(40), p.location_name)
  , 'organisation_name' = n.surname
  , 'organisation_type' =
          case
            -- providers
            when pr.perorg_role_type_code = 3 and p.provider_type_code = 'COE' then 'COLLED'
            when pr.perorg_role_type_code = 3 and p.provider_type_code = 'POL' then 'POLLY'
            when pr.perorg_role_type_code = 3 and p.provider_type_code = 'SCH' then 'SCHOOL'
            when pr.perorg_role_type_code = 3 and p.provider_type_code = 'UNI' then 'UNIV'
            when pr.perorg_role_type_code = 3 and p.provider_type_code = 'WANA' then 'WANA'
            -- QAB
            when pr.perorg_role_type_code = 12 then 'QAB'
            -- developers
            when pr.perorg_role_type_code = 13 then 'DEV'
            else convert(varchar(40), pr.perorg_role_type_code)
          end
  , 'postal_address1' = po.addr_1
  , 'postal_address2' = po.addr_2
  , 'postal_address3' = po.addr_3
  , 'postal_address4' = po.addr_4
  , 'street_address1' = st.addr_1
  , 'street_address2' = st.addr_2
  , 'street_address3' = st.addr_3
  , 'street_address4' = st.addr_4
  , 'phone' =
        case
          when phone.phone_area_code is not null and phone.phone_area_code != ''
                  then '(' + phone.phone_area_code + ')' + phone.phone_num
          else phone.phone_num
        end
  , 'fax' =
        case
          when fax.phone_area_code is not null and fax.phone_area_code != ''
                then '(' + fax.phone_area_code + ')' + fax.phone_num
          else fax.phone_num
        end
  , 'other_phone_num' =
        case
          when other.phone_area_code is not null and other.phone_area_code != ''
                then '(' + other.phone_area_code + ')' + other.phone_num
          else other.phone_num
        end
  , 'email_address' = email.e_addr
  , 'web_url' = www.e_addr
from
  PERORG_ROLE pr -- preserved table for the following outer joins
  left join COM_METHOD po on
            pr.perorg_id = po.perorg_id
        and po.active_ind = 1
        and po.com_type_code = 'PO' -- Postal
        and po.com_medium_code = 'AD' -- Address
        and po.preferred_medium_ind = 1
  left join COM_METHOD st on
            pr.perorg_id = st.perorg_id
        and st.active_ind = 1
        and st.com_type_code = 'ST' -- Street
        and st.com_medium_code = 'AD' -- Address
  left join COM_METHOD phone on
            pr.perorg_id = phone.perorg_id
        and phone.active_ind = 1
        and phone.com_type_code = 'WO' -- Work
        and phone.com_medium_code = 'PH' -- Phone
  left join COM_METHOD fax on
            pr.perorg_id = fax.perorg_id
        and fax.active_ind = 1
        and fax.com_type_code = 'WO' -- Work
        and fax.com_medium_code = 'FX' -- Fax
  left join COM_METHOD other on
            pr.perorg_id = other.perorg_id
        and other.active_ind = 1
        and other.com_type_code = 'AL' -- Alternative
        and other.com_medium_code = 'PH' -- Phone
  left join COM_METHOD email on
            pr.perorg_id = email.perorg_id
        and email.active_ind = 1
        and email.com_type_code = 'WO' -- Work
        and email.com_medium_code = 'EM' -- email
  left join COM_METHOD www on
            pr.perorg_id = www.perorg_id
        and www.active_ind = 1
        and www.com_type_code = 'WO' -- Work
        and www.com_medium_code = 'WW' -- www
  left join PERORG_ALT_ID pars on
            pr.perorg_id = pars.perorg_id
        and pars.altid_type_code = 'RS' -- Old Resman client id
  left join PERORG_ALT_ID pamo on
            pr.perorg_id = pamo.perorg_id
        and pamo.altid_type_code = 'MO' -- MOE ID]
  left join PERORG_ROLE pr2 on
            pr.perorg_id = pr2.perorg_id and pr2.perorg_role_type_code = 3
  left join PROVIDER p on
            pr2.perorg_role_id = p.provider_id,
  NAME n
where
    pr.perorg_id = n.perorg_id
and pr.perorg_role_type_code in (3, 12, 13) -- Provider/QAB/DEV
-- and n.name_type_code = 'FO' -- formal -- this condition commented out for QUA-2117
and n.preferred_ind = 1
and n.active_ind = 1
go
IF OBJECT_ID('dbo.VW_ORGANISATION') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_ORGANISATION >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_ORGANISATION >>>'
go
GRANT SELECT ON dbo.VW_ORGANISATION TO eqa_user
go
GRANT SELECT ON dbo.VW_ORGANISATION TO read_only
go
GRANT SELECT ON dbo.VW_ORGANISATION TO rma_users
go
CREATE VIEW dbo.VW_PEOPLE
AS
/*****************************************************
 * VW_PEOPLE - replicates web view W_PEOPLE
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: VW_PEOPLE.sql,v 1.1 2007/06/15 03:25:17 antonyb Exp $
 * Author: Origainally Matt Watson (NZQA)
 *
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/VW_PEOPLE.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/


SELECT
    p.perorg_id,
    n.title,
    n.name1,
    n.name2,
    n.name3,
    n.surname,
    p.dob,
    p.ird_number,
    p.gender_code
FROM
    PERORG p,
    NAME   n
WHERE
    p.perorg_type_code = 'P'         and
    p.is_learner       = 0           and
    p.perorg_id        = n.perorg_id and
    p.perorg_status    = 'AC'        and
    n.preferred_ind    = 1           and
    n.active_ind       = 1
go
IF OBJECT_ID('dbo.VW_PEOPLE') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_PEOPLE >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_PEOPLE >>>'
go
GRANT SELECT ON dbo.VW_PEOPLE TO eqa_user
go
GRANT SELECT ON dbo.VW_PEOPLE TO read_only
go
GRANT SELECT ON dbo.VW_PEOPLE TO rma_users
go
CREATE VIEW dbo.VW_PERSONALISATION_LATEST (entry_id, personalisation_run_id) 
AS 
/**
 * View showing the highest personalisation run id for an  
 * entry for an academic year
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 * 
 * $Id: proc_examViewPersonalisationLatest.sql,v 1.1 2012/02/20 22:01:41 pault Exp $
 * Author: iroberts, 4 July 2003
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/proc_examViewPersonalisationLatest.sql,v $
 * Author:  $Author: pault $
 */

SELECT entry_id, max(personalisation_run_id)
FROM entry_personalisation
GROUP BY entry_id
go
IF OBJECT_ID('dbo.VW_PERSONALISATION_LATEST') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_PERSONALISATION_LATEST >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_PERSONALISATION_LATEST >>>'
go
GRANT SELECT ON dbo.VW_PERSONALISATION_LATEST TO eqa_user
go
GRANT SELECT ON dbo.VW_PERSONALISATION_LATEST TO read_only
go
GRANT SELECT ON dbo.VW_PERSONALISATION_LATEST TO rma_users
go
CREATE VIEW dbo.VW_PROVIDERS
AS
/*****************************************************
 * VW_PROVIDERS - replicates web view W_PROVIDERS
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: VW_PROVIDERS.sql,v 1.1 2007/06/15 03:25:17 antonyb Exp $
 * Author: Origainally Matt Watson (NZQA)
 *
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/exams/db/views/VW_PROVIDERS.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/


SELECT
    p.provider_id,
    p.moe_provider_id,
    p.location,
    p.provider_type_code,
    pt.provider_type_desc,
    pr.perorg_id,
    n.surname             as name
FROM
    PROVIDER      p,
    PROVIDER_TYPE pt,
    PERORG_ROLE   pr,
    PERORG        per,
    NAME          n
WHERE
    p.provider_id            = pr.perorg_role_id     and
    pt.provider_type_code    = p.provider_type_code  and
    pr.perorg_role_type_code = 3                     and
    pr.perorg_id             = per.perorg_id         and
    pr.active_ind            = 1                     and
    (pr.end_date is null or pr.end_date > getDate()) and
    pr.start_date <= getDate()                       and
    per.perorg_type_code     = 'O'                   and
    per.perorg_status        = 'AC'                  and
    per.active_ind           = 1                     and
    per.perorg_id            = n.perorg_id           and
    n.preferred_ind          = 1                     and
    n.active_ind             = 1
go
IF OBJECT_ID('dbo.VW_PROVIDERS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_PROVIDERS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_PROVIDERS >>>'
go
GRANT SELECT ON dbo.VW_PROVIDERS TO eqa_user
go
GRANT SELECT ON dbo.VW_PROVIDERS TO read_only
go
GRANT SELECT ON dbo.VW_PROVIDERS TO rma_users
go
CREATE VIEW dbo.VW_QFN_ACHIEVED
AS
/*****************************************************
 * VW_QFN_ACHIEVED
 * Contains the contact for defined relationship 
 *
 * Copyright 2006 SolNet Solutions Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: vw_qfn_achieved.sql,v 1.1 2007/06/15 03:27:32 antonyb Exp $
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/qual/db/views/vw_qfn_achieved.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/

select qa.qfn_number, qa.qfn_version_number, qa.strand_number, qsa.optional_strand_number
from QFN_ACHIEVED qa, QFN_SECTION_ACHIEVED qsa
where qa.qfn_achieved_id *= qsa.qfn_achieved_id
go
IF OBJECT_ID('dbo.VW_QFN_ACHIEVED') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_QFN_ACHIEVED >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_QFN_ACHIEVED >>>'
go
GRANT SELECT ON dbo.VW_QFN_ACHIEVED TO eqa_user
go
GRANT SELECT ON dbo.VW_QFN_ACHIEVED TO read_only
go
GRANT SELECT ON dbo.VW_QFN_ACHIEVED TO rma_users
go
create view dbo.VW_QUALIFICATIONS as
select       q.qfn_number,
             qv.qfn_version_number,
             qmv.short_title,
             qv.ssb_perorg_role_id as ssb_perorg_role_id,
             qv.qfn_version_status_code
from     QFN q,
         QFN_VERSION qv,
         QFN_MINOR_VERSION qmv
where   qv.qfn_id = q.qfn_id
and     qmv.qfn_minor_version_id = qv.latest_qfn_minor_version_id
go
IF OBJECT_ID('dbo.VW_QUALIFICATIONS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_QUALIFICATIONS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_QUALIFICATIONS >>>'
go
GRANT SELECT ON dbo.VW_QUALIFICATIONS TO eqa_user
go
GRANT SELECT ON dbo.VW_QUALIFICATIONS TO read_only
go
GRANT SELECT ON dbo.VW_QUALIFICATIONS TO rma_users
go
CREATE VIEW dbo.VW_QUAL_CHECK_RESULT_IQ
as
    select
    qual_request_id   ,
    convert(varbinary(16380),summary_report) as summary_report,
    qual_check_result,
    audit_tran_id,
    ts
    from QUAL_CHECK_RESULT
go
IF OBJECT_ID('dbo.VW_QUAL_CHECK_RESULT_IQ') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_QUAL_CHECK_RESULT_IQ >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_QUAL_CHECK_RESULT_IQ >>>'
go
GRANT SELECT ON dbo.VW_QUAL_CHECK_RESULT_IQ TO eqa_user
go
GRANT SELECT ON dbo.VW_QUAL_CHECK_RESULT_IQ TO read_only
go
GRANT SELECT ON dbo.VW_QUAL_CHECK_RESULT_IQ TO rma_users
go
create view dbo.VW_QUAL_STRANDS as
--
-- Copyright 2005 SolNet Solutions Limited and New Zealand
-- Qualifications Authority.  All rights reserved.
--
-- Version: $Revision: 1.1 $
-- Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/sper/db/views/VW_QUAL_STRANDS.sql,v $
--Author:  $Author: pault $
--
select q.qfn_number,
            qv.qfn_version_number,
            qmv.short_title_umlauts as short_title,
            qv.ssb_perorg_role_id as ssb_perorg_role_id,
            qs.strand_number,
            qs.qfn_section_type_code,
            qs.section_title_umlauts as section_title,
            qs.level_code,
            q.qfn_type_code,
            qmv.title_show_level
from QFN q,
        QFN_VERSION qv,
        QFN_MINOR_VERSION qmv,
        QFN_SECTION qs
where qv.qfn_id = q.qfn_id
and qmv.qfn_minor_version_id = qv.latest_qfn_minor_version_id
and qs.rules_group_id = qmv.current_rules_group_id
and (qs.qfn_section_type_code = 'EL'
        or
        (qs.qfn_section_type_code = 'CR'
         and not exists (select 1 from qfn_section
                         where rules_group_id = qs.rules_group_id
                         and qfn_section_type_code = 'EL')
        )
       )
go
IF OBJECT_ID('dbo.VW_QUAL_STRANDS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_QUAL_STRANDS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_QUAL_STRANDS >>>'
go
GRANT SELECT ON dbo.VW_QUAL_STRANDS TO eqa_user
go
GRANT SELECT ON dbo.VW_QUAL_STRANDS TO read_only
go
GRANT SELECT ON dbo.VW_QUAL_STRANDS TO rma_users
go
CREATE VIEW dbo.VW_RELATIONSHIP_CONTACT
AS
/*****************************************************
 * VW_RELATIONSHIP_CONTACT 
 * Contains the contact for defined relationship 
 *
 * Copyright 2003 SolNet Limited and New Zealand
 * Qualifications Authority.  All rights reserved.
 *
 * $Id: vw_relationship_contact.sql,v 1.1 2007/06/15 03:27:32 antonyb Exp $
 *
 * Version: $Revision: 1.1 $
 * Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/qual/db/views/vw_relationship_contact.sql,v $
 * Author:  $Author: antonyb $
 *************************************************/

select
    'rel_id' = rel.rel_id
  , 'rel_type_code' = rel.rel_type_code 
  , 'rel_active_ind' = rel.rel_active_ind
  , 'rel_start_date' = rel.rel_start_date
  , 'rel_end_date' = rel.rel_end_date
  , 'perorg_id' =
        case
          when po1.perorg_type_code = 'P'
            then po1.perorg_id
          else po2.perorg_id
        end
  , 'is_learner' =
        case
          when po1.perorg_type_code = 'P'
            then po1.is_learner
          else po2.is_learner
        end
  , 'contact_surname' =
        case
          when po1.perorg_type_code = 'P'
            then n1.surname
          else n2.surname
        end
  , 'contact_name1' =
        case
          when po1.perorg_type_code = 'P'
            then n1.name1
          else n2.name1
        end
from
  RELATIONSHIP rel, PERORG po1, PERORG po2, name n1, name n2
where
    rel.perorg_id = po1.perorg_id
and po1.perorg_id = n1.perorg_id
and po2.perorg_id = n2.perorg_id
and (po1.perorg_type_code = 'P' or po2.perorg_type_code = 'P')
and n1.name_type_code = 'FO' -- formal
and n1.preferred_ind = 1
and n1.active_ind = 1 
and rel.related_perorg_id = po2.perorg_id
and n2.name_type_code = 'FO' -- formal
and n2.preferred_ind = 1
and n2.active_ind = 1
go
IF OBJECT_ID('dbo.VW_RELATIONSHIP_CONTACT') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RELATIONSHIP_CONTACT >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RELATIONSHIP_CONTACT >>>'
go
GRANT SELECT ON dbo.VW_RELATIONSHIP_CONTACT TO eqa_user
go
GRANT SELECT ON dbo.VW_RELATIONSHIP_CONTACT TO read_only
go
GRANT SELECT ON dbo.VW_RELATIONSHIP_CONTACT TO rma_users
go
create view dbo.VW_RESMAN_COM_METHOD as
SELECT
	cm.com_method_id,
	cm.perorg_id,
	cm.com_type_code,
	cm.com_medium_code,
	cm.merge_request_number,
	cm.preferred_ind,
	cm.effective_from_date,
	cm.effective_to_date,
	cm.active_ind,
	cm.addr_1,
	cm.addr_2,
	cm.addr_3,
	cm.addr_4,
	cm.post_code,
	cm.country,
	cm.stop_mail_indicator,
	cm.overseas_ind,
	cm.preferred_address,
	cm.phone_num,
	cm.e_addr,
	cm.created_by,
	cm.audit_tran_id,
	cm.ts,
	cm.phone_extension,
	cm.batch_input_id,
	cm.preferred_medium_ind,
	cm.original_reference_id,
	cm.perorg_role_id,
	cm.phone_country_code,
	cm.phone_area_code,
	cm.rel_id,
	cm.comments
 FROM   COM_METHOD cm,
        PERORG p
 WHERE  cm.perorg_id = p.perorg_id
 AND    p.perorg_type_code = "O"
 AND    cm.active_ind = 1
go
IF OBJECT_ID('dbo.VW_RESMAN_COM_METHOD') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RESMAN_COM_METHOD >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RESMAN_COM_METHOD >>>'
go
GRANT SELECT ON dbo.VW_RESMAN_COM_METHOD TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_COM_METHOD TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_COM_METHOD TO rma_users
go
create view dbo.VW_RESMAN_NAME as
SELECT
	n.name_id,
	n.perorg_id,
	n.name_type_code,
	n.preferred_ind,
	n.surname,
	n.name1,
	n.name2,
	n.name3,
	n.title,
	n.audit_tran_id,
	n.ts,
	n.merge_request_number,
	n.original_reference_id,
	n.active_ind
 FROM   NAME n,
        PERORG p
 WHERE  n.perorg_id = p.perorg_id
 AND    p.perorg_type_code = "O"
-- Pull across all names so we can try matching on the name.
-- AND    n.active_ind = 1
-- AND    n.preferred_ind = 1
go
IF OBJECT_ID('dbo.VW_RESMAN_NAME') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RESMAN_NAME >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RESMAN_NAME >>>'
go
GRANT SELECT ON dbo.VW_RESMAN_NAME TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_NAME TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_NAME TO rma_users
go
create view dbo.VW_RESMAN_PERORG as
SELECT
	p.perorg_id,
	p.perorg_type_code,
	p.gender_code,
	p.active_ind,
	p.dob,
	p.dod,
	p.ird_number,
	p.audit_tran_id,
	p.ts,
	p.merge_request_number,
	p.is_learner,
	p.logo_url,
	p.location_code,
	p.location_country_code,
	p.perorg_status
 FROM dbo.PERORG p WHERE 
	p.perorg_type_code = "O"
go
IF OBJECT_ID('dbo.VW_RESMAN_PERORG') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RESMAN_PERORG >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RESMAN_PERORG >>>'
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG TO rma_users
go
create view dbo.VW_RESMAN_PERORG_ALT_ID as
SELECT
	pai.altid_id,
	pai.perorg_id,
	pai.altid_type_code,
	pai.altid_value1,
	pai.altid_value2,
	pai.altid_value3,
	pai.active_ind,
	pai.original_reference_id,
	pai.ts,
	pai.audit_tran_id
 FROM   PERORG_ALT_ID pai,
        PERORG p         
 WHERE  pai.perorg_id = p.perorg_id
 AND    p.perorg_type_code = "O"
 AND    (pai.altid_type_code = "RS"
        OR pai.altid_type_code = "MO")
go
IF OBJECT_ID('dbo.VW_RESMAN_PERORG_ALT_ID') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RESMAN_PERORG_ALT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RESMAN_PERORG_ALT_ID >>>'
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ALT_ID TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ALT_ID TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ALT_ID TO rma_users
go
create view dbo.VW_RESMAN_PERORG_ROLE as
SELECT
	pr.perorg_role_id,
	pr.perorg_id,
	pr.perorg_role_type_code,
	pr.audit_tran_id,
	pr.ts,
	pr.active_ind,
	pr.related_perorg_role_id,
	pr.start_date,
	pr.end_date,
	pr.perorg_role_status_code,
	pr.primary_contact_id,
	pr.ssb_type_code,
	pr.context_code
 FROM   PERORG_ROLE pr,
        PERORG p
 WHERE  pr.perorg_id = p.perorg_id
 AND    p.perorg_type_code = "O"
go
IF OBJECT_ID('dbo.VW_RESMAN_PERORG_ROLE') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RESMAN_PERORG_ROLE >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RESMAN_PERORG_ROLE >>>'
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ROLE TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ROLE TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ROLE TO rma_users
go
create view dbo.VW_RESMAN_PROVIDER as
SELECT
	pro.provider_id,
	pro.moe_provider_id,
	pro.location,
	pro.ts,
	pro.audit_tran_id,
	pro.excluded_marker_allocation,
	pro.provider_type_code,
	pro.location_name,
	p.active_ind
 FROM   PROVIDER pro,
        PERORG_ROLE pr,
        PERORG p
 WHERE  pro.provider_id = pr.perorg_role_id
 AND    pr.perorg_id = p.perorg_id
 AND    p.perorg_type_code = "O"
go
IF OBJECT_ID('dbo.VW_RESMAN_PROVIDER') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RESMAN_PROVIDER >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RESMAN_PROVIDER >>>'
go
GRANT SELECT ON dbo.VW_RESMAN_PROVIDER TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PROVIDER TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PROVIDER TO rma_users
go
create view dbo.VW_RESMAN_RELATIONSHIP as
SELECT
	r.rel_id,
	r.rel_type_code,
	r.perorg_id,
	r.related_perorg_id,
	r.rel_active_ind,
	r.rel_start_date,
	r.rel_end_date,
	r.original_reference_id,
	r.audit_tran_id,
	r.ts,
	r.department,
	r.title,
	r.relative_address
 FROM   RELATIONSHIP r,
        PERORG p1,
        PERORG p2,
        RELATIONSHIP_TYPE rt
 WHERE  p1.perorg_id = r.perorg_id
 AND    p1.perorg_type_code = "O"
 AND    p2.perorg_id = r.perorg_id
 AND    p2.perorg_type_code = "O"
 AND    rt.rel_type_code = r.rel_type_code
 AND    rt.rel_equal_relationship = 0
go
IF OBJECT_ID('dbo.VW_RESMAN_RELATIONSHIP') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_RESMAN_RELATIONSHIP >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_RESMAN_RELATIONSHIP >>>'
go
GRANT SELECT ON dbo.VW_RESMAN_RELATIONSHIP TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_RELATIONSHIP TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_RELATIONSHIP TO rma_users
go
CREATE VIEW dbo.VW_STANDARDS AS

--
-- Copyright 2005 SolNet Limited and New Zealand
-- Qualifications Authority.  All rights reserved.
--
-- Version: $Revision: 1.1 $
-- Source:  $Source: /usr/local/git/cvs/eqa/eqa/apps/sper/db/views/VW_STANDARDS.sql,v $
--Author:  $Author: pault $
--

SELECT S.STD_NUMBER,
           SV.STD_VERSION_NUMBER,
           SMV.TITLE_WITH_UMLAUTS STD_TITLE,
           SMV.CREDITS,
           LVL.LEVEL_NUMBER,
           C.CFN_CATG_NAME_UMLAUTS DOMAIN_TITLE,
           C.CFN_CATG_NUMBER DOMAIN_CODE,
           C2.CFN_CATG_NAME_UMLAUTS SUBFIELD_TITLE,
           C2.CFN_CATG_NUMBER SUBFIELD_CODE,
           SV.SSB_PERORG_ROLE_ID AS SSB_PERORG_ROLE_ID,
           SMV.PRIMARY_LANGUAGE_CODE,
           SMV.STD_GRADING_TYPE_CODE,
           SMV.ASSESSMENT_TYPE_CODE,
           S.STD_TYPE_CODE,
           SV.STD_VERSION_STATUS_CODE
FROM STD S,
           STD_VERSION SV,
           STD_MINOR_VERSION SMV,
           LVL,
           CFN_CATEGORY C,
           CFN_CATEGORY C2
WHERE S.STD_ID = SV.STD_ID
AND SV.STD_VERSION_ID = SMV.STD_VERSION_ID
AND SMV.LEVEL_CODE *= LVL.LEVEL_CODE
AND SV.CFN_CATG_ID *= C.CFN_CATG_ID
AND C.PARENT_CFN_CATG_ID *= C2.CFN_CATG_ID
AND SV.STD_VERSION_STATUS_CODE != '01'
go
IF OBJECT_ID('dbo.VW_STANDARDS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_STANDARDS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_STANDARDS >>>'
go
GRANT SELECT ON dbo.VW_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.VW_STANDARDS TO read_only
go
GRANT SELECT ON dbo.VW_STANDARDS TO rma_users
go
create view dbo.VW_STANDARDS_SUBJECT as
select s.std_number,
           sv.std_version_number,
           smv.title std_title,
           smv.credits,
           lvl.level_number,
           smv.primary_language_code,
           smv.std_grading_type_code,
           smv.assessment_type_code,
           s.std_type_code,
           sg.std_group_name
from std s,
           std_version sv,
           std_minor_version smv,
           lvl,
           std_group_coverage sgc,
           std_group sg
where s.std_id = sv.std_id
and sv.latest_pub_std_minor_ver_id = smv.std_minor_version_id
and smv.level_code *= lvl.level_code
and sv.std_id = sgc.std_id
and sgc.std_group_id = sg.std_group_id
and sg.std_group_type_code = 'NC'
-- provides a unique NC group for the entry, uses the join with the latest effective_from_date
and sgc.effective_from_date = (
   	select max(sgc2.effective_from_date)
   	from STD_GROUP_COVERAGE sgc2, STD_GROUP sg2
   	  where sgc2.std_id = sv.std_id
   	  and sgc2.std_group_id = sg2.std_group_id
   	  and sg2.std_group_type_code = 'NC'
   	  and sgc2.effective_from_date <= getdate()
)
go
IF OBJECT_ID('dbo.VW_STANDARDS_SUBJECT') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_STANDARDS_SUBJECT >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_STANDARDS_SUBJECT >>>'
go
GRANT SELECT ON dbo.VW_STANDARDS_SUBJECT TO eqa_user
go
GRANT SELECT ON dbo.VW_STANDARDS_SUBJECT TO read_only
go
GRANT SELECT ON dbo.VW_STANDARDS_SUBJECT TO rma_users
go
CREATE VIEW dbo.VW_STANDARD_INPUT_WITH_ERROR
as

    select s.standard_input_id        ,
    getdate() as archived_date,
    s.learner_input_id         ,
    s.withdrawn_flag           ,
     s.te_reo_paper             ,
     s.answer_in_maori          ,
     s.class_identifier        ,
     s.other_accred_code       ,
     s.other_accred_loc        ,
     s.correspondence          ,
     s.standard_version        ,
     s.standard_language       ,
     s.date_completed          ,
     s.semester_completed      ,
     s.result                  ,
     s.standard_code           ,
     s.result_id               ,
     s.entry_id                ,
     s.version_id              ,
     s.context                 ,
     s.tec_course_id            ,
     s.funded_provider_id       ,
     s.result_batch_number      ,
     s.prescription_number     ,
     s.secondary_course_number 
    from eqa_archive..tmp_error_standard_input_id t , STANDARD_INPUT s
    where 
    t.standard_input_id = s.standard_input_id
go
IF OBJECT_ID('dbo.VW_STANDARD_INPUT_WITH_ERROR') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_STANDARD_INPUT_WITH_ERROR >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_STANDARD_INPUT_WITH_ERROR >>>'
go
GRANT SELECT ON dbo.VW_STANDARD_INPUT_WITH_ERROR TO eqa_user
go
GRANT SELECT ON dbo.VW_STANDARD_INPUT_WITH_ERROR TO read_only
go
GRANT SELECT ON dbo.VW_STANDARD_INPUT_WITH_ERROR TO rma_users
go
create view dbo.VW_STD_GROUP
as
select std_group_id, std_group_type_code, std_group_name
from std_group
where active_ind=1
go
IF OBJECT_ID('dbo.VW_STD_GROUP') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_STD_GROUP >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_STD_GROUP >>>'
go
GRANT SELECT ON dbo.VW_STD_GROUP TO eqa_user
go
GRANT SELECT ON dbo.VW_STD_GROUP TO read_only
go
GRANT SELECT ON dbo.VW_STD_GROUP TO rma_users
go
create view dbo.VW_STD_VERSIONS_WITH_LEVEL as
--
-- Copyright 2005 SolNet Limited and New Zealand
-- Qualifications Authority.  All rights reserved.
--
-- Version: $Revision: 1.2 $
-- Name:    $Name: sper_10_7_5 $
-- Source:  $Source: /cvs/NZQA/eQA/dbase/../sper/db/procedures/VW_STD_VERSIONS_WITH_LEVEL.sql,v $
--Author:  $Author: ar1179 $
--
  select sv.std_number,
           sv.std_version_number,
           smv.title std_title,
           smv.credits,
           lvl.level_number,
           sv.ssb_perorg_role_id as ssb_perorg_role_id,
           smv.primary_language_code,
           smv.std_grading_type_code,
           smv.assessment_type_code,
           sv.std_version_status_code
  from
           std_version sv,
           std_minor_version smv,
           lvl
  where
           sv.latest_std_minor_version_id = smv.std_minor_version_id and
           smv.level_code = lvl.level_code
go
IF OBJECT_ID('dbo.VW_STD_VERSIONS_WITH_LEVEL') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.VW_STD_VERSIONS_WITH_LEVEL >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.VW_STD_VERSIONS_WITH_LEVEL >>>'
go
GRANT SELECT ON dbo.VW_STD_VERSIONS_WITH_LEVEL TO eqa_user
go
GRANT SELECT ON dbo.VW_STD_VERSIONS_WITH_LEVEL TO read_only
go
GRANT SELECT ON dbo.VW_STD_VERSIONS_WITH_LEVEL TO rma_users
go
-- Version      $Revision: 1.4 $

CREATE VIEW dbo.WEB_STANDARDS AS

SELECT
    sv.std_id,
    sv.std_number,
    smv.title,
    s.std_type_code,
    s.std_status_code,
    sv.std_expiry_date,
    sv.std_version_number,
    smv.credits,
    smv.assessment_type_code,
    ISNULL(smv.subject_ref_number, 0) as subject_ref_number,
    l.level_code,
    l.level_number,
    sv.cfn_catg_id,
    c.cfn_catg_name,
    c.cfn_catg_name_umlauts,
    c.cfn_catg_name_alt_lang,
    g.std_group_id,
    g.std_group_name,
    g.std_group_name_alt_lang
FROM
    STD s,
    STD_VERSION sv,
    STD_MINOR_VERSION smv,
    STD_GROUP_STD_MAPPING sgm,
    STD_GROUP g,
    LVL l,
    CFN_CATEGORY c
WHERE
    s.std_number = sv.std_number and
    s.web_std_version_id = sv.std_version_id and
    s.std_type_code in ('01', '02', '06') and -- Unit Standard, Achievement Standard, Scholarship
    s.std_status_code in ('02', '04', '05') and -- Registered, Expiring, Expired
    sv.latest_pub_std_minor_ver_id = smv.std_minor_version_id and
    s.std_id = sgm.std_id and
    sgm.std_group_id = g.std_group_id and
    g.std_group_type_code = 'NC' and
    smv.level_code = l.level_code and
    l.level_number in (1, 2, 3, 4) and
    sv.cfn_catg_id = c.cfn_catg_id and
    c.cfn_system_code = 'SQ' and
    c.cfn_depth_code = '03'
go
IF OBJECT_ID('dbo.WEB_STANDARDS') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.WEB_STANDARDS >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.WEB_STANDARDS >>>'
go
GRANT SELECT ON dbo.WEB_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.WEB_STANDARDS TO read_only
go
GRANT SELECT ON dbo.WEB_STANDARDS TO rma_users
go
GRANT SELECT ON dbo.WEB_STANDARDS TO web_appserver_intranet
go
-- Name:          W_ASSESSMENT_CENTRE
-- Description:
--
-- Author:      Daniel Gunawan
-- Created:     16/08/2003
-- Version      $Revision: 1.1 $  Replaces w_assessment_centres
--

CREATE VIEW dbo.W_ASSESSMENT_CENTRE AS
SELECT
    ac.assessment_centre_id,
    ac.moe_provider_id,
    pr.perorg_id,
    n.surname as name
FROM
    ASSESSMENT_CENTRE ac,
    PERORG_ROLE pr,
    PERORG per,
    NAME n
WHERE
    ac.assessment_centre_id = pr.perorg_role_id and
    pr.perorg_role_type_code = 4 and
    pr.perorg_id = per.perorg_id and
    pr.active_ind = 1 and
    (pr.end_date is null or pr.end_date > getDate()) and
    per.perorg_type_code = 'O' and
    per.perorg_status = 'AC' and
    per.active_ind = 1 and
    per.perorg_id = n.perorg_id and
    n.preferred_ind = 1 and
    n.active_ind = 1
go
IF OBJECT_ID('dbo.W_ASSESSMENT_CENTRE') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.W_ASSESSMENT_CENTRE >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.W_ASSESSMENT_CENTRE >>>'
go
GRANT SELECT ON dbo.W_ASSESSMENT_CENTRE TO eqa_user
go
GRANT SELECT ON dbo.W_ASSESSMENT_CENTRE TO read_only
go
GRANT SELECT ON dbo.W_ASSESSMENT_CENTRE TO rma_users
go
create view dbo.mc_compare_accedited_item as
select 
a.accredited_item_id,
provider_id,
accredited_item_status,
accredited_item_status_date,
accredited_item_type,
std_id,
cfn_catg_id,
level_code,
course_version_id,
delivery_mode_type,
--delivery_method,
--assessment_method,
course_monitoring_status,
course_monitoring_status_date,
course_monitoring_cycle_code,
active_ind,
audit_tran_id,
created_perorg_case_id,
last_updated_perorg_case_id,
avg_self_study_hours_per_week,
avg_teaching_hours_per_week,
delivery_weeks,
monitor_perorg_role_id,
delivery_site_id,
proposed_start_date,
teaching_weeks,
total_hours_per_week,
international_learners_ind,
tec_funding_ind,
delivery_status_ind,
delivery_status_date,
qa_aprv_rating_code,
mmeqa_mark_ind
   

 from accredited_item a, tempdb..accredited_item_id b
   

 where a.accredited_item_id = b.accredited_item_id
go
IF OBJECT_ID('dbo.mc_compare_accedited_item') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.mc_compare_accedited_item >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.mc_compare_accedited_item >>>'
go
GRANT SELECT ON dbo.mc_compare_accedited_item TO eqa_user
go
GRANT SELECT ON dbo.mc_compare_accedited_item TO read_only
go
GRANT SELECT ON dbo.mc_compare_accedited_item TO rma_users
go
/* Adaptive Server has expanded all '*' elements in the following statement */ create view dbo.mc_vw_sqr_event
as
select sqr_event.se_id, sqr_event.table_name, sqr_event.system_key, sqr_event.natural_key_1, sqr_event.natural_key_2, sqr_event.change_type, sqr_event.created_date, sqr_event.completed_date, sqr_event.event_table, sqr_event.event_table_id from sqr_event
where se_id > 1526477
--where created_date > '5 Feb 2016'
go
IF OBJECT_ID('dbo.mc_vw_sqr_event') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.mc_vw_sqr_event >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.mc_vw_sqr_event >>>'
go
GRANT SELECT ON dbo.mc_vw_sqr_event TO eqa_user
go
GRANT SELECT ON dbo.mc_vw_sqr_event TO read_only
go
GRANT SELECT ON dbo.mc_vw_sqr_event TO rma_users
go
create view dbo.sysquerymetrics (uid, gid, hashkey, id, sequence, exec_min, exec_max, exec_avg, elap_min, elap_max, elap_avg, lio_min, lio_max, lio_avg, pio_min, pio_max, pio_avg, cnt, abort_cnt, qtext) as select  a.uid, -a.gid, a.hashkey, a.id, a.sequence, convert(int, substring(b.text, charindex('e1', b.text) + 3, charindex('e2', b.text) - charindex('e1', b.text) - 4)), convert(int, substring(b.text, charindex('e2', b.text) + 3, charindex('e3', b.text) - charindex('e2', b.text) - 4)), convert(int, substring(b.text, charindex('e3', b.text) + 3, charindex('t1', b.text) - charindex('e3', b.text) - 4)), convert(int, substring(b.text, charindex('t1', b.text) + 3, charindex('t2', b.text) - charindex('t1', b.text) - 4)), convert(int, substring(b.text, charindex('t2', b.text) + 3, charindex('t3', b.text) - charindex('t2', b.text) - 4)), convert(int, substring(b.text, charindex('t3', b.text) + 3, charindex('l1', b.text) - charindex('t3', b.text) - 4)), convert(int, substring(b.text, charindex('l1', b.text) + 3, charindex('l2', b.text) - charindex('l1', b.text) - 4)), convert(int, substring(b.text, charindex('l2', b.text) + 3, charindex('l3', b.text) - charindex('l2', b.text) - 4)), convert(int, substring(b.text, charindex('l3', b.text) + 3, charindex('p1', b.text) - charindex('l3', b.text) - 4)), convert(int, substring(b.text, charindex('p1', b.text) + 3, charindex('p2', b.text) - charindex('p1', b.text) - 4)), convert(int, substring(b.text, charindex('p2', b.text) + 3, charindex('p3', b.text) - charindex('p2', b.text) - 4)), convert(int, substring(b.text, charindex('p3', b.text) + 3, charindex('c', b.text) - charindex('p3', b.text) - 4)), convert(int, substring(b.text, charindex('c', b.text) + 2, charindex('ac', b.text) - charindex('c', b.text) - 3)), convert(int, substring(b.text, charindex('ac', b.text) + 3, char_length(b.text) - charindex('ac', b.text) - 2)), a.text from sysqueryplans a, sysqueryplans b where (a.type = 10) and (b.type =1000) and (a.id = b.id) and a.uid = b.uid and a.gid = b.gid
go
IF OBJECT_ID('dbo.sysquerymetrics') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.sysquerymetrics >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.sysquerymetrics >>>'
go
GRANT SELECT ON dbo.sysquerymetrics TO eqa_user
go
GRANT SELECT ON dbo.sysquerymetrics TO read_only
go
GRANT SELECT ON dbo.sysquerymetrics TO rma_users
go
--Adaptive Server has expanded all '*' elements in the following statement
                                                                                                                                                                                   create view dbo.temp1
as
select                                                                                                                                                                                                                                    STANDARD_INPUT.standard_input_id, STANDARD_INPUT.learner_input_id, STANDARD_INPUT.class_identifier, STANDARD_INPUT.other_accred_code, STANDARD_INPUT.other_accred_loc, STANDARD_INPUT.correspondence, STANDARD_INPUT.standard_version, STANDARD_INPUT.standard_language, STANDARD_INPUT.date_completed, STANDARD_INPUT.semester_completed, STANDARD_INPUT.result, STANDARD_INPUT.ts, STANDARD_INPUT.standard_code, STANDARD_INPUT.result_id, STANDARD_INPUT.withdrawn_flag, STANDARD_INPUT.te_reo_paper, STANDARD_INPUT.answer_in_maori, STANDARD_INPUT.entry_id, STANDARD_INPUT.version_id, STANDARD_INPUT.context, STANDARD_INPUT.tec_course_id, STANDARD_INPUT.funded_provider_id from STANDARD_INPUT where standard_input_id in (759907721,759908868)
go
IF OBJECT_ID('dbo.temp1') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.temp1 >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.temp1 >>>'
go
GRANT SELECT ON dbo.temp1 TO eqa_user
go
GRANT SELECT ON dbo.temp1 TO read_only
go
GRANT SELECT ON dbo.temp1 TO rma_users
go
/* Adaptive Server has expanded all '*' elements in the following statement */                                                                                                                                                                                 create view dbo.temp_sec_course_std_hist
as
select                                                                                                                                                                                                                 sec_course_std_hist.sec_course_std_hist_id, sec_course_std_hist.secondary_course_id, sec_course_std_hist.std_number, sec_course_std_hist.std_version_number, sec_course_std_hist.effective_from_date, sec_course_std_hist.effective_to_date  from sec_course_std_hist where sec_course_std_hist_id between 1500898123 and 1500898459
go
IF OBJECT_ID('dbo.temp_sec_course_std_hist') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.temp_sec_course_std_hist >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.temp_sec_course_std_hist >>>'
go
GRANT SELECT ON dbo.temp_sec_course_std_hist TO eqa_user
go
GRANT SELECT ON dbo.temp_sec_course_std_hist TO read_only
go
GRANT SELECT ON dbo.temp_sec_course_std_hist TO rma_users
go
/* Adaptive Server has expanded all '*' elements in the following statement */ create view dbo.temp_sqr_event 
as
select sqr_event.se_id, sqr_event.table_name, sqr_event.system_key, sqr_event.natural_key_1, sqr_event.natural_key_2, sqr_event.change_type, sqr_event.created_date, sqr_event.completed_date, sqr_event.event_table, sqr_event.event_table_id from sqr_event where completed_date is null
go
IF OBJECT_ID('dbo.temp_sqr_event') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.temp_sqr_event >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.temp_sqr_event >>>'
go
GRANT SELECT ON dbo.temp_sqr_event TO eqa_user
go
GRANT SELECT ON dbo.temp_sqr_event TO read_only
go
GRANT SELECT ON dbo.temp_sqr_event TO rma_users
go
--Adaptive Server has expanded all '*' elements in the following statement
                                                                                                                                                                                   create view dbo.tmp_standard_input_vw1
as
select                                                                                                                                                                                                                   STANDARD_INPUT.standard_input_id, STANDARD_INPUT.learner_input_id, STANDARD_INPUT.class_identifier, STANDARD_INPUT.other_accred_code, STANDARD_INPUT.other_accred_loc, STANDARD_INPUT.correspondence, STANDARD_INPUT.standard_version, STANDARD_INPUT.standard_language, STANDARD_INPUT.date_completed, STANDARD_INPUT.semester_completed, STANDARD_INPUT.result, STANDARD_INPUT.ts, STANDARD_INPUT.standard_code, STANDARD_INPUT.result_id, STANDARD_INPUT.withdrawn_flag, STANDARD_INPUT.te_reo_paper, STANDARD_INPUT.answer_in_maori, STANDARD_INPUT.entry_id, STANDARD_INPUT.version_id, STANDARD_INPUT.context, STANDARD_INPUT.tec_course_id, STANDARD_INPUT.funded_provider_id, STANDARD_INPUT.result_batch_number from STANDARD_INPUT
where standard_input_id not in (759907721,759908868)
go
IF OBJECT_ID('dbo.tmp_standard_input_vw1') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.tmp_standard_input_vw1 >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.tmp_standard_input_vw1 >>>'
go
GRANT SELECT ON dbo.tmp_standard_input_vw1 TO eqa_user
go
GRANT SELECT ON dbo.tmp_standard_input_vw1 TO read_only
go
GRANT SELECT ON dbo.tmp_standard_input_vw1 TO rma_users
go
--Adaptive Server has expanded all '*' elements in the following statement
                                                                                                                                                                                   create view dbo.tmp_standard_input_vw2
as
select                                                                                                                                                                                                                   STANDARD_INPUT.standard_input_id, STANDARD_INPUT.learner_input_id, STANDARD_INPUT.class_identifier, STANDARD_INPUT.other_accred_code, STANDARD_INPUT.other_accred_loc, STANDARD_INPUT.correspondence, STANDARD_INPUT.standard_version, STANDARD_INPUT.standard_language, STANDARD_INPUT.date_completed, STANDARD_INPUT.semester_completed, STANDARD_INPUT.result, STANDARD_INPUT.ts, STANDARD_INPUT.standard_code, STANDARD_INPUT.result_id, STANDARD_INPUT.withdrawn_flag, STANDARD_INPUT.te_reo_paper, STANDARD_INPUT.answer_in_maori, STANDARD_INPUT.entry_id, STANDARD_INPUT.version_id, STANDARD_INPUT.context, STANDARD_INPUT.tec_course_id, STANDARD_INPUT.funded_provider_id, STANDARD_INPUT.result_batch_number from STANDARD_INPUT
where standard_input_id in (759907721,759908868)
go
IF OBJECT_ID('dbo.tmp_standard_input_vw2') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.tmp_standard_input_vw2 >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.tmp_standard_input_vw2 >>>'
go
GRANT SELECT ON dbo.tmp_standard_input_vw2 TO eqa_user
go
GRANT SELECT ON dbo.tmp_standard_input_vw2 TO read_only
go
GRANT SELECT ON dbo.tmp_standard_input_vw2 TO rma_users
go
create view dbo.vwROLLearner
as 

	select 	'P'									-- Record id		
		+right(replicate("0",10)  + ltrim(convert(varchar(10),nsn)),10) 	-- nsn
		+left(rtrim(surname)+(replicate(" ",100)),100)				-- Surname
		+left(rtrim(name1)+" "+rtrim(name2)+(replicate(" ",200)),200)		-- First Names
		+left(rtrim(Addr_1)+(replicate(" ",80)),80)				-- Address line 1
		+left(rtrim(Addr_2)+(replicate(" ",80)),80)				-- Address line 2
		+left(rtrim(Addr_3)+(replicate(" ",80)),80)				-- Address line 3
		+left(rtrim(Addr_4)+(replicate(" ",80)),80)				-- Address line 4
		+left(upper(rtrim(Country_name))+(replicate(" ",80)),80)		-- Address line 4
		+'9999'									-- Post code
		as dmlrnrs
	FROM 	tempdb.guest.ROL_LEARNER
go
IF OBJECT_ID('dbo.vwROLLearner') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwROLLearner >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwROLLearner >>>'
go
GRANT SELECT ON dbo.vwROLLearner TO eqa_user
go
GRANT SELECT ON dbo.vwROLLearner TO read_only
go
GRANT SELECT ON dbo.vwROLLearner TO rma_users
go
create view dbo.vwROLQualification
as 
	select	'Q'										-- Record_id
		+ right(replicate("0",10) + ltrim(convert(varchar(10),nsn)),10) 			-- NZQA id
		+ left(sub_heading + replicate(" ",100),100)
		+ right(replicate("0",12) + ltrim(convert(varchar(12),qfn_achieved_id)),12)      -- QFN achieved id FK  
		+ right(replicate("0",8) + (rtrim(qfn_number)),8)				-- Qualification code
		+ right(replicate("0",1) + ltrim(convert(varchar(1),level_number)),1)		-- Level number (required for sorting)	
		+ left(rtrim(short_title) + " " + endorsement + (replicate(" ",255)),255)	-- title
		+ isnull(convert(char(10),date_awarded,103),space(10))
		+ right(replicate("0",12) + convert(varchar(12),sequence_nbr),12)
		as qa
	FROM 	tempdb.guest.ROL_Qualification
go
IF OBJECT_ID('dbo.vwROLQualification') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwROLQualification >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwROLQualification >>>'
go
GRANT SELECT ON dbo.vwROLQualification TO eqa_user
go
GRANT SELECT ON dbo.vwROLQualification TO read_only
go
GRANT SELECT ON dbo.vwROLQualification TO rma_users
go
create view dbo.vwROLQualificationStrand
as 
	select	'O'										-- Record_id
		+right(replicate("0",10) + ltrim(convert(varchar(10),nsn)),10) 			-- NZQA id
		+right(replicate("0",12) + ltrim(convert(varchar(12),qfn_achieved_id)),12)      -- QFN achieved id FK  
		+right(replicate("0",8) + (rtrim(qfn_number)),8)				-- Qualification code
		+left(section_title +(replicate(" ",100)),100)					-- title
		as dmstrand
	FROM 	tempdb.guest.ROL_Qualification_Strand
go
IF OBJECT_ID('dbo.vwROLQualificationStrand') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwROLQualificationStrand >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwROLQualificationStrand >>>'
go
GRANT SELECT ON dbo.vwROLQualificationStrand TO eqa_user
go
GRANT SELECT ON dbo.vwROLQualificationStrand TO read_only
go
GRANT SELECT ON dbo.vwROLQualificationStrand TO rma_users
go
create view dbo.vwROLScholResult
as 
	select	'S'					--Record_id
		+right(replicate("0",10) + ltrim(convert(varchar(10),nsn)),10) 		-- NZQA id
		+left(rtrim(Description) + (replicate(" ",255)),255)	--title
		+right(replicate("0",3) + ltrim(convert(varchar(3),sequence)),3)  -- Printing Sequence Number
		as schol
	FROM 	tempdb.guest.ROL_SCHOL_RESULT_LATEST
go
IF OBJECT_ID('dbo.vwROLScholResult') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwROLScholResult >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwROLScholResult >>>'
go
GRANT SELECT ON dbo.vwROLScholResult TO eqa_user
go
GRANT SELECT ON dbo.vwROLScholResult TO read_only
go
GRANT SELECT ON dbo.vwROLScholResult TO rma_users
go
create view dbo.vwROLStandard
as 

	select 	right(replicate("0",5)  + ltrim(convert(varchar(5),std_number)),5) 		-- Unit code
		+ right(replicate("0",2)  + ltrim(convert(varchar(2),std_version_number)),2) 	-- Version number
		+ right(replicate("0",1)  + ltrim(convert(varchar(1),level_number)),1) 		-- Level number
		+ right(replicate("0",3)  + ltrim(convert(varchar(3),credits)),3) 		-- Credit value
		+ left((upper(rtrim(cfn_Category_name)) + replicate(" ",100)),100)
		+ left(title + replicate(" ",255),255)
		+ left(title_with_umlauts + replicate(" ",255),255)
		+ best_result								as dmunits
	from	tempdb.guest.ROL_STANDARD
go
IF OBJECT_ID('dbo.vwROLStandard') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwROLStandard >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwROLStandard >>>'
go
GRANT SELECT ON dbo.vwROLStandard TO eqa_user
go
GRANT SELECT ON dbo.vwROLStandard TO read_only
go
GRANT SELECT ON dbo.vwROLStandard TO rma_users
go
create view dbo.vwROLUnitResult
as 

	select 	'U'										-- Record id		
		+right(replicate("0",10) + ltrim(convert(varchar(10),nsn)),10) 			-- NZQA id
		+right(replicate("0",5)  + ltrim(convert(varchar(5),std_number)),5) 		-- Unit Code
		+right(replicate("0",2)  + ltrim(convert(varchar(2),std_version_number)),2)	-- Version Id
		+convert(char(10),date_completed,103)					       	-- Completion date dd/mm/yyyy
		+left(rtrim(result_code),1)							-- Result code
		as dmlrn
	FROM 	tempdb.guest.ROL_UNIT_RESULT_LATEST
go
IF OBJECT_ID('dbo.vwROLUnitResult') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwROLUnitResult >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwROLUnitResult >>>'
go
GRANT SELECT ON dbo.vwROLUnitResult TO eqa_user
go
GRANT SELECT ON dbo.vwROLUnitResult TO read_only
go
GRANT SELECT ON dbo.vwROLUnitResult TO rma_users
go
create view dbo.vwSRSAchievement
as 
select	convert(varchar(12),nsn)		+ char(9)		-- NZQA id
	+convert(varchar(8),qfn_number)		+ char(9)		-- Qualification number (If applicable)
	+convert(varchar(5),qfn_version_number)	+ char(9)		-- Qualification version number (If applicable)
	+convert(varchar(100),sub_heading)	+ char(9)		-- Sub Heading
	+convert(varchar(463),title_umlauts + " " + level_title + " " + strand_title_umlauts + " " + endorsement_title)	+ char(9)	--Achievement title
	+convert(varchar(2),level_number)	+ char(9)		-- Level number 	
	+convert(varchar(50),achieved_date)	+ char(9)		-- date achieved
	+convert(varchar(12),sequence_#)	+ char(9)		-- Sequence number 

	as Achievement
       
     
FROM 	tempdb.guest.SRSAchievementExtract
go
IF OBJECT_ID('dbo.vwSRSAchievement') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwSRSAchievement >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwSRSAchievement >>>'
go
GRANT SELECT ON dbo.vwSRSAchievement TO eqa_user
go
GRANT SELECT ON dbo.vwSRSAchievement TO read_only
go
GRANT SELECT ON dbo.vwSRSAchievement TO rma_users
go
create view dbo.vwSRSLearner
as 

select 
		convert(varchar(12),nsn)		+ char(9)				-- NZQA id
		+convert(varchar(12),learner_id)	+ char(9)				-- NZQA internal id
		+convert(varchar(100),Surname)		+ char(9)				-- Surname
		+convert(varchar(100),Name_1)		+ char(9)				-- Name_1
		+convert(varchar(100),Name_2)		+ char(9)				-- Name_2
		+convert(varchar(100),Name_3)		+ char(9)				-- Name_3
		+convert(varchar(80),Addr_1)		+ char(9)				-- Addr_1
		+convert(varchar(80),Addr_2)		+ char(9)				-- Addr_2
		+convert(varchar(80),Addr_3)		+ char(9)				-- Addr_3
		+convert(varchar(80),Addr_4)		+ char(9)				-- Addr_4
		+convert(varchar(80),Country_name)	+ char(9)				-- Country Name

		as Learners
       
	FROM 	tempdb.guest.SRSLearnerExtract
go
IF OBJECT_ID('dbo.vwSRSLearner') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwSRSLearner >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwSRSLearner >>>'
go
GRANT SELECT ON dbo.vwSRSLearner TO eqa_user
go
GRANT SELECT ON dbo.vwSRSLearner TO read_only
go
GRANT SELECT ON dbo.vwSRSLearner TO rma_users
go
create view dbo.vwSRSStandard
as 

	select 
		convert(varchar(8),std_number)		+ char(9) 		-- Unit code
		+convert(varchar(5),std_version_number)	+ char(9)	 	-- Version number
		+convert(varchar(2),level_code)		+ char(9) 		-- Level number
		+convert(varchar(3),credits)		+ char(9)		-- Credit value
		+convert(varchar(255),title)		+ char(9)		-- Title
		+convert(varchar(255),umlaut_title)	+ char(9)		-- Umlaut title
		+convert(varchar(2),assessment_type)	+ char(9)		-- Assessment type
		+convert(varchar(5),best_result)	+ char(9)		-- Best Result
		+convert(varchar(100),SEG_Subject)	+ char(9)		-- SEG Subject
		+convert(varchar(100),UE_Subject)	+ char(9)		-- UE Subject
		+convert(varchar(100),Field)		+ char(9)		-- Field
		+convert(varchar(100),Subfield)		+ char(9)		-- Subfield
		+convert(varchar(100),Domain)		+ char(9)		-- Domain

		
		as Stds
	from
		tempdb.guest.SRSStdExtract
go
IF OBJECT_ID('dbo.vwSRSStandard') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwSRSStandard >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwSRSStandard >>>'
go
GRANT SELECT ON dbo.vwSRSStandard TO eqa_user
go
GRANT SELECT ON dbo.vwSRSStandard TO read_only
go
GRANT SELECT ON dbo.vwSRSStandard TO rma_users
go
create view dbo.vwSRSStdResult
as 

select 	convert(varchar(12),nsn)			+ char(9)			-- NZQA id
	+convert(varchar(8),std_number)			+ char(9)			-- Unit Code
	+convert(varchar(5),std_version_number)		+ char(9)			-- Version Id
	+convert(varchar(10),date_completed,103)	+ char(9)			-- Completion date 
	+convert(varchar(5),result_code)		+ char(9)			-- result code

       	as Result

FROM 	tempdb.guest.SRSStdResultLatest
go
IF OBJECT_ID('dbo.vwSRSStdResult') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwSRSStdResult >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwSRSStdResult >>>'
go
GRANT SELECT ON dbo.vwSRSStdResult TO eqa_user
go
GRANT SELECT ON dbo.vwSRSStdResult TO read_only
go
GRANT SELECT ON dbo.vwSRSStdResult TO rma_users
go
create view dbo.vwSRSSummary
as 
select		convert(varchar(12),nsn)		+ char(9)				-- NZQA id
		+convert(varchar(100),subject)		+ char(9)			-- Subject/Componenet
		+convert(varchar(5),column_1)		+ char(9)			-- column_1
		+convert(varchar(5),column_2)		+ char(9)			-- column_2
		+convert(varchar(5),column_3)		+ char(9)			  	-- column_3
		+convert(varchar(5),column_4)		+ char(9)			      	-- column_4
		+convert(varchar(5),column_5)		+ char(9)			      	-- column_5
		+convert(varchar(5),column_6)		+ char(9)			      	-- column_6
		+convert(varchar(5),column_7)		+ char(9)			      	-- column_7
		+convert(varchar(5),column_8)		+ char(9)			       	-- column_8
		+convert(varchar(5),column_9)		+ char(9)			       	-- column_9
		+convert(varchar(5),column_10)		+ char(9)			       	-- column_10
		+convert(varchar(5),column_11)		+ char(9)			       	-- column_11
		+convert(varchar(5),column_12)		+ char(9)			       	-- column_12
		+convert(varchar(5),column_13)		+ char(9)			       	-- column_13
		+convert(varchar(5),column_14)		+ char(9)			       	-- column_14
		+convert(varchar(5),column_15)		+ char(9)			       	-- column_15
		+convert(varchar(5),column_16)		+ char(9)			       	-- column_16
		+convert(varchar(12),sequence_#)	+ char(9)			       	-- Sequence number    


	as Summary
	
FROM 	tempdb.guest.SRSSummaryExtract
go
IF OBJECT_ID('dbo.vwSRSSummary') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vwSRSSummary >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vwSRSSummary >>>'
go
GRANT SELECT ON dbo.vwSRSSummary TO eqa_user
go
GRANT SELECT ON dbo.vwSRSSummary TO read_only
go
GRANT SELECT ON dbo.vwSRSSummary TO rma_users
go
CREATE view dbo.vw_LEARNER_INPUT_MATCH_extract
as
select 
    s.learner_input_match_id     ,
    getdate() as archived_date     ,
    s.learner_input_id  as learner_input_id        ,
    s.surname                   ,
    s.first_names               ,
    s.alias_ind                  ,
    s.date_of_birth             ,
    s.gender_code             ,
    s.nsn                       ,
    s.nzqa_learner_id         ,
    s.is_exact                   ,
    s.is_from_nzqa              ,
    s.local_id                 ,
    s.ranking                   ,
    s.residential_status_code   ,
    s.res_stat_verification_code ,
    s.name_dob_verification_code     ,
    s.version_id                ,
    s.provider_id               ,
    s.location                  
    

 from 	LEARNER_INPUT_MATCH s ,
    		LEARNER_INPUT l, 
		BATCH_STATUS bs
		
    where 
        s.learner_input_id = l.learner_input_id
        and bs.batch_input_id = l.batch_input_id
     	and bs.date_created < '1 Jan 2012'
    	and bs.active_ind = 1
    	and bs.batch_status_type_code in (100, 101,102,70, 71)
go
IF OBJECT_ID('dbo.vw_LEARNER_INPUT_MATCH_extract') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vw_LEARNER_INPUT_MATCH_extract >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vw_LEARNER_INPUT_MATCH_extract >>>'
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_MATCH_extract TO eqa_user
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_MATCH_extract TO read_only
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_MATCH_extract TO rma_users
go
CREATE view dbo.vw_LEARNER_INPUT_extract
as
select 

	learner_input_id,
	getdate() as archived_date ,
	l.batch_input_id,
	matching_result_code,
	is_resolved,
	is_processed,
	withdrawn_flag,
	l.version_id,
	sort_key,
	local_id,
	nzqa_id,
	hook_on_flag,
	surname,
	name1,
	name2,
	name3,
	address_line_1,
	address_line_2,
	address_line_3,
	address_line_4,
	post_code,
	overseas_flag,
	date_of_birth,
	gender,
	ethnic_1,
	ethnic_2,
	ethnic_3,
	h_div,
	years_secondary,
	citizen_flag,
	tertiary_rel_flag,
	hsc_flag,
	fin_assistance,
	exam_centre_code,
	selected_match,

	learner_id,
	enrolment_date,
	leaving_date,
	leaving_code,
	payment_amount,
	cell_phone_number,
	foreign_fee_payer_ind,
	qfn_number,
	strand_number,
	qfn_version_number,
	qfn_issue_flag,
	qfn_return_to_provider,
	qfn_completion_date,
	qfn_awd_provider_code,
	qfn_awd_provider_location,
	optional_strands,
	qfn_achieved_id,
	number_siblings,
	fin_assist_app_number,
	fin_assist_benefit_number,
	qual_check_status,
	line_number,
	iwi_1,
	iwi_2,
	iwi_3,
	moe_year_level,
	student_type,
	country_of_citizenship,
	ncea_lvl1_qc_status,
	lvl1_qfn_achieved_id,
	ncea_lvl2_qc_status,
	lvl2_qfn_achieved_id,
	ncea_lvl3_qc_status,
	lvl3_qfn_achieved_id,
	ncea_ue_qc_status,
	ue_qfn_achieved_id,
	exam_centre_location

 from 	LEARNER_INPUT l ,
    		
	eqa_archive..tmp_extract_batch_input_id bs
		
    where 
      
        bs.batch_input_id = l.batch_input_id
     	and not exists
	(select 1 from LEARNER_INPUT_MATCH b
	where l.learner_input_id = b.learner_input_id)
	and not exists
	(select 1 from STANDARD_INPUT s
	where l.learner_input_id = s.learner_input_id)
go
IF OBJECT_ID('dbo.vw_LEARNER_INPUT_extract') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vw_LEARNER_INPUT_extract >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vw_LEARNER_INPUT_extract >>>'
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_extract TO eqa_user
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_extract TO read_only
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_extract TO rma_users
go
CREATE view dbo.vw_MARK_INPUT_extract
as
select 

	mark_input_id,
	getdate() as archived_date ,
	l.batch_input_id,
	page_number,
	std_number,
	marker_code,
	new_marker_code,
	marks,
	provider_id,
	serial_number,
	version_id,
	is_processed,
	
	entry_id,
	line_number,
	nsn,
	study_school,
	exam_centre,
	date_completed,
        result_component_link_id

 from 	MARK_INPUT l ,
    		
	eqa_archive..tmp_extract_batch_input_id bs
		
    where 
      
        bs.batch_input_id = l.batch_input_id
     	and not exists
	(select 1 from INPUT_BATCH_ERROR b
	where l.mark_input_id = b.mark_input_id)
go
IF OBJECT_ID('dbo.vw_MARK_INPUT_extract') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vw_MARK_INPUT_extract >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vw_MARK_INPUT_extract >>>'
go
GRANT SELECT ON dbo.vw_MARK_INPUT_extract TO eqa_user
go
GRANT SELECT ON dbo.vw_MARK_INPUT_extract TO read_only
go
GRANT SELECT ON dbo.vw_MARK_INPUT_extract TO rma_users
go
CREATE VIEW dbo.vw_NFQ_STATS_Result 
AS


    	 select 	
	    		e.entry_id	
			,e.enrolment_id
			,e.entry_status
			,e.provider_id
			,e.location
			--,e.active_ind
			,e.provider_type_code
		        ,s.credits
		        ,s.std_number
		        ,s.std_version_number
		        ,level_code
		        ,s.cfn_catg_id
		        ,l.learner_id
			,l.master_learner_id
		        ,l.perorg_id
		        ,l.enrolment_status_code
		        ,l.gender_code
		        ,l.ethnicity_code
		from	
			tempdb.guest.tmp_stat_entry e
			,tempdb.guest.tmp_stat_learner l
			,tempdb.guest.tmp_stat_standard s
		where 	
			e.enrolment_id = l.enrolment_id
		and     e.std_number = s.std_number
		and     e.std_version_number = s.std_version_number
go
IF OBJECT_ID('dbo.vw_NFQ_STATS_Result') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vw_NFQ_STATS_Result >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vw_NFQ_STATS_Result >>>'
go
GRANT SELECT ON dbo.vw_NFQ_STATS_Result TO public
go
create view dbo.vw_set as
SELECT EP.enrolment_id, 
       ASSN.assessment_session_id, 
       EP.assessment_centre_id as exam_centre_id, 
       EP.entry_id, 
       EP.std_version_number, 
       EP.std_number, 
       EP.assessment_centre_id,
       EP.personalisation_run_id, 
       RUN.academic_year, 
       assc.assessment_session_comp_id
FROM
	assessment_session_component ASSC,
    assessment_session ASSN,
    entry_personalisation EP,
    personalisation_run RUN
WHERE
    ASSN.assessment_session_id = ASSC.assessment_session_id
    AND ASSC.std_number = EP.std_number
    AND ASSC.std_version_number = EP.std_version_number
    AND EP.personalisation_run_id = RUN.personalisation_run_id
    AND ASSN.assessment_cycle_id = RUN.academic_year
go
IF OBJECT_ID('dbo.vw_set') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vw_set >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vw_set >>>'
go
GRANT SELECT ON dbo.vw_set TO eqa_user
go
GRANT SELECT ON dbo.vw_set TO read_only
go
GRANT SELECT ON dbo.vw_set TO rma_users
go
create view dbo.vw_ssb_name_status
as 

/*  Written by:  Paul Devadatta
    Date:        10 Nov 2006
    Description: This is used by FR crystal reports.
		List orgs that have EVER had an SSB role.
		Show their current name, ResManID & whether they are ACTIVE.  
		
		A number of factors go in to determining whether an SSB is active:
		1)	The org status should be 'active'
		2)	The org active indicator should be true
		3) 	The org should have an 'active SSB role record'
				
		An active SSB role record is one 
		1)	Without an end date in the past
		2)	Whose active indicator is true
*/


select	p.perorg_id, resman.altid_value1 as 'ssb_num', n.surname as 'ssb_name', 
	p.perorg_status as 'org_status', p.active_ind as 'is_org_active', 

	-- Figure out if the SSB role record is active (see comment at top)
	case when exists (
		select 	1
		from	PERORG_ROLE pr1
		where	(
			pr1.perorg_id = p.perorg_id)
			and (pr1.perorg_role_type_code = 7)
			and ((pr1.end_date is null) or (getdate() between pr1.start_date and pr1.end_date))
			and (pr1.active_ind = 1)
			)
		then 1
		else 0
	end as 'is_role_active', 

	-- Figure out if SSB is active (see comment at top)
	case when exists (
		select 	1
		from	PERORG_ROLE pr1
		where	(
			pr1.perorg_id = p.perorg_id)
			and (pr1.perorg_role_type_code = 7)
			and ((pr1.end_date is null) or (getdate() between pr1.start_date and pr1.end_date))
			and (pr1.active_ind = 1)
			and (p.perorg_status = 'AC')
			and (p.active_ind = 1)
			)
		then 1
		else 0
	end as 'is_ssb_active'			
			
from        PERORG p
			
		-- Get ResMan ID. This may not exist, so use left join
left join	PERORG_ALT_ID resman on (p.perorg_id = resman.perorg_id) 
				and (resman.altid_type_code = 'RS')
				and (resman.active_ind = 1)

		-- Get latest name, i.e., active and preferred. Use left join in case none exist
left join   	NAME n on (p.perorg_id = n.perorg_id) 
                    and (n.active_ind = 1)
                    and (n.preferred_ind = 1)
					
where exists (	-- All orgs which have at least one SSB role record (active or not)
		select  1
        	from    PERORG_ROLE     pr
        	where   (p.perorg_id = pr.perorg_id) 
        		and (pr.perorg_role_type_code = 7)
		)
go
IF OBJECT_ID('dbo.vw_ssb_name_status') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vw_ssb_name_status >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vw_ssb_name_status >>>'
go
GRANT SELECT ON dbo.vw_ssb_name_status TO eqa_user
go
GRANT SELECT ON dbo.vw_ssb_name_status TO read_only
go
GRANT SELECT ON dbo.vw_ssb_name_status TO rma_users
go
-- Name:          w_all_moderation_standards
-- Description:
--
-- Author:      Paul Wilton
-- Created:     07/09/2004
-- Version      $Revision: 1.2 $
--

CREATE VIEW dbo.w_all_moderation_standards AS

SELECT
    sv.std_id,
    sv.std_number,
    smv.content_type_code,
    ctc.content_type_code_desc,
    smv.title,
    smv.title_alt_lang,
    s.std_type_code,
    s.std_status_code,
    sv.std_version_number,
    sv.std_version_status_code,
    smv.credits,
    smv.assessment_type_code,
    ISNULL(smv.subject_ref_number, 0) as subject_ref_number,
    smv.can_have_te_reo_paper,
    smv.can_answer_in_maori,
    smv.can_have_special_assistance,
    l.level_code,
    l.level_number,
    sv.cfn_catg_id,
    c.cfn_catg_name,
    c.cfn_catg_name_alt_lang,
    g.std_group_id,
    g.std_group_name,
    g.std_group_name_alt_lang,
    sgm.effective_from_date,
    sgm.effective_to_date,
    sv.std_expiry_date
FROM
    STD s,
    STD_VERSION sv,
    STD_MINOR_VERSION smv,
    STD_GROUP_STD_MAPPING sgm,
    STD_GROUP g,
    LVL l,
    CONTENT_TYPE_CODE ctc,
    CFN_CATEGORY c
WHERE
    s.std_number = sv.std_number and
    s.std_id = sv.std_id and
    s.std_status_code in ('02','04') and -- Registered, Expiring

    sv.std_version_id = smv.std_version_id and
    s.std_id = sgm.std_id and
    sgm.std_group_id = g.std_group_id and
    g.std_group_type_code = 'MO' and  -- moderation
    smv.level_code = l.level_code and
    sv.cfn_catg_id *= c.cfn_catg_id and
    c.cfn_system_code = 'SQ' and
    c.cfn_depth_code = '03' and

    ctc.content_type_code = smv.content_type_code
go
IF OBJECT_ID('dbo.w_all_moderation_standards') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_all_moderation_standards >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_all_moderation_standards >>>'
go
GRANT SELECT ON dbo.w_all_moderation_standards TO eqa_user
go
GRANT SELECT ON dbo.w_all_moderation_standards TO read_only
go
GRANT SELECT ON dbo.w_all_moderation_standards TO rma_users
go
GRANT SELECT ON dbo.w_all_moderation_standards TO web_appserver_intranet
go
-- Name:          w_all_providers
-- Description:
--
-- Author:      Paul Wilton
-- Created:     01/08/2003
-- Version      $Revision: 1.1 $
--

CREATE VIEW dbo.w_all_providers AS
SELECT
    p.provider_id,
    p.moe_provider_id,
    p.location,
    p.provider_type_code,
    pt.provider_type_desc,
    pr.perorg_id,
    pr.start_date,
    pr.end_date,
    n.surname as name,
    per.perorg_status
FROM
    PROVIDER p,
    PROVIDER_TYPE pt,
    PERORG_ROLE pr,
    PERORG per,
    NAME n
WHERE
    p.provider_id = pr.perorg_role_id and
    pt.provider_type_code = p.provider_type_code and
    pr.perorg_role_type_code = 3 and
    pr.perorg_id = per.perorg_id and
    pr.active_ind = 1 and
    per.perorg_type_code = 'O' and
    --per.perorg_status = 'AC' and
    --per.active_ind = 1 and
    per.perorg_id = n.perorg_id and
    n.preferred_ind = 1 and
    n.active_ind = 1
go
IF OBJECT_ID('dbo.w_all_providers') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_all_providers >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_all_providers >>>'
go
GRANT SELECT ON dbo.w_all_providers TO eqa_user
go
GRANT SELECT ON dbo.w_all_providers TO read_only
go
GRANT SELECT ON dbo.w_all_providers TO rma_users
go
GRANT SELECT ON dbo.w_all_providers TO web_appserver_intranet
go
-- Name:          w_all_standards
-- Description: Get details for secondary standards.
--              We want to include standards, even if they aren't mapped to a std-group,
--              But we want to omit std-groups unless they are code 'NC'.
--              To make this work properly, we need to inner-join
--              between std_group_std_mapping and std_group
--              but we want to outer-join from STD to the above two in combination.
--              This can only be achieved by coding up the query using ANSI join syntax.
--
-- Author:      Matthew Watson
-- Created:     01/08/2003
-- Version      $Revision: 1.1 $
--

CREATE VIEW dbo.w_all_standards AS

SELECT
    sv.std_id,
    sv.std_number,
    smv.title,
    s.std_type_code,
    s.std_status_code,
    sv.std_version_number,
    sv.std_version_status_code,
    smv.credits,
    smv.assessment_type_code,
    ISNULL(smv.subject_ref_number, 0) as subject_ref_number,
    l.level_code,
    l.level_number,
    sv.cfn_catg_id,
    c.cfn_catg_name,
    c.cfn_catg_name_alt_lang,
    g.std_group_id,
    g.std_group_name,
    g.std_group_name_alt_lang,
    CASE WHEN s.std_status_code = '05' THEN 1 ELSE 0 END as std_expired
FROM
    STD_VERSION sv
    LEFT JOIN CFN_CATEGORY c
    ON  sv.cfn_catg_id = c.cfn_catg_id and
        c.cfn_system_code = 'SQ' and
        c.cfn_depth_code = '03',
    STD_MINOR_VERSION smv,
    LVL l,
    STD s
    LEFT JOIN (STD_GROUP_STD_MAPPING sgm
               JOIN STD_GROUP g
               ON     sgm.std_group_id = g.std_group_id and
                      g.std_group_type_code = 'NC')
         ON     s.std_id = sgm.std_id
WHERE
    s.std_number = sv.std_number and
    s.std_id = sv.std_id and
    -- s.std_type_code in ('01', '02') and -- Unit Standard, Achievement Standard
    s.std_status_code in ('02','04', '05') and -- Registered, Expiring, Expired
    sv.std_version_id = smv.std_version_id and
    smv.level_code = l.level_code
    -- l.level_number in (1, 2, 3, 4) and
go
IF OBJECT_ID('dbo.w_all_standards') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_all_standards >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_all_standards >>>'
go
GRANT SELECT ON dbo.w_all_standards TO eqa_user
go
GRANT SELECT ON dbo.w_all_standards TO read_only
go
GRANT SELECT ON dbo.w_all_standards TO rma_users
go
GRANT SELECT ON dbo.w_all_standards TO web_appserver_intranet
go
-- Name:          v_learner
-- Description:
--
-- Author:      Darran Edwards
-- Created:     03/06/2004
-- Version      $Revision: 1.1 $
--
CREATE VIEW dbo.w_learner AS
SELECT
    p.perorg_id,
    p.gender_code,
    p.dob,
    l.learner_id,
    l.nsn,
    n.surname,
    n.name1,
    n.name2,
    n.name3,
    n.title,
    c.addr_1,
    c.addr_2,
    c.addr_3,
    c.addr_4,
    c.e_addr,
    c.phone_num,
    e.ethnicity_id

FROM
    dbo.PERORG p,
    dbo.PERORG_ROLE r,
    dbo.LEARNER l,
    dbo.name n,
    dbo.COM_METHOD c,
    dbo.ETHNICITY e
WHERE
    p.perorg_id = r.perorg_id AND
    r.perorg_role_id = l.learner_id AND
    p.perorg_id = n.perorg_id AND
    p.perorg_id = c.perorg_id AND
    p.perorg_id = e.perorg_id AND
    p.perorg_type_code='P' AND
    p.active_ind = 1 AND
    n.name_type_code = 'FO'
go
IF OBJECT_ID('dbo.w_learner') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_learner >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_learner >>>'
go
GRANT SELECT ON dbo.w_learner TO eqa_user
go
GRANT SELECT ON dbo.w_learner TO read_only
go
GRANT SELECT ON dbo.w_learner TO rma_users
go
-- Name:          w_learners
-- Description:
--
-- Author:      Darran Edwards
-- Created:     03/06/2004
--
CREATE VIEW dbo.w_learners AS
SELECT
    p.perorg_id,
    p.gender_code,
    p.dob,
    l.learner_id,
    l.nsn,
    n.surname,
    n.name1,
    n.name2,
    n.name3,
    n.title,
    c.addr_1,
    c.addr_2,
    c.addr_3,
    c.addr_4,
    c.e_addr,
    c.phone_num,
    e.ethnicity_id

FROM
    dbo.PERORG p,
    dbo.PERORG_ROLE r,
    dbo.LEARNER l,
    dbo.name n,
    dbo.COM_METHOD c,
    dbo.ETHNICITY e
WHERE
    p.perorg_id = r.perorg_id AND
    r.perorg_role_id = l.learner_id AND
    p.perorg_id = n.perorg_id AND
    p.perorg_id = c.perorg_id AND
    p.perorg_id = e.perorg_id AND
    p.perorg_type_code='P' AND
    p.active_ind = 1 AND
    n.preferred_ind = 1
    AND n.active_ind = 1
go
IF OBJECT_ID('dbo.w_learners') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_learners >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_learners >>>'
go
GRANT SELECT ON dbo.w_learners TO eqa_user
go
GRANT SELECT ON dbo.w_learners TO read_only
go
GRANT SELECT ON dbo.w_learners TO rma_users
go
-- Name:          w_markers
--
-- Author:      Matthew Watson
-- Created:     01/08/2003
-- Version      $Revision: 1.4 $
--

CREATE VIEW dbo.w_markers AS
SELECT
    pr.perorg_id,
    pr.context_cycle as academic_year,
    m.marker_id,
    m.return_type,
    rt.return_type_desc,
    m.te_reo,
--    m.delivery_instructions, Removed as per jira EXA-719
--    m.pickup_instructions, Removed as per jira EXA-719
    m.current_teaching_position,
    m.years_experience_nz,
    m.years_experience_overseas,
    m.oe_country_code,
    c.country_name as oe_country_name,
    m.referee_name,
    m.referee_position,
    m.referee_contact_phone,
    m.teaching_experience,
    m.standards_experience,
    m.prof_working_relationships,
    m.relevant_abilities,
    m.region_code,
    r.region_desc,
    m.perorg_role_id,
    m.assigned_marker_code,
    m.actual_marker_id,
    m.moe_provider_id,
    m.location,
    fd.financial_detail_id,
    m.marker_submission_status
FROM
    dbo.MARKER m,
    dbo.PERORG_ROLE pr,
    dbo.RETURN_TYPE rt,
    dbo.COUNTRY_CODE c,
    dbo.REGION r,
    dbo.FINANCIAL_DETAIL fd
WHERE
    m.perorg_role_id = pr.perorg_role_id and
    pr.perorg_role_type_code = 2 and
    (pr.end_date is null or pr.end_date > getDate()) and
    pr.start_date <= getDate() and
    pr.active_ind = 1 and
    m.return_type *= rt.return_type and
    m.oe_country_code *= c.country_short_code and
    m.region_code *= r.region_code and
    pr.perorg_id *= fd.perorg_id and
    fd.active_ind = 1
go
IF OBJECT_ID('dbo.w_markers') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_markers >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_markers >>>'
go
GRANT SELECT ON dbo.w_markers TO eqa_user
go
GRANT SELECT ON dbo.w_markers TO read_only
go
GRANT SELECT ON dbo.w_markers TO rma_users
go
GRANT SELECT ON dbo.w_markers TO web_appserver_intranet
go
-- Name:          w_people
-- Description:
--
-- Author:      Matthew Watson
-- Created:     01/08/2003
-- Version      $Revision: 1.1 $
--

CREATE VIEW dbo.w_people AS
SELECT
    p.perorg_id,
    n.title,
    n.name1,
    n.name2,
    n.name3,
    n.surname,
    p.dob,
    p.ird_number,
    p.gender_code,
    p.user_id
FROM
    dbo.PERORG p,
    dbo.NAME n
WHERE
    p.perorg_type_code = 'P' and
    p.is_learner = 0 and
    p.perorg_id = n.perorg_id and
    p.perorg_status = 'AC' and
    n.preferred_ind = 1 and
    n.active_ind = 1
go
IF OBJECT_ID('dbo.w_people') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_people >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_people >>>'
go
GRANT SELECT ON dbo.w_people TO eqa_user
go
GRANT SELECT ON dbo.w_people TO read_only
go
GRANT SELECT ON dbo.w_people TO rma_users
go
GRANT SELECT ON dbo.w_people TO web_appserver_intranet
go
-- Name:          w_providers
-- Description:
--
-- Author:      Matthew Watson
-- Created:     01/08/2003
-- Version      $Revision: 1.2 $
--

CREATE VIEW dbo.w_providers AS
SELECT
    p.provider_id,
    p.moe_provider_id,
    p.location,
    p.provider_type_code,
    pr.perorg_id,
    n.surname as name
FROM
    PROVIDER p,
    PERORG_ROLE pr,
    PERORG per,
    NAME n
WHERE
    p.provider_id = pr.perorg_role_id and
    pr.perorg_role_type_code = 3 and
    pr.perorg_id = per.perorg_id and
    pr.active_ind = 1 and
    (pr.end_date is null or pr.end_date > getDate()) and
    pr.start_date <= getDate() and
    per.perorg_type_code = 'O' and
    per.perorg_status = 'AC' and
    per.active_ind = 1 and
    per.perorg_id = n.perorg_id and
    n.preferred_ind = 1 and
    n.active_ind = 1
go
IF OBJECT_ID('dbo.w_providers') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_providers >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_providers >>>'
go
GRANT SELECT ON dbo.w_providers TO eqa_user
go
GRANT SELECT ON dbo.w_providers TO read_only
go
GRANT SELECT ON dbo.w_providers TO rma_users
go
GRANT SELECT ON dbo.w_providers TO web_appserver_intranet
go
-- Name:          w_providers_all_names
-- Description:   providers, for searching - include all names for
--                each provider, not just the preferred one
--
-- Author:      David Wallace
-- Created:     23/03/2005
-- Version      $Revision: 1.3 $
--

CREATE VIEW dbo.w_providers_all_names AS
SELECT
    p.provider_id,
    p.moe_provider_id,
    p.location,
    p.provider_type_code,
    pt.provider_type_desc,
    pr.perorg_id,
    n.surname as name,
    n.preferred_ind,
case
  when pr.active_ind = 0 or pr.end_date <= getDate() or pr.start_date > getDate()
    then 'INACTIVE'
  else
    ps.perorg_status_desc
  end as status_description,
case
  when pr.active_ind = 0 or pr.end_date <= getDate() or pr.start_date > getDate() or per.perorg_status != 'AC'
    then 0
  else
    1
  end as active_status,
    pr.start_date,
    pr.end_date

FROM
    PROVIDER p,
    PROVIDER_TYPE pt,
    PERORG_ROLE pr,
    PERORG per,
    PERORG_STATUS ps,
    NAME n
WHERE
    p.provider_id = pr.perorg_role_id and
    pt.provider_type_code = p.provider_type_code and
    pr.perorg_role_type_code = 3 and
    pr.perorg_id = per.perorg_id and
    per.perorg_type_code = 'O' and
    per.active_ind = 1 and
    per.perorg_id = n.perorg_id and
    n.active_ind = 1 and
    per.perorg_status = ps.perorg_status_code
go
IF OBJECT_ID('dbo.w_providers_all_names') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.w_providers_all_names >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.w_providers_all_names >>>'
go
GRANT SELECT ON dbo.w_providers_all_names TO eqa_user
go
GRANT SELECT ON dbo.w_providers_all_names TO read_only
go
GRANT SELECT ON dbo.w_providers_all_names TO rma_users
go
GRANT SELECT ON dbo.w_providers_all_names TO web_appserver_intranet
go
