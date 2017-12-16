USE eqa_prod
go
EXEC sp_addgroup 'public'
go
GRANT SELECT ON dbo.sysobjects(name,id,uid,type,userstat,sysstat,indexdel,schemacnt,sysstat2,crdate,expdate,deltrig,instrig,updtrig,seltrig,ckfirst,cache,objspare,versionts,loginame,identburnmax,spacestate,erlchgts,sysstat3,lobcomp_lvl) TO public
go
GRANT SELECT ON dbo.sysindexes TO public
go
GRANT SELECT ON dbo.syscolumns TO public
go
GRANT SELECT ON dbo.systypes TO public
go
GRANT SELECT ON dbo.sysprocedures TO public
go
GRANT SELECT ON dbo.syscomments TO public
go
GRANT EXECUTE ON dbo.qfn_section_short_name_fix TO public
go
GRANT SELECT ON dbo.syssegments TO public
go
GRANT SELECT ON dbo.syslogs TO public
go
GRANT SELECT ON dbo.sysprotects TO public
go
GRANT SELECT ON dbo.sysusers TO public
go
GRANT SELECT ON dbo.sysalternates TO public
go
GRANT SELECT ON dbo.sysdepends TO public
go
GRANT SELECT ON dbo.syskeys TO public
go
GRANT EXECUTE ON dbo.p_fee_fix TO public
go
GRANT SELECT ON dbo.sysusermessages TO public
go
GRANT SELECT ON dbo.sysreferences TO public
go
GRANT SELECT ON dbo.sysconstraints TO public
go
GRANT EXECUTE ON dbo.p_product_price_fix TO public
go
GRANT SELECT ON dbo.systhresholds TO public
go
GRANT SELECT ON dbo.sysroles TO public
go
GRANT SELECT ON dbo.sysattributes TO public
go
GRANT EXECUTE ON dbo.MPAllocGrpDel TO public
go
GRANT SELECT ON dbo.sysslices TO public
go
GRANT SELECT ON dbo.systabstats TO public
go
GRANT SELECT ON dbo.sysstatistics TO public
go
GRANT SELECT ON dbo.sysxtypes TO public
go
GRANT SELECT ON dbo.sysjars TO public
go
GRANT SELECT ON dbo.sysqueryplans TO public
go
GRANT EXECUTE ON dbo.rs_update_lastcommit TO public
go
GRANT SELECT ON dbo.syspartitions TO public
go
GRANT SELECT ON dbo.syspartitionkeys TO public
go
GRANT EXECUTE ON dbo.p_enable_map TO public
go
GRANT EXECUTE ON dbo.p_comp_date_fix TO public
go
GRANT EXECUTE ON dbo.P_update_last_date TO public
go
GRANT EXECUTE ON dbo.rs_marker TO public
go
GRANT SELECT ON dbo.rs_threads TO public
go
GRANT EXECUTE ON dbo.p_add_fee TO public
go
GRANT EXECUTE ON dbo.p_price_fix TO public
go
GRANT EXECUTE ON dbo.p_db_zim_information_validate TO public
go
GRANT EXECUTE ON dbo.p_upd_next_amap_id TO public
go
GRANT EXECUTE ON dbo.rs_ticket TO public
go
GRANT SELECT ON dbo.vw_NFQ_STATS_Result TO public
go
GRANT DELETE ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT INSERT ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT SELECT ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT UPDATE ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT REFERENCES ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT TRANSFER TABLE ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT TRUNCATE TABLE ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT DELETE STATISTICS ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT UPDATE STATISTICS ON dbo.DATABASE_BATCH_VERSION TO public
go
GRANT SELECT ON dbo.DATABASE_VERSION TO public
go
GRANT EXECUTE ON dbo.rs_check_repl_stat TO public
go
GRANT DELETE ON dbo.rs_mat_status TO public
go
GRANT INSERT ON dbo.rs_mat_status TO public
go
GRANT SELECT ON dbo.rs_mat_status TO public
go
GRANT UPDATE ON dbo.rs_mat_status TO public
go
GRANT REFERENCES ON dbo.rs_mat_status TO public
go
GRANT TRANSFER TABLE ON dbo.rs_mat_status TO public
go
GRANT TRUNCATE TABLE ON dbo.rs_mat_status TO public
go
GRANT DELETE STATISTICS ON dbo.rs_mat_status TO public
go
GRANT UPDATE STATISTICS ON dbo.rs_mat_status TO public
go
GRANT EXECUTE ON dbo.p_add_price_fix TO public
go
GRANT EXECUTE ON dbo.p_add_debtor TO public
go
GRANT EXECUTE ON dbo.rs_ticket_v1 TO public
go
GRANT EXECUTE ON dbo.p_location_fix TO public
go
GRANT EXECUTE ON dbo.p_add_std_exmptn TO public
go
GRANT EXECUTE ON dbo.p_delete_diary_event TO public
go
GRANT EXECUTE ON dbo.p_ECM_upd_com_method TO public
go
GRANT EXECUTE ON dbo.sp_dba_monitor_batch_processing_status TO public
go
GRANT EXECUTE ON dbo.TreocircDel TO public
go
GRANT EXECUTE ON dbo.p_ins_std_context_map TO public
go
GRANT EXECUTE ON dbo.MAGUpd TO public
go
GRANT EXECUTE ON dbo.sp_dba_reprint_batch TO public
go
GRANT EXECUTE ON dbo.p_title_fix TO public
go
GRANT EXECUTE ON dbo.rs_update_threads TO public
go
GRANT EXECUTE ON dbo.rs_ticket_report TO public
go
GRANT EXECUTE ON dbo.MkrDel TO public
go
GRANT SELECT ON dbo.text_events TO public
go
GRANT EXECUTE ON dbo.MPMDel TO public
go
GRANT EXECUTE ON dbo.p_rebuild_std_coverage TO public
go
GRANT EXECUTE ON dbo.p_qfn_dates TO public
go
GRANT EXECUTE ON dbo.p_ECM_upd_name TO public
go
GRANT DELETE ON dbo.rs_ticket_history TO public
go
GRANT INSERT ON dbo.rs_ticket_history TO public
go
GRANT SELECT ON dbo.rs_ticket_history TO public
go
GRANT UPDATE ON dbo.rs_ticket_history TO public
go
GRANT REFERENCES ON dbo.rs_ticket_history TO public
go
GRANT TRANSFER TABLE ON dbo.rs_ticket_history TO public
go
GRANT TRUNCATE TABLE ON dbo.rs_ticket_history TO public
go
GRANT DELETE STATISTICS ON dbo.rs_ticket_history TO public
go
GRANT UPDATE STATISTICS ON dbo.rs_ticket_history TO public
go
GRANT SELECT ON dbo.rs_dbversion TO public
go
GRANT EXECUTE ON dbo.p_amap_fix TO public
go
GRANT EXECUTE ON dbo.p_qual_application_load TO public
go
GRANT EXECUTE ON dbo.MPMUpd TO public
go
GRANT EXECUTE ON dbo.p_update_expiry_date TO public
go
GRANT SELECT ON dbo.database_backup_date TO public
go
GRANT EXECUTE ON dbo.p_delete_note TO public
go
GRANT EXECUTE ON dbo.rs_initialize_threads TO public
go
EXEC sp_addgroup 'read_only'
go
IF EXISTS (SELECT 1 FROM sysusers WHERE uid=gid AND (environ IS NOT NULL OR name='public') AND name='read_only')
    PRINT '<<< CREATED GROUP read_only >>>'
ELSE
    PRINT '<<< FAILED CREATING GROUP read_only >>>'
go
GRANT SELECT ON dbo.PREREQUISITE_STRAND_NAME TO read_only
go
GRANT SELECT ON dbo.VW_STANDARDS TO read_only
go
GRANT SELECT ON dbo.tmp_delete_standard_input TO read_only
go
GRANT SELECT ON dbo.CYCLE_CONTEXT TO read_only
go
GRANT SELECT ON dbo.PROVIDER_COP_APPRVL TO read_only
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_PLAN TO read_only
go
GRANT SELECT ON dbo.ALLOCATION_GROUP_EXCLUDED TO read_only
go
GRANT SELECT ON dbo.PERORG_ALT_ID TO read_only
go
GRANT SELECT ON dbo.HOLD_STATE_CODE TO read_only
go
GRANT SELECT ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO read_only
go
GRANT SELECT ON dbo.EXCLUDED_SEARCH_WORDS TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PROVIDER TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_Load_NZQA_Qual_Tab TO read_only
go
GRANT SELECT ON dbo.QUAL_APP_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.WEB_STANDARDS TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Provider TO read_only
go
GRANT SELECT ON dbo.FINANCIAL_DETAIL TO read_only
go
GRANT SELECT ON dbo.QUALCHECK_RUN_STATUS TO read_only
go
GRANT SELECT ON dbo.APPLICATION_SYSTEM_TYPE TO read_only
go
GRANT SELECT ON dbo.AMAP_SCOPE_ACTION_HISTORY TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByCredits TO read_only
go
GRANT SELECT ON dbo.RELATIONSHIP TO read_only
go
GRANT SELECT ON dbo.DELIVERY_TYPE TO read_only
go
GRANT SELECT ON dbo.LANGUAGE TO read_only
go
GRANT SELECT ON dbo.BATCH_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.REPORT_PARAMETER_CONFIG TO read_only
go
GRANT SELECT ON dbo.ORDER_ITEM_STATUS TO read_only
go
GRANT SELECT ON dbo.QFN_ITEMS_LIST TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_COM_METHOD TO read_only
go
GRANT SELECT ON dbo.DIGITAL_RESULT TO read_only
go
GRANT SELECT ON dbo.RUN_DIFFERENTIAL TO read_only
go
GRANT SELECT ON dbo.ASSISTANCE_CODE TO read_only
go
GRANT SELECT ON dbo.REFUND_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.STD_CONTEXT_MAP TO read_only
go
GRANT SELECT ON dbo.SFP_ARGMT_TYPE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_pdrpt2 TO read_only
go
GRANT SELECT ON dbo.QES_INSTITUTE_TYPE TO read_only
go
GRANT SELECT ON dbo.STANDARD_INPUT TO read_only
go
GRANT SELECT ON dbo.QUAL_APPLICATION TO read_only
go
GRANT SELECT ON dbo.BOOKLET_PROCESS_TYPE TO read_only
go
GRANT SELECT ON dbo.QFN_VERSION TO read_only
go
GRANT SELECT ON dbo.SUPP_RESULT_UNALLOCATED TO read_only
go
GRANT SELECT ON dbo.MERGE_REQUEST_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.NOTE_TYPE TO read_only
go
GRANT SELECT ON dbo.QES_INSTITUTE TO read_only
go
GRANT SELECT ON dbo.LEARNER_ENROL_SPEC_ASSIST TO read_only
go
GRANT SELECT ON dbo.PERS_VOL_COUNT TO read_only
go
GRANT SELECT ON dbo.CASE_TYPE TO read_only
go
GRANT SELECT ON dbo.COM_MEDIUM TO read_only
go
GRANT SELECT ON dbo.VW_EXAM_CENTRE TO read_only
go
GRANT SELECT ON dbo.MOD_REASON_NOT_INV_BACK TO read_only
go
GRANT SELECT ON dbo.QFN_VERSION_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.COMPASSIONATE TO read_only
go
GRANT SELECT ON dbo.RELATIONSHIP_COMBO TO read_only
go
GRANT SELECT ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO read_only
go
GRANT SELECT ON dbo.RESULT_CODE TO read_only
go
GRANT SELECT ON dbo.DELIVERY_MODE_TYPE TO read_only
go
GRANT SELECT ON dbo.ENROLMENT_STATUS TO read_only
go
GRANT SELECT ON dbo.MOD_REPORT_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.SMS_DIST_LIST_CODE TO read_only
go
GRANT SELECT ON dbo.vwROLQualificationStrand TO read_only
go
GRANT SELECT ON dbo.STD_GROUP_TYPE TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_SOP TO read_only
go
GRANT SELECT ON dbo.ENTRY_SERIAL_NUMBER TO read_only
go
GRANT SELECT ON dbo.LINE_SORT_ORDER_CODE TO read_only
go
GRANT SELECT ON dbo.QFN_ACHIEVED TO read_only
go
GRANT SELECT ON dbo.CLAIM_RATE TO read_only
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.EXAM_MATERIAL TO read_only
go
GRANT SELECT ON dbo.VW_STANDARDS_SUBJECT TO read_only
go
GRANT SELECT ON dbo.VW_PERSONALISATION_LATEST TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_CRSE_QFN TO read_only
go
GRANT SELECT ON dbo.VW_IRN_STANDARDS TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerInviteVw TO read_only
go
GRANT SELECT ON dbo.REGION TO read_only
go
GRANT SELECT ON dbo.EX_MRKR_PAGE_LINE_INPUT TO read_only
go
GRANT SELECT ON dbo.MOE_NUMBER TO read_only
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_TO TO read_only
go
GRANT SELECT ON dbo.vwSRSStdResult TO read_only
go
GRANT SELECT ON dbo.STD_GROUP TO read_only
go
GRANT SELECT ON dbo.w_people TO read_only
go
GRANT SELECT ON dbo.JBM_MSG TO read_only
go
GRANT SELECT ON dbo.RISK_ISS_IND_TYPE TO read_only
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO read_only
go
GRANT SELECT ON dbo.KEY_DATE TO read_only
go
GRANT SELECT ON dbo.JBM_ID_CACHE TO read_only
go
GRANT SELECT ON dbo.MERGE_REQUEST_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.ORG_EVALUATION_COMBO TO read_only
go
GRANT SELECT ON dbo.ENTRY_REVIEW TO read_only
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE_TYPE TO read_only
go
GRANT SELECT ON dbo.ORDER_ITEM_TYPE_RULE TO read_only
go
GRANT SELECT ON dbo.JBM_ROLE TO read_only
go
GRANT SELECT ON dbo.SCHEDULE_RESULT_TYPE TO read_only
go
GRANT SELECT ON dbo.NZQA_POSITION TO read_only
go
GRANT SELECT ON dbo.BOOKLET_ACTION_TYPE TO read_only
go
GRANT SELECT ON dbo.NAME_TYPE TO read_only
go
GRANT SELECT ON dbo.PERORG_ROLE_STATUS TO read_only
go
GRANT SELECT ON dbo.COM_METHOD TO read_only
go
GRANT SELECT ON dbo.VW_OPTIONAL_STRANDS TO read_only
go
GRANT SELECT ON dbo.RECONSIDERATION_OPTION_CODE TO read_only
go
GRANT SELECT ON dbo.VW_INPUT_BATCH_ERROR_LOADED TO read_only
go
GRANT SELECT ON dbo.ADDRESS_EXCLUSION_WORD TO read_only
go
GRANT SELECT ON dbo.DIGITAL_ENTRY TO read_only
go
GRANT SELECT ON dbo.ALLOCATION_RUN_STATUS TO read_only
go
GRANT SELECT ON dbo.NZQA_BUSINESS_UNIT TO read_only
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_RUN_STATUS TO read_only
go
GRANT SELECT ON dbo.COP_SIGNATORY_STATUS_TYPE TO read_only
go
GRANT SELECT ON dbo.DEBTOR TO read_only
go
GRANT SELECT ON dbo.QFN_GRADING_TYPE TO read_only
go
GRANT SELECT ON dbo.MODERATION_MAT_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.QA_EVENT_CODE TO read_only
go
GRANT SELECT ON dbo.SPECIAL_ASSISTANCE_STATUS TO read_only
go
GRANT SELECT ON dbo.PROVISIONAL_QUALCHECK_RUN TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Framework TO read_only
go
GRANT SELECT ON dbo.PERORG_STATUS TO read_only
go
GRANT SELECT ON dbo.AMAP_CONTEXT TO read_only
go
GRANT SELECT ON dbo.QFN_SCENARIO_STD_COMPONENT TO read_only
go
GRANT SELECT ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleIndex TO read_only
go
GRANT SELECT ON dbo.ASSESS_SESS_CATG TO read_only
go
GRANT SELECT ON dbo.REPORT_INSTANCE_PARAMETER TO read_only
go
GRANT SELECT ON dbo.QFN_CHECK_RESULT_TYPE TO read_only
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO read_only
go
GRANT SELECT ON dbo.GLBL_GROWTH_ALW_PRM TO read_only
go
GRANT SELECT ON dbo.BATCH_SUMMARY_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.ORDER_ITEM TO read_only
go
GRANT SELECT ON dbo.VW_ENTRY_PERS_MARKER TO read_only
go
GRANT SELECT ON dbo.CE_CREDIT_ALLOCATION_CODE TO read_only
go
GRANT SELECT ON dbo.PAYMENT_RECONCILIATION_RUN TO read_only
go
GRANT SELECT ON dbo.REPORT_ROLE TO read_only
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_MATCH_extract TO read_only
go
GRANT SELECT ON dbo.BATCH_COMMENT TO read_only
go
GRANT SELECT ON dbo.DOUBLE_DIP_STD_MAPPING TO read_only
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_dr TO read_only
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_STATUS TO read_only
go
GRANT SELECT ON dbo.FEE_STRUCTURE TO read_only
go
GRANT SELECT ON dbo.STD_TYPE_OUTPUT TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_METHOD TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_APP_DOC_TYPE TO read_only
go
GRANT SELECT ON dbo.VW_QUAL_CHECK_RESULT_IQ TO read_only
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_CHG_HIST TO read_only
go
GRANT SELECT ON dbo.SDR_PROVIDER TO read_only
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_TYPE TO read_only
go
GRANT SELECT ON dbo.PROVIDER_CONDITION TO read_only
go
GRANT SELECT ON dbo.CFN_UPDATES TO read_only
go
GRANT SELECT ON dbo.DIARY_EVENT_REASON TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_RULE_STD_TYPE TO read_only
go
GRANT SELECT ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO read_only
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_HISTORY TO read_only
go
GRANT SELECT ON dbo.COP_APPRVL_TYPE TO read_only
go
GRANT SELECT ON dbo.dba_test_rep TO read_only
go
GRANT SELECT ON dbo.STD_GRADING_SCHEME_CODE TO read_only
go
GRANT SELECT ON dbo.JMS_USERS TO read_only
go
GRANT SELECT ON dbo.vw_MARK_INPUT_extract TO read_only
go
GRANT SELECT ON dbo.RESULT_RANKING TO read_only
go
GRANT SELECT ON dbo.SAC_FILE_UPLOAD TO read_only
go
GRANT SELECT ON dbo.MARKER_CODE TO read_only
go
GRANT SELECT ON dbo.SDR_QUAL_COMPLETION TO read_only
go
GRANT SELECT ON dbo.NOTE_COM_TYPE TO read_only
go
GRANT SELECT ON dbo.vwROLUnitResult TO read_only
go
GRANT SELECT ON dbo.RELATIONSHIP_TYPE TO read_only
go
GRANT SELECT ON dbo.ENTRY_CONTEXT TO read_only
go
GRANT SELECT ON dbo.COURSE_VERSION_STATUS TO read_only
go
GRANT SELECT ON dbo.DIARY_EVENT TO read_only
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_PROG_HIST TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_ACHV_STA_HIST TO read_only
go
GRANT SELECT ON dbo.CLAIM_ITEM_TYPE TO read_only
go
GRANT SELECT ON dbo.COURSE_VERSION_QFN_VERSION TO read_only
go
GRANT SELECT ON dbo.MARKER_CODE_SUFFIX TO read_only
go
GRANT SELECT ON dbo.QRS_STG_APPLN_OTHER_DOC TO read_only
go
GRANT SELECT ON dbo.LEARNER_INPUT_MATCH TO read_only
go
GRANT SELECT ON dbo.VW_RELATIONSHIP_CONTACT TO read_only
go
GRANT SELECT ON dbo.VW_EXAMS_ENTRY TO read_only
go
GRANT SELECT ON dbo.STD_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.FORBIDDEN_PROVIDER TO read_only
go
GRANT SELECT ON dbo.VW_IRN_QUALIFICATIONS TO read_only
go
GRANT SELECT ON dbo.QA_ACTIVITY_TYPE TO read_only
go
GRANT SELECT ON dbo.w_learners TO read_only
go
GRANT SELECT ON dbo.vwSRSStandard TO read_only
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE TO read_only
go
GRANT SELECT ON dbo.JBM_MSG_REF TO read_only
go
GRANT SELECT ON dbo.SOFTWARE_ID_CODE TO read_only
go
GRANT SELECT ON dbo.CODE_TABLE_HISTORY TO read_only
go
GRANT SELECT ON dbo.EXAM_ATTENDANCE TO read_only
go
GRANT SELECT ON dbo.MATCHING_RESULT_CODE TO read_only
go
GRANT SELECT ON dbo.AWARDING_PROVIDER_MAP TO read_only
go
GRANT SELECT ON dbo.INPUT_BATCH_ERROR TO read_only
go
GRANT SELECT ON dbo.NZQA_POSITION_TITLE TO read_only
go
GRANT SELECT ON dbo.w_learner TO read_only
go
GRANT SELECT ON dbo.EXCLUDED_ASSISTANCE_CODE TO read_only
go
GRANT SELECT ON dbo.ENTRY_SPEC_ASSIST TO read_only
go
GRANT SELECT ON dbo.ALLOCATION_METHOD TO read_only
go
GRANT SELECT ON dbo.BATCH_INPUT TO read_only
go
GRANT SELECT ON dbo.CONTACT_MERGE_RUN TO read_only
go
GRANT SELECT ON dbo.COURSE_VERSION TO read_only
go
GRANT SELECT ON dbo.FEE_TYPE TO read_only
go
GRANT SELECT ON dbo.PERSONALISATION_TYPE TO read_only
go
GRANT SELECT ON dbo.PROVIDER_COP_APPRVL_HIST TO read_only
go
GRANT SELECT ON dbo.QUAL_APP_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.COP_ACCOM_ARRANGED_TYPE TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_QUAL_LEARNERS TO read_only
go
GRANT SELECT ON dbo.RESULT TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_CENTRE_TYPE TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Provider_race TO read_only
go
GRANT SELECT ON dbo.tmp_standard_input_vw1 TO read_only
go
GRANT SELECT ON dbo.BATCH_COUNT_TYPE_CODE TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByFramewrk TO read_only
go
GRANT SELECT ON dbo.BATCH_STATUS_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.REPORT TO read_only
go
GRANT SELECT ON dbo.STD_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.QFN_SCENARIO_STRAND TO read_only
go
GRANT SELECT ON dbo.ETHNICITY TO read_only
go
GRANT SELECT ON dbo.BATCH_STATUS_MAP TO read_only
go
GRANT SELECT ON dbo.MISCONDUCT_STATUS TO read_only
go
GRANT SELECT ON dbo.RULES_GROUP TO read_only
go
GRANT SELECT ON dbo.ACCREDITATION_OPTION_CODE TO read_only
go
GRANT SELECT ON dbo.SCHEDULE_TYPE TO read_only
go
GRANT SELECT ON dbo.LEARNER_CATEGORY TO read_only
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_extract TO read_only
go
GRANT SELECT ON dbo.JMS_MESSAGES TO read_only
go
GRANT SELECT ON dbo.QRS_INSTITUTION TO read_only
go
GRANT SELECT ON dbo.CONDITION_STATUS TO read_only
go
GRANT SELECT ON dbo.PROCESS_TYPE_USED_BY_CODE TO read_only
go
GRANT SELECT ON dbo.ORDER_ITEM_CATEGORY_STATUS TO read_only
go
GRANT SELECT ON dbo.TE_REO_INDICATION TO read_only
go
GRANT SELECT ON dbo.ACRD_INHERITANCE_MAP TO read_only
go
GRANT SELECT ON dbo.JMS_SUBSCRIPTIONS TO read_only
go
GRANT SELECT ON dbo.PROVIDER_LOCALITY_CODE TO read_only
go
GRANT SELECT ON dbo.STREET_TYPE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_dr TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_EXEMPTION TO read_only
go
GRANT SELECT ON dbo.SCH_GENDER_TYPE TO read_only
go
GRANT SELECT ON dbo.COURSE_TYPE TO read_only
go
GRANT SELECT ON dbo.MOD_ASSESS_STD_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.AWARD_RECIPIENT TO read_only
go
GRANT SELECT ON dbo.vwROLStandard TO read_only
go
GRANT SELECT ON dbo.NOTE_ISSUE_STATUS TO read_only
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION_SET TO read_only
go
GRANT SELECT ON dbo.QFN_ACHIEVED_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.CLAIM_CONTRACT_ITEM TO read_only
go
GRANT SELECT ON dbo.PROVIDER_STATUS TO read_only
go
GRANT SELECT ON dbo.PROVIDER_HEAD_OFFICE TO read_only
go
GRANT SELECT ON dbo.FIN_TRANSACTION_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.VW_ORGANISATION TO read_only
go
GRANT SELECT ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO read_only
go
GRANT SELECT ON dbo.PSE_RESOURCE_GROUP_CODE TO read_only
go
GRANT SELECT ON dbo.FIN_ASSIST_TYPE TO read_only
go
GRANT SELECT ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO read_only
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES TO read_only
go
GRANT SELECT ON dbo.EX_MARKER_PAGE TO read_only
go
GRANT SELECT ON dbo.VW_PROVIDERS TO read_only
go
GRANT SELECT ON dbo.VW_QUALIFICATIONS TO read_only
go
GRANT SELECT ON dbo.w_all_standards TO read_only
go
GRANT SELECT ON dbo.CODE_TABLE TO read_only
go
GRANT SELECT ON dbo.STATS_ENTRY_PROVIDER TO read_only
go
GRANT SELECT ON dbo.QFN_CONDITION TO read_only
go
GRANT SELECT ON dbo.MESSAGE_ROLES TO read_only
go
GRANT SELECT ON dbo.COUNTRY_RISK_CODE TO read_only
go
GRANT SELECT ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.rs_lastcommit TO read_only
go
GRANT SELECT ON dbo.MARKER_STD_CONTEXT_MAP TO read_only
go
GRANT SELECT ON dbo.VW_ASSESSMENT TO read_only
go
GRANT SELECT ON dbo.ENTRY_ASSISTANCE TO read_only
go
GRANT SELECT ON dbo.AMAP TO read_only
go
GRANT SELECT ON dbo.ACCREDITATION TO read_only
go
GRANT SELECT ON dbo.COM_TYPE TO read_only
go
GRANT SELECT ON dbo.SCH_PROG_LEVEL_CODE TO read_only
go
GRANT SELECT ON dbo.REVIEW_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.QUAL_CHECK_RESULT_TYPE TO read_only
go
GRANT SELECT ON dbo.RECONSIDERATION_ENTRY TO read_only
go
GRANT SELECT ON dbo.STATS_KEY_INDICATOR TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Framework_race TO read_only
go
GRANT SELECT ON dbo.QUAL_APP_STATUS_HISTORY TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleUpdEntry TO read_only
go
GRANT SELECT ON dbo.REPORT_CONTEXT TO read_only
go
GRANT SELECT ON dbo.BATCH_STATUS TO read_only
go
GRANT SELECT ON dbo.ECA_GENDER_CODE TO read_only
go
GRANT SELECT ON dbo.LEARNER_INPUT TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ALT_ID TO read_only
go
GRANT SELECT ON dbo.ORG_PROFILE_NOTE TO read_only
go
GRANT SELECT ON dbo.STD_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.IWI_CODE TO read_only
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION TO read_only
go
GRANT SELECT ON dbo.RULES_GROUP_OPT_STD TO read_only
go
GRANT SELECT ON dbo.RETURN_TYPE TO read_only
go
GRANT SELECT ON dbo.STUDENT_TYPE TO read_only
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER TO read_only
go
GRANT SELECT ON dbo.PROV_SFP_EXEMPTION TO read_only
go
GRANT SELECT ON dbo.PAYMENT TO read_only
go
GRANT SELECT ON dbo.QFN_EXCLUSION TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_REL_TYPE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_web12 TO read_only
go
GRANT SELECT ON dbo.STATUS_REASON_CODE TO read_only
go
GRANT SELECT ON dbo.CURRENCY TO read_only
go
GRANT SELECT ON dbo.DBA_REPL_CONTROL TO read_only
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO read_only
go
GRANT SELECT ON dbo.COURSE_MONITORING_CYCLE_CODE TO read_only
go
GRANT SELECT ON dbo.PROV_RISK_ISSUE TO read_only
go
GRANT SELECT ON dbo.COND_TYPE TO read_only
go
GRANT SELECT ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.ORDER_ITEM_TYPE TO read_only
go
GRANT SELECT ON dbo.AWARD_NZQA_STATUS TO read_only
go
GRANT SELECT ON dbo.ACHIEVED_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.COMPASSIONATE_ENTRY TO read_only
go
GRANT EXECUTE ON dbo.DpSchoolResultFileGen TO read_only
go
GRANT SELECT ON dbo.PERORG_ROLE TO read_only
go
GRANT SELECT ON dbo.temp_sec_course_std_hist TO read_only
go
GRANT SELECT ON dbo.PSE_ACTIVITY_CODE TO read_only
go
GRANT SELECT ON dbo.PERORG_CASE TO read_only
go
GRANT SELECT ON dbo.RISK_CASE_TYPE TO read_only
go
GRANT SELECT ON dbo.CLAIM_CONTRACT TO read_only
go
GRANT SELECT ON dbo.NZQA_EMPLOYEE_INFO TO read_only
go
GRANT SELECT ON dbo.EXAM_MATERIAL_TYPE TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_REG_FOCUS TO read_only
go
GRANT SELECT ON dbo.COURIER_PRICE_LIST TO read_only
go
GRANT SELECT ON dbo.LEARNER_STATISTIC TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_APPLICATION TO read_only
go
GRANT SELECT ON dbo.PSE_GL_CODE TO read_only
go
GRANT SELECT ON dbo.FILE_LOCATION TO read_only
go
GRANT SELECT ON dbo.ORDER_REQUEST TO read_only
go
GRANT SELECT ON dbo.VW_EXAM_STANDARD TO read_only
go
GRANT SELECT ON dbo.QFN_ACHIEVED_ENDORSEMENT TO read_only
go
GRANT SELECT ON dbo.VW_MARKERS TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_CAA_APP TO read_only
go
GRANT SELECT ON dbo.LEAVING_CODE TO read_only
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_deletes TO read_only
go
GRANT SELECT ON dbo.ORGANISATION_LOGO TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerDeclineVw TO read_only
go
GRANT SELECT ON dbo.LEARNER TO read_only
go
GRANT SELECT ON dbo.QFN_SECTION TO read_only
go
GRANT SELECT ON dbo.ORG_PROFILE_DOCUMENT TO read_only
go
GRANT SELECT ON dbo.MARKER_PANEL_ALLOCATION_GRP TO read_only
go
GRANT SELECT ON dbo.VW_ENTRY_RECON TO read_only
go
GRANT SELECT ON dbo.JBM_COUNTER TO read_only
go
GRANT SELECT ON dbo.ORG_PERFORMANCE_CODE TO read_only
go
GRANT SELECT ON dbo.BATCH_ERROR_TOTAL TO read_only
go
GRANT SELECT ON dbo.JBM_USER TO read_only
go
GRANT SELECT ON dbo.w_providers_all_names TO read_only
go
GRANT SELECT ON dbo.MESSAGE_PROPS TO read_only
go
GRANT SELECT ON dbo.EXAM_CENTRE_WORKER TO read_only
go
GRANT SELECT ON dbo.FINANCE_TRANSACTION TO read_only
go
GRANT SELECT ON dbo.NSI_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.RECONSIDERATION_STATUS TO read_only
go
GRANT SELECT ON dbo.QRS_STG_APPLICATION TO read_only
go
GRANT SELECT ON dbo.AMAP_VERSION_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.ACADEMIC_YEAR_TYPE TO read_only
go
GRANT SELECT ON dbo.BATCH_FILE_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO read_only
go
GRANT SELECT ON dbo.MODERATOR_ROLE TO read_only
go
GRANT SELECT ON dbo.QFN_MINOR_VERSION TO read_only
go
GRANT SELECT ON dbo.MARKER_DETAIL_SNAPSHOT TO read_only
go
GRANT SELECT ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO read_only
go
GRANT SELECT ON dbo.ENDORSEMENT TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleCreate TO read_only
go
GRANT SELECT ON dbo.w_all_moderation_standards TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Learners_race TO read_only
go
GRANT SELECT ON dbo.CONTENT_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.ENDORSEMENT_VERSION TO read_only
go
GRANT SELECT ON dbo.MOD_REPORT_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.PROV_QUALCHECK_RESULT_STATUS TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Provider TO read_only
go
GRANT SELECT ON dbo.mc_vw_sqr_event TO read_only
go
GRANT SELECT ON dbo.LEARNER_MAINTENANCE_RESULT TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByLearners TO read_only
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ITEM_TYPE TO read_only
go
GRANT EXECUTE ON dbo.proc_examMarkerStatusLetters TO read_only
go
GRANT SELECT ON dbo.REPORT_INSTANCE TO read_only
go
GRANT SELECT ON dbo.BATCH_ERROR_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_CODE TO read_only
go
GRANT SELECT ON dbo.QFN_ITEMS_STD_VERSION_MAP TO read_only
go
GRANT SELECT ON dbo.QUAL_SYSTEM_FRAMEWORK TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_NAME TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_CREDIT_CATG TO read_only
go
GRANT SELECT ON dbo.GLOBAL_NON_BUFFER_PRM TO read_only
go
GRANT SELECT ON dbo.RISK_STATUS TO read_only
go
GRANT SELECT ON dbo.temp_sqr_event TO read_only
go
GRANT SELECT ON dbo.QFN TO read_only
go
GRANT SELECT ON dbo.LEARNER_ENROLMENT TO read_only
go
GRANT SELECT ON dbo.FINANCE_TRANSACTION_NSN TO read_only
go
GRANT SELECT ON dbo.EXAM_MTL_FILE_INPUT TO read_only
go
GRANT SELECT ON dbo.COUNTRY_CODE TO read_only
go
GRANT SELECT ON dbo.BOOKLET_RETRIEVAL TO read_only
go
GRANT SELECT ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO read_only
go
GRANT SELECT ON dbo.PERORG_ROLE_AVLBL_REGION TO read_only
go
GRANT SELECT ON dbo.QES_INSTITUTE_SECTION TO read_only
go
GRANT SELECT ON dbo.ALLOCATION_RUN TO read_only
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_web11 TO read_only
go
GRANT SELECT ON dbo.CASE_TYPE_STATUS_COMBO TO read_only
go
GRANT SELECT ON dbo.RISK_ISSUE_STATUS TO read_only
go
GRANT SELECT ON dbo.MOD_ROLE_STATUS_REASON TO read_only
go
GRANT SELECT ON dbo.STD_EXEMPTION TO read_only
go
GRANT SELECT ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO read_only
go
GRANT SELECT ON dbo.NOTE_SUBJECT_TYPE TO read_only
go
GRANT SELECT ON dbo.STD_GRADING_TYPE TO read_only
go
GRANT SELECT ON dbo.MARKER_TRANSFER_HISTORY TO read_only
go
GRANT SELECT ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_pdtec2 TO read_only
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_LINE TO read_only
go
GRANT SELECT ON dbo.NZQA_ORG_UNIT_TYPE TO read_only
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_changes_t TO read_only
go
GRANT SELECT ON dbo.vwROLScholResult TO read_only
go
GRANT SELECT ON dbo.COMPASSIONATE_PEER TO read_only
go
GRANT SELECT ON dbo.ENTRY_SEC_COURSE_HIST TO read_only
go
GRANT SELECT ON dbo.DELIVERY_SITE_STATUS TO read_only
go
GRANT SELECT ON dbo.MOD_REPORT_COMP_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.MOD_REBATE_RATE TO read_only
go
GRANT SELECT ON dbo.PERORG_ROLE_TYPE TO read_only
go
GRANT SELECT ON dbo.SEC_COURSE_STD_HIST TO read_only
go
GRANT SELECT ON dbo.NOTE_ISSUE_RESP_TYPE TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_REG_EXEMPTION TO read_only
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION_STATUS TO read_only
go
GRANT SELECT ON dbo.CLAIM_STATUS TO read_only
go
GRANT SELECT ON dbo.COURSE_VERSION_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.EXAM_MATERIAL_STATUS TO read_only
go
GRANT SELECT ON dbo.PAGE_DISPLAY_TYPE TO read_only
go
GRANT SELECT ON dbo.PANEL_AD_REGION TO read_only
go
GRANT SELECT ON dbo.PROV_NOTE_ISSUE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_sqr_event_dr TO read_only
go
GRANT SELECT ON dbo.VW_ALL_STANDARDS TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_APPLN_CONTACT TO read_only
go
GRANT SELECT ON dbo.NOTE_ISSUE_SEVERITY_CODE TO read_only
go
GRANT SELECT ON dbo.CHECK_MOD_SELECT_STATUS TO read_only
go
GRANT SELECT ON dbo.KEY_LOG TO read_only
go
GRANT SELECT ON dbo.NO_QFN_REASON_CODE TO read_only
go
GRANT SELECT ON dbo.SSB_TYPE TO read_only
go
GRANT SELECT ON dbo.OUTSTANDING_FEE_LODGEMENT TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerLateAppointmentVw TO read_only
go
GRANT SELECT ON dbo.EX_MRKR_PAGE_INPUT TO read_only
go
GRANT SELECT ON dbo.CFN_CATEGORY_STATUS TO read_only
go
GRANT SELECT ON dbo.JBM_DUAL TO read_only
go
GRANT SELECT ON dbo.vwSRSAchievement TO read_only
go
GRANT SELECT ON dbo.MODERATOR TO read_only
go
GRANT SELECT ON dbo.REGION_GROUP TO read_only
go
GRANT SELECT ON dbo.PROXIMITY_CODE TO read_only
go
GRANT SELECT ON dbo.QFN_TYPE TO read_only
go
GRANT SELECT ON dbo.PERORG_ROLE_HISTORY TO read_only
go
GRANT SELECT ON dbo.STD_VERSION_PUB_HISTORY TO read_only
go
GRANT SELECT ON dbo.LVL TO read_only
go
GRANT SELECT ON dbo.AMAP_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.PERSONALISATION_EXCEPTION TO read_only
go
GRANT SELECT ON dbo.VW_QUAL_STRANDS TO read_only
go
GRANT SELECT ON dbo.RECONSIDERATION_RUN TO read_only
go
GRANT SELECT ON dbo.VW_STANDARD_INPUT_WITH_ERROR TO read_only
go
GRANT SELECT ON dbo.QFN_RULE TO read_only
go
GRANT SELECT ON dbo.MODERATOR_CAPACITY TO read_only
go
GRANT SELECT ON dbo.QFN_VERSION_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_COMPONENT TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_COMPONENT_PEP TO read_only
go
GRANT SELECT ON dbo.QFN_PREQ_EXEMPTION_STRAND TO read_only
go
GRANT SELECT ON dbo.MODERATION_REPORT_COMPONENT TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_Registered_Extract TO read_only
go
GRANT SELECT ON dbo.QUAL_APP_STD_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.IR330 TO read_only
go
GRANT SELECT ON dbo.PERORG_ALT_ID_TYPE TO read_only
go
GRANT SELECT ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO read_only
go
GRANT SELECT ON dbo.SEARCH_CONTEXT TO read_only
go
GRANT SELECT ON dbo.PERSONALISATION_RUN TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_TYPE TO read_only
go
GRANT SELECT ON dbo.PROV_QUALCHECK_RESULT TO read_only
go
GRANT SELECT ON dbo.NEXT_ID TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Framework TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleUpdLrn TO read_only
go
GRANT SELECT ON dbo.MODERATION_REPORT TO read_only
go
GRANT SELECT ON dbo.QFN_RULE_TYPE TO read_only
go
GRANT SELECT ON dbo.RESULT_COMPONENT_QUESTION TO read_only
go
GRANT SELECT ON dbo.BATCH_ERROR_SEVERITY TO read_only
go
GRANT SELECT ON dbo.REPORT_ITERATION_MODE TO read_only
go
GRANT SELECT ON dbo.QFN_SCENARIO TO read_only
go
GRANT SELECT ON dbo.REPORT_TYPE TO read_only
go
GRANT SELECT ON dbo.PROVIDER TO read_only
go
GRANT SELECT ON dbo.TEC_COURSE TO read_only
go
GRANT SELECT ON dbo.CLAIM_UNIT_QUANTITY TO read_only
go
GRANT SELECT ON dbo.RES_STAT_VERIFICATION_CODE TO read_only
go
GRANT SELECT ON dbo.PAYMENT_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.PROV_SFP_ARGMT TO read_only
go
GRANT SELECT ON dbo.ADDL_VOLUME_TYPE TO read_only
go
GRANT SELECT ON dbo.STD_GRAD_SCHEME_STD_TYPE TO read_only
go
GRANT SELECT ON dbo.JMS_ROLES TO read_only
go
GRANT SELECT ON dbo.SCH_DECILE_CODE TO read_only
go
GRANT SELECT ON dbo.CASE_STATUS TO read_only
go
GRANT SELECT ON dbo.COM_COMBO TO read_only
go
GRANT SELECT ON dbo.MOD_CAPACITY_REASON_CODE TO read_only
go
GRANT SELECT ON dbo.ORDER_ITEM_CATEGORY TO read_only
go
GRANT SELECT ON dbo.PRODUCT_TYPE TO read_only
go
GRANT SELECT ON dbo.SIZE_CATEGORY TO read_only
go
GRANT SELECT ON dbo.ORG_EVALUATION_TYPE TO read_only
go
GRANT SELECT ON dbo.COMPASSIONATE_STATUS TO read_only
go
GRANT SELECT ON dbo.SCH_SUB_TYPE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_web11 TO read_only
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO read_only
go
GRANT SELECT ON dbo.COURSE_VERSION_STD TO read_only
go
GRANT SELECT ON dbo.RISK_ISSUE_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.AMAP_VERSION TO read_only
go
GRANT SELECT ON dbo.DIARY_EVENT_TYPE TO read_only
go
GRANT SELECT ON dbo.MOD_REPORT_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.vwROLQualification TO read_only
go
GRANT SELECT ON dbo.EXCEPTION_ORN_TYPE TO read_only
go
GRANT SELECT ON dbo.SECONDARY_COURSE TO read_only
go
GRANT SELECT ON dbo.SECONDARY_COURSE_HIST TO read_only
go
GRANT SELECT ON dbo.SDR_COURSE TO read_only
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_TYPE TO read_only
go
GRANT SELECT ON dbo.MARK_INPUT TO read_only
go
GRANT SELECT ON dbo.SALUTATION TO read_only
go
GRANT SELECT ON dbo.NZPOST_HUB TO read_only
go
GRANT SELECT ON dbo.CLAIM_QUANTITY_TYPE TO read_only
go
GRANT SELECT ON dbo.PROVIDER_DEREG_REASON_CODE TO read_only
go
GRANT SELECT ON dbo.LINE_ORIGIN_TYPE TO read_only
go
GRANT SELECT ON dbo.PROVIDER_KVP TO read_only
go
GRANT SELECT ON dbo.VW_MARKER_ALLOCATION_GROUP TO read_only
go
GRANT SELECT ON dbo.dba_pxy_next_id_web12 TO read_only
go
GRANT SELECT ON dbo.dba_pxy_sqr_event_web1 TO read_only
go
GRANT SELECT ON dbo.GENDER_CODE TO read_only
go
GRANT SELECT ON dbo.JOINING_WORDS TO read_only
go
GRANT SELECT ON dbo.BATCH_PROFILE TO read_only
go
GRANT SELECT ON dbo.NOTE_ISSUE_SUB_TYPE TO read_only
go
GRANT SELECT ON dbo.ZERO_TO_99 TO read_only
go
GRANT SELECT ON dbo.EX_MRKR_BATCH_INPUT TO read_only
go
GRANT SELECT ON dbo.QFN_ORGANISATION_ROLE TO read_only
go
GRANT SELECT ON dbo.VW_IRN_RESULTS TO read_only
go
GRANT SELECT ON dbo.QFN_CERT TO read_only
go
GRANT SELECT ON dbo.PROCESS_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.STD_GROUP_OWNER_CODE TO read_only
go
GRANT SELECT ON dbo.vwSRSLearner TO read_only
go
GRANT SELECT ON dbo.KEY_DATE_TYPE TO read_only
go
GRANT SELECT ON dbo.STATS_ENTRY_PROVIDER_RESULT TO read_only
go
GRANT SELECT ON dbo.MERGE_REQUEST TO read_only
go
GRANT SELECT ON dbo.QUAL_CHECK_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.MARKING_SCHEME_TYPE TO read_only
go
GRANT SELECT ON dbo.temp1 TO read_only
go
GRANT SELECT ON dbo.QUAL_PUBLICATION_CODE TO read_only
go
GRANT SELECT ON dbo.QFN_RULE_CATEGORY TO read_only
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO read_only
go
GRANT SELECT ON dbo.NAME_DOB_VER_CODE TO read_only
go
GRANT SELECT ON dbo.MODERATION_REPORT_JUDGEMENT TO read_only
go
GRANT SELECT ON dbo.AMAP_VERSION_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.ACADEMIC_YEAR TO read_only
go
GRANT SELECT ON dbo.BREACH_CATEGORY TO read_only
go
GRANT SELECT ON dbo.PERORG_TYPE TO read_only
go
GRANT SELECT ON dbo.VW_ARC_INPUT_BATCH_ERROR TO read_only
go
GRANT SELECT ON dbo.PICKUP_TYPE TO read_only
go
GRANT SELECT ON dbo.NAME TO read_only
go
GRANT SELECT ON dbo.HOOKFEE_OVERRIDE_TYPE TO read_only
go
GRANT SELECT ON dbo.AMAP_COVERAGE TO read_only
go
GRANT SELECT ON dbo.QFN_STATUS_HISTORY TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_Create_NZQA_Qual_Tab TO read_only
go
GRANT SELECT ON dbo.AWARD_TYPE TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_NZQA_QUAL_LEARNERS TO read_only
go
GRANT SELECT ON dbo.PROVIDER_COP_ACCOM_OPTION TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION TO read_only
go
GRANT SELECT ON dbo.RESULT_COMPONENT_QN_TYPE TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Prov_race TO read_only
go
GRANT SELECT ON dbo.REPORT_CATEGORY TO read_only
go
GRANT SELECT ON dbo.tmp_standard_input_vw2 TO read_only
go
GRANT SELECT ON dbo.COURIER_ZONE_CODE TO read_only
go
GRANT SELECT ON dbo.QFN_SCENARIO_QFN_COMPONENT TO read_only
go
GRANT SELECT ON dbo.MODERATION_SUBMISSION_DATE TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptCall TO read_only
go
GRANT SELECT ON dbo.EXAM_MATERIAL_CMPT TO read_only
go
GRANT SELECT ON dbo.RESULT_COMPONENT_LINK TO read_only
go
GRANT SELECT ON dbo.BATCH_SUMMARY_TOTAL TO read_only
go
GRANT SELECT ON dbo.ORDER_ITEM_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.AMAP_VER_QA_EVENT_HISTORY TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_RELATIONSHIP TO read_only
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_HEADER TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_APP_TYPE TO read_only
go
GRANT SELECT ON dbo.OUTPUT_TYPE TO read_only
go
GRANT SELECT ON dbo.SEVERITY TO read_only
go
GRANT SELECT ON dbo.QFN_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.EVALUATION_REASON_CODE TO read_only
go
GRANT SELECT ON dbo.JMS_TRANSACTIONS TO read_only
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_STATUS TO read_only
go
GRANT SELECT ON dbo.CONDITION_TYPE TO read_only
go
GRANT SELECT ON dbo.CFN_SYSTEM_TYPE TO read_only
go
GRANT SELECT ON dbo.VW_ALLOCATION_GROUP_MARKERS TO read_only
go
GRANT SELECT ON dbo.TIMERS TO read_only
go
GRANT SELECT ON dbo.MARKER_ALLOCATION_GROUP TO read_only
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO read_only
go
GRANT SELECT ON dbo.DEAD_MESSAGE_QUEUE TO read_only
go
GRANT SELECT ON dbo.MODERATION_MAT_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.vwROLLearner TO read_only
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_PROGRESS TO read_only
go
GRANT SELECT ON dbo.PROVIDER_TYPE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_web12 TO read_only
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO read_only
go
GRANT SELECT ON dbo.PROVIDER_FOCUS_CODE TO read_only
go
GRANT SELECT ON dbo.vw_set TO read_only
go
GRANT SELECT ON dbo.RECOGNITION_BODY_CODE TO read_only
go
GRANT SELECT ON dbo.MOD_FORBIDDEN_PROVIDER TO read_only
go
GRANT SELECT ON dbo.QFN_PLUGIN_RULE_TYPE TO read_only
go
GRANT SELECT ON dbo.BATCH_ERROR_CODE TO read_only
go
GRANT SELECT ON dbo.PROV_LRNR_CATEGORY TO read_only
go
GRANT SELECT ON dbo.STD TO read_only
go
GRANT SELECT ON dbo.STD_VER_QA_EVENT_HISTORY TO read_only
go
GRANT SELECT ON dbo.CLAIM_ITEM TO read_only
go
GRANT SELECT ON dbo.VW_IRN_SCHOOL_EXCLUDES TO read_only
go
GRANT SELECT ON dbo.dba_pxy_next_id_web11 TO read_only
go
GRANT SELECT ON dbo.VW_QFN_ACHIEVED TO read_only
go
GRANT SELECT ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO read_only
go
GRANT SELECT ON dbo.ORG_QA_ACTIVITY TO read_only
go
GRANT SELECT ON dbo.TAX_CODE TO read_only
go
GRANT SELECT ON dbo.FORBIDDEN_LEARNER TO read_only
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES_GRADE_AVG TO read_only
go
GRANT SELECT ON dbo.PERSONALISATION_RUN_STATUS TO read_only
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_adds TO read_only
go
GRANT SELECT ON dbo.MEMO_OF_AGREEMENT TO read_only
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ROW TO read_only
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_FROM TO read_only
go
GRANT SELECT ON dbo.W_ASSESSMENT_CENTRE TO read_only
go
GRANT SELECT ON dbo.RECONSIDERATION_PAGE TO read_only
go
GRANT SELECT ON dbo.QFN_VER_QA_EVENT_HISTORY TO read_only
go
GRANT SELECT ON dbo.CODE_TABLE_CATG TO read_only
go
GRANT SELECT ON dbo.STD_GROUP_COVERAGE TO read_only
go
GRANT SELECT ON dbo.ORGANISATION_TYPE TO read_only
go
GRANT SELECT ON dbo.JBM_TX TO read_only
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_STATUS TO read_only
go
GRANT SELECT ON dbo.ORG_EVALUATION_CATG TO read_only
go
GRANT SELECT ON dbo.EXAM_ABSENT_SCRIPT TO read_only
go
GRANT SELECT ON dbo.JBM_POSTOFFICE TO read_only
go
GRANT SELECT ON dbo.SQR_EVENT TO read_only
go
GRANT SELECT ON dbo.MESSAGE_SELECTOR TO read_only
go
GRANT SELECT ON dbo.AMAP_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.BUILD_TAG TO read_only
go
GRANT SELECT ON dbo.ALLOCATION_GROUP TO read_only
go
GRANT SELECT ON dbo.CONTACT_MERGE_RUN_STATUS TO read_only
go
GRANT SELECT ON dbo.QUAL_CHECK_RESULT TO read_only
go
GRANT SELECT ON dbo.ATTAINMENT_CODE TO read_only
go
GRANT SELECT ON dbo.w_markers TO read_only
go
GRANT SELECT ON dbo.PERSONALISATION_RUN_TYPE TO read_only
go
GRANT SELECT ON dbo.QA_APRV_RATING_CODE TO read_only
go
GRANT SELECT ON dbo.REVIEW_REASON_CODE TO read_only
go
GRANT SELECT ON dbo.EQA_SETTING TO read_only
go
GRANT SELECT ON dbo.PERORG TO read_only
go
GRANT SELECT ON dbo.SCHOOL_ASSISTANCE_CODE TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_Load_Qual_workTab TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Frame_race TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByResults TO read_only
go
GRANT SELECT ON dbo.AUDIT_TRANSACTION TO read_only
go
GRANT SELECT ON dbo.CantyFileRptVw TO read_only
go
GRANT SELECT ON dbo.REPORT_FIELD_TYPE TO read_only
go
GRANT SELECT ON dbo.EXAM_MTL_EVENT TO read_only
go
GRANT SELECT ON dbo.PROVIDER_IA_RESULT TO read_only
go
GRANT SELECT ON dbo.EXAM_CENTRE_ALLOC_RULE TO read_only
go
GRANT SELECT ON dbo.ETHNICITY_CODE TO read_only
go
GRANT SELECT ON dbo.GLOBAL_BUFFER_PRM TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_RQMT_CODE TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ROLE TO read_only
go
GRANT SELECT ON dbo.STD_MINOR_VERSION TO read_only
go
GRANT SELECT ON dbo.vw_ssb_name_status TO read_only
go
GRANT SELECT ON dbo.CONTEXT_CODE TO read_only
go
GRANT SELECT ON dbo.IWI TO read_only
go
GRANT SELECT ON dbo.CFN_DEPTH_TYPE TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_RULE TO read_only
go
GRANT SELECT ON dbo.MISCONDUCT_TYPE TO read_only
go
GRANT SELECT ON dbo.RUN_AFTER_TYPE TO read_only
go
GRANT SELECT ON dbo.COST_ALLOCATION TO read_only
go
GRANT SELECT ON dbo.QRS_APPLICANT TO read_only
go
GRANT SELECT ON dbo.QFN_CLASS_CODE TO read_only
go
GRANT SELECT ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_CONTACT_TYPE TO read_only
go
GRANT SELECT ON dbo.TE_REO_CIRCULAR TO read_only
go
GRANT SELECT ON dbo.ZIM_PERSONALISATION_RUN TO read_only
go
GRANT SELECT ON dbo.ASSESS_SESSION_RELATIONSHIP TO read_only
go
GRANT SELECT ON dbo.SDR_TEC_QUAL TO read_only
go
GRANT SELECT ON dbo.DIARY_EVENT_UPDATE_TYPE TO read_only
go
GRANT SELECT ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO read_only
go
GRANT SELECT ON dbo.ENDR_RESULT_DETAIL TO read_only
go
GRANT SELECT ON dbo.sysquerymetrics TO read_only
go
GRANT SELECT ON dbo.SECONDARY_COURSE_INPUT TO read_only
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO read_only
go
GRANT SELECT ON dbo.COURSE_MONITORING_STATUS TO read_only
go
GRANT SELECT ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_CHK_STATUS TO read_only
go
GRANT SELECT ON dbo.AWARD_DETAIL TO read_only
go
GRANT SELECT ON dbo.STD_VERSION TO read_only
go
GRANT SELECT ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.ORG_EVALUATION TO read_only
go
GRANT SELECT ON dbo.STD_VERSION_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.PAYMENT_REFUND TO read_only
go
GRANT SELECT ON dbo.NOTE_ISSUE_TYPE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_dr_sysobjects TO read_only
go
GRANT SELECT ON dbo.NQAF_STG_REG_APP TO read_only
go
GRANT SELECT ON dbo.VW_STD_GROUP TO read_only
go
GRANT SELECT ON dbo.PROVIDER_FOCUS TO read_only
go
GRANT SELECT ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_next_id_pdrpt2 TO read_only
go
GRANT SELECT ON dbo.FIN_TRANSACTION_TYPE_CODE TO read_only
go
GRANT SELECT ON dbo.VW_COMMON_QUALIFICATION TO read_only
go
GRANT SELECT ON dbo.ACCREDITATION_EXTENSION_RUN TO read_only
go
GRANT SELECT ON dbo.FIN_ASSIST_APPROVED TO read_only
go
GRANT SELECT ON dbo.w_providers TO read_only
go
GRANT SELECT ON dbo.PERSON_CLAIM TO read_only
go
GRANT SELECT ON dbo.VW_PEOPLE TO read_only
go
GRANT SELECT ON dbo.ACCREDITED_ITEM TO read_only
go
GRANT SELECT ON dbo.QA_OUTCOME_TYPE TO read_only
go
GRANT SELECT ON dbo.LEARNER_ASSESSMENT_CENTRE TO read_only
go
GRANT SELECT ON dbo.QFN_PREREQUISITE TO read_only
go
GRANT SELECT ON dbo.w_all_providers TO read_only
go
GRANT SELECT ON dbo.CLAIM_UNIT TO read_only
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ITEM TO read_only
go
GRANT SELECT ON dbo.LODGEMENT_DETAIL TO read_only
go
GRANT SELECT ON dbo.QFN_VERSION_CLASSIFICATION TO read_only
go
GRANT SELECT ON dbo.LEARNER_SORT_CODE_UNALLOC TO read_only
go
GRANT SELECT ON dbo.STD_GROUP_CFN_MAPPING TO read_only
go
GRANT SELECT ON dbo.CERTIFICATE_TYPE TO read_only
go
GRANT SELECT ON dbo.MARKER_SUBMISSION_STATUS TO read_only
go
GRANT SELECT ON dbo.MESSAGE_QUEUE TO read_only
go
GRANT SELECT ON dbo.BATCH_SUMMARY_EXCLUSION TO read_only
go
GRANT SELECT ON dbo.PAID_CODE TO read_only
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_STD TO read_only
go
GRANT SELECT ON dbo.VW_STD_VERSIONS_WITH_LEVEL TO read_only
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO read_only
go
GRANT SELECT ON dbo.QRS_INSTITUTION_QFN TO read_only
go
GRANT SELECT ON dbo.CONTACT_MERGE_DETAIL TO read_only
go
GRANT SELECT ON dbo.ENROLMENT_FEE TO read_only
go
GRANT SELECT ON dbo.QFN_SCENARIO_COMP_STRAND TO read_only
go
GRANT SELECT ON dbo.MARKER_PANEL TO read_only
go
GRANT SELECT ON dbo.EQA_SETTING_HISTORY TO read_only
go
GRANT SELECT ON dbo.QFN_COND_OPERATOR TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_Create_Qual_Tab TO read_only
go
GRANT SELECT ON dbo.COP_ACCOM_OPTION_TYPE TO read_only
go
GRANT SELECT ON dbo.QFN_VER_ENDORSEMENT_VER TO read_only
go
GRANT SELECT ON dbo.MARKER TO read_only
go
GRANT SELECT ON dbo.QFN_ORG_ROLE_TYPE TO read_only
go
GRANT SELECT ON dbo.QRS_STG_APPLN_QFN TO read_only
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Learn_race TO read_only
go
GRANT SELECT ON dbo.EXAM_MATERIALS_CODE TO read_only
go
GRANT SELECT ON dbo.ASSMT_SESS_COMP_MATERIAL TO read_only
go
GRANT SELECT ON dbo.SCHOOL_QUALCHECK_STATUS TO read_only
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleInsert TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_TYPE TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_CENTRE TO read_only
go
GRANT SELECT ON dbo.CFN_CATEGORY_STATUS_HISTORY TO read_only
go
GRANT SELECT ON dbo.QFN_SECTION_TYPE TO read_only
go
GRANT SELECT ON dbo.ENTRY TO read_only
go
GRANT SELECT ON dbo.QFN_ITEMS_CFN_MAP TO read_only
go
GRANT SELECT ON dbo.REGISTER_COMPLIANT_CODE TO read_only
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG TO read_only
go
GRANT SELECT ON dbo.REPORT_STATUS TO read_only
go
GRANT SELECT ON dbo.ORDER_NOTE TO read_only
go
GRANT SELECT ON dbo.SUPP_RESULT_ALLOCATED TO read_only
go
GRANT SELECT ON dbo.FINANCIAL_DETAIL_TYPE TO read_only
go
GRANT SELECT ON dbo.STD_VERSION_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.RESULT_COMPONENT TO read_only
go
GRANT SELECT ON dbo.MOE_YEAR_LEVEL_CODE TO read_only
go
GRANT SELECT ON dbo.SFP_ARGMT_SUB_TYPE TO read_only
go
GRANT SELECT ON dbo.PAYMENT_STATUS TO read_only
go
GRANT SELECT ON dbo.RESULT_TYPE TO read_only
go
GRANT SELECT ON dbo.QFN_VERSION_PUB_HISTORY TO read_only
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_pdtec2 TO read_only
go
GRANT SELECT ON dbo.SFP_EXEMPTION_TYPE TO read_only
go
GRANT SELECT ON dbo.PERORG_ROLE_PANEL_MMBR TO read_only
go
GRANT SELECT ON dbo.PAYMENT_METHOD TO read_only
go
GRANT SELECT ON dbo.SCH_AUTHORITY_CODE TO read_only
go
GRANT SELECT ON dbo.SCH_TYPE TO read_only
go
GRANT SELECT ON dbo.COURSE TO read_only
go
GRANT SELECT ON dbo.MOD_ROLE_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.AWARD_EXTERNAL_STATUS TO read_only
go
GRANT SELECT ON dbo.mc_compare_accedited_item TO read_only
go
GRANT SELECT ON dbo.RISK_ISSUE_INDEX_HIST TO read_only
go
GRANT SELECT ON dbo.WITHDRAWN_METHOD TO read_only
go
GRANT SELECT ON dbo.ORG_EVALUATION_HISTORY TO read_only
go
GRANT SELECT ON dbo.latency_test TO read_only
go
GRANT SELECT ON dbo.PAYMENT_PRODUCT TO read_only
go
GRANT SELECT ON dbo.NOTE_ISSUE_STATUS_HIST TO read_only
go
GRANT SELECT ON dbo.PSE_ELEMENT_CODE TO read_only
go
GRANT SELECT ON dbo.ORG_LEGAL_STATUS TO read_only
go
GRANT SELECT ON dbo.SOP_MILESTONE TO read_only
go
GRANT SELECT ON dbo.dba_pxy_next_id_dr TO read_only
go
GRANT SELECT ON dbo.MARKER_CATEGORY TO read_only
go
GRANT SELECT ON dbo.SPER_YTD_RECON_LEARNER TO read_only
go
GRANT SELECT ON dbo.LEARNER_STATISTIC_TYPE TO read_only
go
GRANT SELECT ON dbo.PAYMENT_TYPE TO read_only
go
GRANT SELECT ON dbo.ALLOCATION_WORKTABLE TO read_only
go
GRANT SELECT ON dbo.PSE_COST_CENTRE_CODE TO read_only
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_SUBJ TO read_only
go
GRANT SELECT ON dbo.PAGE_INPUT_STATUS TO read_only
go
GRANT SELECT ON dbo.VW_LEARNERS TO read_only
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_changes TO read_only
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_OVERRIDE TO read_only
go
GRANT SELECT ON dbo.QFN_SECTION_ACHIEVED TO read_only
go
GRANT SELECT ON dbo.RECONSIDERATION_RUN_STATUS TO read_only
go
GRANT SELECT ON dbo.ExamsMarkerAcceptVw TO read_only
go
GRANT SELECT ON dbo.LEARNER_SORT_CODE TO read_only
go
GRANT SELECT ON dbo.CFN_CATEGORY TO read_only
go
GRANT SELECT ON dbo.CONTEXT_TYPE TO read_only
go
GRANT SELECT ON dbo.AMAP_SCOPE TO read_only
go
GRANT SELECT ON dbo.vwSRSSummary TO read_only
go
GRANT SELECT ON dbo.STD_GROUP_STD_MAPPING TO read_only
go
GRANT SELECT ON dbo.CUT_SCORE_STATUS TO read_only
go
GRANT SELECT ON dbo.QUAL_APP_APP_MAPPING TO read_only
go
GRANT SELECT ON dbo.NZQA_ORG_UNIT TO read_only
go
GRANT SELECT ON dbo.MESSAGE_LISTENER TO read_only
go
GRANT SELECT ON dbo.SRS_REQUEST TO read_only
go
GRANT SELECT ON dbo.SESSION_PRE_PERS_ADDL_VOL TO read_only
go
GRANT SELECT ON dbo.AMAP_VERSION_PUB_HISTORY TO read_only
go
GRANT SELECT ON dbo.QFN_RULE_STD_VER TO read_only
go
GRANT SELECT ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO read_only
go
GRANT SELECT ON dbo.CRSE_ENDR_RESULT TO read_only
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO read_only
go
GRANT SELECT ON dbo.PERORG_ROLE_COMBO TO read_only
go
GRANT SELECT ON dbo.NSI_INSTRUCTION_CODE TO read_only
go
EXEC sp_addgroup 'rma_users'
go
IF EXISTS (SELECT 1 FROM sysusers WHERE uid=gid AND (environ IS NOT NULL OR name='public') AND name='rma_users')
    PRINT '<<< CREATED GROUP rma_users >>>'
ELSE
    PRINT '<<< FAILED CREATING GROUP rma_users >>>'
go
GRANT SELECT ON dbo.PREREQUISITE_STRAND_NAME TO rma_users
go
GRANT SELECT ON dbo.VW_STANDARDS TO rma_users
go
GRANT SELECT ON dbo.tmp_delete_standard_input TO rma_users
go
GRANT SELECT ON dbo.CYCLE_CONTEXT TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_COP_APPRVL TO rma_users
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_PLAN TO rma_users
go
GRANT SELECT ON dbo.ALLOCATION_GROUP_EXCLUDED TO rma_users
go
GRANT SELECT ON dbo.PERORG_ALT_ID TO rma_users
go
GRANT SELECT ON dbo.HOLD_STATE_CODE TO rma_users
go
GRANT SELECT ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO rma_users
go
GRANT SELECT ON dbo.EXCLUDED_SEARCH_WORDS TO rma_users
go
GRANT SELECT ON dbo.VW_RESMAN_PROVIDER TO rma_users
go
GRANT SELECT ON dbo.QUAL_APP_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.WEB_STANDARDS TO rma_users
go
GRANT SELECT ON dbo.FINANCIAL_DETAIL TO rma_users
go
GRANT SELECT ON dbo.QUALCHECK_RUN_STATUS TO rma_users
go
GRANT SELECT ON dbo.APPLICATION_SYSTEM_TYPE TO rma_users
go
GRANT SELECT ON dbo.AMAP_SCOPE_ACTION_HISTORY TO rma_users
go
GRANT SELECT ON dbo.RELATIONSHIP TO rma_users
go
GRANT SELECT ON dbo.DELIVERY_TYPE TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERRecordCounts TO rma_users
go
GRANT SELECT ON dbo.LANGUAGE TO rma_users
go
GRANT SELECT ON dbo.BATCH_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.REPORT_PARAMETER_CONFIG TO rma_users
go
GRANT SELECT ON dbo.ORDER_ITEM_STATUS TO rma_users
go
GRANT SELECT ON dbo.QFN_ITEMS_LIST TO rma_users
go
GRANT SELECT ON dbo.VW_RESMAN_COM_METHOD TO rma_users
go
GRANT SELECT ON dbo.DIGITAL_RESULT TO rma_users
go
GRANT SELECT ON dbo.RUN_DIFFERENTIAL TO rma_users
go
GRANT SELECT ON dbo.ASSISTANCE_CODE TO rma_users
go
GRANT SELECT ON dbo.REFUND_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.STD_CONTEXT_MAP TO rma_users
go
GRANT SELECT ON dbo.SFP_ARGMT_TYPE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_pdrpt2 TO rma_users
go
GRANT SELECT ON dbo.QES_INSTITUTE_TYPE TO rma_users
go
GRANT SELECT ON dbo.STANDARD_INPUT TO rma_users
go
GRANT SELECT ON dbo.QUAL_APPLICATION TO rma_users
go
GRANT SELECT ON dbo.BOOKLET_PROCESS_TYPE TO rma_users
go
GRANT SELECT ON dbo.QFN_VERSION TO rma_users
go
GRANT SELECT ON dbo.SUPP_RESULT_UNALLOCATED TO rma_users
go
GRANT SELECT ON dbo.MERGE_REQUEST_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.NOTE_TYPE TO rma_users
go
GRANT SELECT ON dbo.QES_INSTITUTE TO rma_users
go
GRANT SELECT ON dbo.LEARNER_ENROL_SPEC_ASSIST TO rma_users
go
GRANT SELECT ON dbo.PERS_VOL_COUNT TO rma_users
go
GRANT SELECT ON dbo.CASE_TYPE TO rma_users
go
GRANT SELECT ON dbo.COM_MEDIUM TO rma_users
go
GRANT SELECT ON dbo.VW_EXAM_CENTRE TO rma_users
go
GRANT SELECT ON dbo.MOD_REASON_NOT_INV_BACK TO rma_users
go
GRANT SELECT ON dbo.QFN_VERSION_STATUS_CODE TO rma_users
go
GRANT EXECUTE ON dbo.QU_Check_Exist_Qual_Version TO rma_users
go
GRANT SELECT ON dbo.COMPASSIONATE TO rma_users
go
GRANT SELECT ON dbo.RELATIONSHIP_COMBO TO rma_users
go
GRANT SELECT ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO rma_users
go
GRANT SELECT ON dbo.RESULT_CODE TO rma_users
go
GRANT SELECT ON dbo.DELIVERY_MODE_TYPE TO rma_users
go
GRANT SELECT ON dbo.ENROLMENT_STATUS TO rma_users
go
GRANT SELECT ON dbo.MOD_REPORT_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.SMS_DIST_LIST_CODE TO rma_users
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data3 TO rma_users
go
GRANT SELECT ON dbo.vwROLQualificationStrand TO rma_users
go
GRANT SELECT ON dbo.STD_GROUP_TYPE TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_SOP TO rma_users
go
GRANT SELECT ON dbo.ENTRY_SERIAL_NUMBER TO rma_users
go
GRANT SELECT ON dbo.LINE_SORT_ORDER_CODE TO rma_users
go
GRANT SELECT ON dbo.QFN_ACHIEVED TO rma_users
go
GRANT SELECT ON dbo.CLAIM_RATE TO rma_users
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_STATUS_HIST TO rma_users
go
GRANT SELECT ON dbo.EXAM_MATERIAL TO rma_users
go
GRANT SELECT ON dbo.VW_STANDARDS_SUBJECT TO rma_users
go
GRANT SELECT ON dbo.VW_PERSONALISATION_LATEST TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_CRSE_QFN TO rma_users
go
GRANT SELECT ON dbo.VW_IRN_STANDARDS TO rma_users
go
GRANT SELECT ON dbo.ExamsMarkerInviteVw TO rma_users
go
GRANT SELECT ON dbo.REGION TO rma_users
go
GRANT SELECT ON dbo.EX_MRKR_PAGE_LINE_INPUT TO rma_users
go
GRANT SELECT ON dbo.MOE_NUMBER TO rma_users
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_TO TO rma_users
go
GRANT SELECT ON dbo.vwSRSStdResult TO rma_users
go
GRANT SELECT ON dbo.STD_GROUP TO rma_users
go
GRANT SELECT ON dbo.w_people TO rma_users
go
GRANT SELECT ON dbo.JBM_MSG TO rma_users
go
GRANT SELECT ON dbo.RISK_ISS_IND_TYPE TO rma_users
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO rma_users
go
GRANT SELECT ON dbo.KEY_DATE TO rma_users
go
GRANT SELECT ON dbo.JBM_ID_CACHE TO rma_users
go
GRANT SELECT ON dbo.MERGE_REQUEST_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.ORG_EVALUATION_COMBO TO rma_users
go
GRANT SELECT ON dbo.ENTRY_REVIEW TO rma_users
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE_TYPE TO rma_users
go
GRANT SELECT ON dbo.ORDER_ITEM_TYPE_RULE TO rma_users
go
GRANT SELECT ON dbo.JBM_ROLE TO rma_users
go
GRANT SELECT ON dbo.SCHEDULE_RESULT_TYPE TO rma_users
go
GRANT SELECT ON dbo.NZQA_POSITION TO rma_users
go
GRANT SELECT ON dbo.BOOKLET_ACTION_TYPE TO rma_users
go
GRANT SELECT ON dbo.NAME_TYPE TO rma_users
go
GRANT SELECT ON dbo.PERORG_ROLE_STATUS TO rma_users
go
GRANT SELECT ON dbo.COM_METHOD TO rma_users
go
GRANT SELECT ON dbo.VW_OPTIONAL_STRANDS TO rma_users
go
GRANT SELECT ON dbo.RECONSIDERATION_OPTION_CODE TO rma_users
go
GRANT SELECT ON dbo.VW_INPUT_BATCH_ERROR_LOADED TO rma_users
go
GRANT SELECT ON dbo.ADDRESS_EXCLUSION_WORD TO rma_users
go
GRANT SELECT ON dbo.DIGITAL_ENTRY TO rma_users
go
GRANT SELECT ON dbo.ALLOCATION_RUN_STATUS TO rma_users
go
GRANT SELECT ON dbo.NZQA_BUSINESS_UNIT TO rma_users
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_RUN_STATUS TO rma_users
go
GRANT SELECT ON dbo.COP_SIGNATORY_STATUS_TYPE TO rma_users
go
GRANT SELECT ON dbo.DEBTOR TO rma_users
go
GRANT SELECT ON dbo.QFN_GRADING_TYPE TO rma_users
go
GRANT SELECT ON dbo.MODERATION_MAT_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.QA_EVENT_CODE TO rma_users
go
GRANT SELECT ON dbo.SPECIAL_ASSISTANCE_STATUS TO rma_users
go
GRANT EXECUTE ON dbo.check_web_contingency_status TO rma_users
go
GRANT SELECT ON dbo.PROVISIONAL_QUALCHECK_RUN TO rma_users
go
GRANT SELECT ON dbo.PERORG_STATUS TO rma_users
go
GRANT SELECT ON dbo.AMAP_CONTEXT TO rma_users
go
GRANT SELECT ON dbo.QFN_SCENARIO_STD_COMPONENT TO rma_users
go
GRANT SELECT ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO rma_users
go
GRANT SELECT ON dbo.ASSESS_SESS_CATG TO rma_users
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocInsert TO rma_users
go
GRANT SELECT ON dbo.REPORT_INSTANCE_PARAMETER TO rma_users
go
GRANT SELECT ON dbo.QFN_CHECK_RESULT_TYPE TO rma_users
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO rma_users
go
GRANT SELECT ON dbo.GLBL_GROWTH_ALW_PRM TO rma_users
go
GRANT SELECT ON dbo.BATCH_SUMMARY_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.ORDER_ITEM TO rma_users
go
GRANT SELECT ON dbo.VW_ENTRY_PERS_MARKER TO rma_users
go
GRANT SELECT ON dbo.CE_CREDIT_ALLOCATION_CODE TO rma_users
go
GRANT SELECT ON dbo.PAYMENT_RECONCILIATION_RUN TO rma_users
go
GRANT SELECT ON dbo.REPORT_ROLE TO rma_users
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_MATCH_extract TO rma_users
go
GRANT SELECT ON dbo.BATCH_COMMENT TO rma_users
go
GRANT SELECT ON dbo.DOUBLE_DIP_STD_MAPPING TO rma_users
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_dr TO rma_users
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_STATUS TO rma_users
go
GRANT SELECT ON dbo.FEE_STRUCTURE TO rma_users
go
GRANT SELECT ON dbo.STD_TYPE_OUTPUT TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_METHOD TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_APP_DOC_TYPE TO rma_users
go
GRANT SELECT ON dbo.VW_QUAL_CHECK_RESULT_IQ TO rma_users
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_CHG_HIST TO rma_users
go
GRANT SELECT ON dbo.SDR_PROVIDER TO rma_users
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_CONDITION TO rma_users
go
GRANT SELECT ON dbo.CFN_UPDATES TO rma_users
go
GRANT SELECT ON dbo.DIARY_EVENT_REASON TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_RULE_STD_TYPE TO rma_users
go
GRANT SELECT ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO rma_users
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_HISTORY TO rma_users
go
GRANT SELECT ON dbo.COP_APPRVL_TYPE TO rma_users
go
GRANT SELECT ON dbo.dba_test_rep TO rma_users
go
GRANT SELECT ON dbo.STD_GRADING_SCHEME_CODE TO rma_users
go
GRANT SELECT ON dbo.JMS_USERS TO rma_users
go
GRANT SELECT ON dbo.vw_MARK_INPUT_extract TO rma_users
go
GRANT SELECT ON dbo.RESULT_RANKING TO rma_users
go
GRANT SELECT ON dbo.SAC_FILE_UPLOAD TO rma_users
go
GRANT SELECT ON dbo.MARKER_CODE TO rma_users
go
GRANT SELECT ON dbo.SDR_QUAL_COMPLETION TO rma_users
go
GRANT SELECT ON dbo.NOTE_COM_TYPE TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppUnallSel TO rma_users
go
GRANT SELECT ON dbo.vwROLUnitResult TO rma_users
go
GRANT SELECT ON dbo.RELATIONSHIP_TYPE TO rma_users
go
GRANT SELECT ON dbo.ENTRY_CONTEXT TO rma_users
go
GRANT SELECT ON dbo.COURSE_VERSION_STATUS TO rma_users
go
GRANT SELECT ON dbo.DIARY_EVENT TO rma_users
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_PROG_HIST TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_ACHV_STA_HIST TO rma_users
go
GRANT SELECT ON dbo.CLAIM_ITEM_TYPE TO rma_users
go
GRANT SELECT ON dbo.COURSE_VERSION_QFN_VERSION TO rma_users
go
GRANT SELECT ON dbo.MARKER_CODE_SUFFIX TO rma_users
go
GRANT SELECT ON dbo.QRS_STG_APPLN_OTHER_DOC TO rma_users
go
GRANT SELECT ON dbo.LEARNER_INPUT_MATCH TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineMarkerSel TO rma_users
go
GRANT SELECT ON dbo.VW_RELATIONSHIP_CONTACT TO rma_users
go
GRANT SELECT ON dbo.VW_EXAMS_ENTRY TO rma_users
go
GRANT SELECT ON dbo.STD_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.FORBIDDEN_PROVIDER TO rma_users
go
GRANT SELECT ON dbo.VW_IRN_QUALIFICATIONS TO rma_users
go
GRANT SELECT ON dbo.QA_ACTIVITY_TYPE TO rma_users
go
GRANT SELECT ON dbo.w_learners TO rma_users
go
GRANT SELECT ON dbo.vwSRSStandard TO rma_users
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE TO rma_users
go
GRANT SELECT ON dbo.JBM_MSG_REF TO rma_users
go
GRANT SELECT ON dbo.SOFTWARE_ID_CODE TO rma_users
go
GRANT SELECT ON dbo.CODE_TABLE_HISTORY TO rma_users
go
GRANT SELECT ON dbo.EXAM_ATTENDANCE TO rma_users
go
GRANT SELECT ON dbo.MATCHING_RESULT_CODE TO rma_users
go
GRANT SELECT ON dbo.AWARDING_PROVIDER_MAP TO rma_users
go
GRANT SELECT ON dbo.INPUT_BATCH_ERROR TO rma_users
go
GRANT SELECT ON dbo.NZQA_POSITION_TITLE TO rma_users
go
GRANT SELECT ON dbo.w_learner TO rma_users
go
GRANT EXECUTE ON dbo.RMAExMarkerPageLineUpd TO rma_users
go
GRANT SELECT ON dbo.EXCLUDED_ASSISTANCE_CODE TO rma_users
go
GRANT SELECT ON dbo.ENTRY_SPEC_ASSIST TO rma_users
go
GRANT SELECT ON dbo.ALLOCATION_METHOD TO rma_users
go
GRANT SELECT ON dbo.BATCH_INPUT TO rma_users
go
GRANT SELECT ON dbo.CONTACT_MERGE_RUN TO rma_users
go
GRANT SELECT ON dbo.COURSE_VERSION TO rma_users
go
GRANT SELECT ON dbo.FEE_TYPE TO rma_users
go
GRANT SELECT ON dbo.PERSONALISATION_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_COP_APPRVL_HIST TO rma_users
go
GRANT SELECT ON dbo.QUAL_APP_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.COP_ACCOM_ARRANGED_TYPE TO rma_users
go
GRANT SELECT ON dbo.RESULT TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_CENTRE_TYPE TO rma_users
go
GRANT SELECT ON dbo.tmp_standard_input_vw1 TO rma_users
go
GRANT SELECT ON dbo.BATCH_COUNT_TYPE_CODE TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilestoSPERStdValidate TO rma_users
go
GRANT SELECT ON dbo.BATCH_STATUS_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.REPORT TO rma_users
go
GRANT SELECT ON dbo.STD_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.QFN_SCENARIO_STRAND TO rma_users
go
GRANT SELECT ON dbo.ETHNICITY TO rma_users
go
GRANT SELECT ON dbo.BATCH_STATUS_MAP TO rma_users
go
GRANT SELECT ON dbo.MISCONDUCT_STATUS TO rma_users
go
GRANT SELECT ON dbo.RULES_GROUP TO rma_users
go
GRANT SELECT ON dbo.ACCREDITATION_OPTION_CODE TO rma_users
go
GRANT SELECT ON dbo.SCHEDULE_TYPE TO rma_users
go
GRANT SELECT ON dbo.LEARNER_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_extract TO rma_users
go
GRANT SELECT ON dbo.JMS_MESSAGES TO rma_users
go
GRANT SELECT ON dbo.QRS_INSTITUTION TO rma_users
go
GRANT SELECT ON dbo.CONDITION_STATUS TO rma_users
go
GRANT SELECT ON dbo.PROCESS_TYPE_USED_BY_CODE TO rma_users
go
GRANT SELECT ON dbo.ORDER_ITEM_CATEGORY_STATUS TO rma_users
go
GRANT SELECT ON dbo.TE_REO_INDICATION TO rma_users
go
GRANT SELECT ON dbo.ACRD_INHERITANCE_MAP TO rma_users
go
GRANT SELECT ON dbo.JMS_SUBSCRIPTIONS TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_LOCALITY_CODE TO rma_users
go
GRANT SELECT ON dbo.STREET_TYPE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_dr TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_EXEMPTION TO rma_users
go
GRANT SELECT ON dbo.SCH_GENDER_TYPE TO rma_users
go
GRANT SELECT ON dbo.COURSE_TYPE TO rma_users
go
GRANT SELECT ON dbo.MOD_ASSESS_STD_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.AWARD_RECIPIENT TO rma_users
go
GRANT EXECUTE ON dbo.QU_Clear_Qual_Update_Data TO rma_users
go
GRANT SELECT ON dbo.vwROLStandard TO rma_users
go
GRANT SELECT ON dbo.NOTE_ISSUE_STATUS TO rma_users
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION_SET TO rma_users
go
GRANT SELECT ON dbo.QFN_ACHIEVED_STATUS_HIST TO rma_users
go
GRANT EXECUTE ON dbo.SU_Validate_Accred_Option_Code TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERHeaderSel TO rma_users
go
GRANT SELECT ON dbo.CLAIM_CONTRACT_ITEM TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_STATUS TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_HEAD_OFFICE TO rma_users
go
GRANT SELECT ON dbo.FIN_TRANSACTION_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.VW_ORGANISATION TO rma_users
go
GRANT SELECT ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO rma_users
go
GRANT SELECT ON dbo.PSE_RESOURCE_GROUP_CODE TO rma_users
go
GRANT SELECT ON dbo.FIN_ASSIST_TYPE TO rma_users
go
GRANT SELECT ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO rma_users
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES TO rma_users
go
GRANT SELECT ON dbo.EX_MARKER_PAGE TO rma_users
go
GRANT SELECT ON dbo.VW_PROVIDERS TO rma_users
go
GRANT SELECT ON dbo.VW_QUALIFICATIONS TO rma_users
go
GRANT SELECT ON dbo.w_all_standards TO rma_users
go
GRANT SELECT ON dbo.CODE_TABLE TO rma_users
go
GRANT SELECT ON dbo.STATS_ENTRY_PROVIDER TO rma_users
go
GRANT SELECT ON dbo.QFN_CONDITION TO rma_users
go
GRANT SELECT ON dbo.MESSAGE_ROLES TO rma_users
go
GRANT SELECT ON dbo.COUNTRY_RISK_CODE TO rma_users
go
GRANT SELECT ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO rma_users
go
GRANT SELECT ON dbo.rs_lastcommit TO rma_users
go
GRANT SELECT ON dbo.MARKER_STD_CONTEXT_MAP TO rma_users
go
GRANT SELECT ON dbo.VW_ASSESSMENT TO rma_users
go
GRANT SELECT ON dbo.ENTRY_ASSISTANCE TO rma_users
go
GRANT SELECT ON dbo.AMAP TO rma_users
go
GRANT SELECT ON dbo.ACCREDITATION TO rma_users
go
GRANT SELECT ON dbo.COM_TYPE TO rma_users
go
GRANT SELECT ON dbo.SCH_PROG_LEVEL_CODE TO rma_users
go
GRANT SELECT ON dbo.REVIEW_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.QUAL_CHECK_RESULT_TYPE TO rma_users
go
GRANT SELECT ON dbo.RECONSIDERATION_ENTRY TO rma_users
go
GRANT SELECT ON dbo.STATS_KEY_INDICATOR TO rma_users
go
GRANT SELECT ON dbo.QUAL_APP_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.REPORT_CONTEXT TO rma_users
go
GRANT SELECT ON dbo.BATCH_STATUS TO rma_users
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocUpd TO rma_users
go
GRANT SELECT ON dbo.ECA_GENDER_CODE TO rma_users
go
GRANT SELECT ON dbo.LEARNER_INPUT TO rma_users
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ALT_ID TO rma_users
go
GRANT SELECT ON dbo.ORG_PROFILE_NOTE TO rma_users
go
GRANT SELECT ON dbo.STD_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.IWI_CODE TO rma_users
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION TO rma_users
go
GRANT SELECT ON dbo.RULES_GROUP_OPT_STD TO rma_users
go
GRANT SELECT ON dbo.RETURN_TYPE TO rma_users
go
GRANT SELECT ON dbo.STUDENT_TYPE TO rma_users
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER TO rma_users
go
GRANT SELECT ON dbo.PROV_SFP_EXEMPTION TO rma_users
go
GRANT SELECT ON dbo.PAYMENT TO rma_users
go
GRANT SELECT ON dbo.QFN_EXCLUSION TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_REL_TYPE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_web12 TO rma_users
go
GRANT SELECT ON dbo.STATUS_REASON_CODE TO rma_users
go
GRANT SELECT ON dbo.CURRENCY TO rma_users
go
GRANT SELECT ON dbo.DBA_REPL_CONTROL TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO rma_users
go
GRANT SELECT ON dbo.COURSE_MONITORING_CYCLE_CODE TO rma_users
go
GRANT SELECT ON dbo.PROV_RISK_ISSUE TO rma_users
go
GRANT SELECT ON dbo.COND_TYPE TO rma_users
go
GRANT SELECT ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.ORDER_ITEM_TYPE TO rma_users
go
GRANT SELECT ON dbo.AWARD_NZQA_STATUS TO rma_users
go
GRANT SELECT ON dbo.ACHIEVED_STATUS_CODE TO rma_users
go
GRANT EXECUTE ON dbo.RMA_GetMarkerPanelMemberShips TO rma_users
go
GRANT SELECT ON dbo.COMPASSIONATE_ENTRY TO rma_users
go
GRANT SELECT ON dbo.PERORG_ROLE TO rma_users
go
GRANT SELECT ON dbo.temp_sec_course_std_hist TO rma_users
go
GRANT SELECT ON dbo.PSE_ACTIVITY_CODE TO rma_users
go
GRANT SELECT ON dbo.PERORG_CASE TO rma_users
go
GRANT SELECT ON dbo.RISK_CASE_TYPE TO rma_users
go
GRANT SELECT ON dbo.CLAIM_CONTRACT TO rma_users
go
GRANT SELECT ON dbo.NZQA_EMPLOYEE_INFO TO rma_users
go
GRANT SELECT ON dbo.EXAM_MATERIAL_TYPE TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_REG_FOCUS TO rma_users
go
GRANT SELECT ON dbo.COURIER_PRICE_LIST TO rma_users
go
GRANT SELECT ON dbo.LEARNER_STATISTIC TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_APPLICATION TO rma_users
go
GRANT SELECT ON dbo.PSE_GL_CODE TO rma_users
go
GRANT SELECT ON dbo.FILE_LOCATION TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERMarkerCounts TO rma_users
go
GRANT SELECT ON dbo.ORDER_REQUEST TO rma_users
go
GRANT SELECT ON dbo.VW_EXAM_STANDARD TO rma_users
go
GRANT SELECT ON dbo.QFN_ACHIEVED_ENDORSEMENT TO rma_users
go
GRANT SELECT ON dbo.VW_MARKERS TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_CAA_APP TO rma_users
go
GRANT SELECT ON dbo.LEAVING_CODE TO rma_users
go
GRANT SELECT ON dbo.ORGANISATION_LOGO TO rma_users
go
GRANT SELECT ON dbo.ExamsMarkerDeclineVw TO rma_users
go
GRANT SELECT ON dbo.LEARNER TO rma_users
go
GRANT SELECT ON dbo.QFN_SECTION TO rma_users
go
GRANT SELECT ON dbo.ORG_PROFILE_DOCUMENT TO rma_users
go
GRANT SELECT ON dbo.MARKER_PANEL_ALLOCATION_GRP TO rma_users
go
GRANT SELECT ON dbo.VW_ENTRY_RECON TO rma_users
go
GRANT SELECT ON dbo.JBM_COUNTER TO rma_users
go
GRANT SELECT ON dbo.ORG_PERFORMANCE_CODE TO rma_users
go
GRANT SELECT ON dbo.BATCH_ERROR_TOTAL TO rma_users
go
GRANT SELECT ON dbo.JBM_USER TO rma_users
go
GRANT SELECT ON dbo.w_providers_all_names TO rma_users
go
GRANT SELECT ON dbo.MESSAGE_PROPS TO rma_users
go
GRANT SELECT ON dbo.EXAM_CENTRE_WORKER TO rma_users
go
GRANT SELECT ON dbo.FINANCE_TRANSACTION TO rma_users
go
GRANT SELECT ON dbo.NSI_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.RECONSIDERATION_STATUS TO rma_users
go
GRANT EXECUTE ON dbo.SU_Check_Exist_Std_Version TO rma_users
go
GRANT SELECT ON dbo.QRS_STG_APPLICATION TO rma_users
go
GRANT SELECT ON dbo.AMAP_VERSION_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.ACADEMIC_YEAR_TYPE TO rma_users
go
GRANT SELECT ON dbo.BATCH_FILE_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO rma_users
go
GRANT EXECUTE ON dbo.RMASuppResultAllocatedUpd TO rma_users
go
GRANT SELECT ON dbo.MODERATOR_ROLE TO rma_users
go
GRANT SELECT ON dbo.QFN_MINOR_VERSION TO rma_users
go
GRANT SELECT ON dbo.MARKER_DETAIL_SNAPSHOT TO rma_users
go
GRANT SELECT ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO rma_users
go
GRANT SELECT ON dbo.ENDORSEMENT TO rma_users
go
GRANT SELECT ON dbo.w_all_moderation_standards TO rma_users
go
GRANT SELECT ON dbo.CONTENT_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.ENDORSEMENT_VERSION TO rma_users
go
GRANT SELECT ON dbo.MOD_REPORT_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.PROV_QUALCHECK_RESULT_STATUS TO rma_users
go
GRANT SELECT ON dbo.mc_vw_sqr_event TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineNZQASel TO rma_users
go
GRANT SELECT ON dbo.LEARNER_MAINTENANCE_RESULT TO rma_users
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ITEM_TYPE TO rma_users
go
GRANT SELECT ON dbo.REPORT_INSTANCE TO rma_users
go
GRANT SELECT ON dbo.BATCH_ERROR_TYPE_CODE TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERStdCounts TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_CODE TO rma_users
go
GRANT SELECT ON dbo.QFN_ITEMS_STD_VERSION_MAP TO rma_users
go
GRANT SELECT ON dbo.QUAL_SYSTEM_FRAMEWORK TO rma_users
go
GRANT SELECT ON dbo.VW_RESMAN_NAME TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_CREDIT_CATG TO rma_users
go
GRANT SELECT ON dbo.GLOBAL_NON_BUFFER_PRM TO rma_users
go
GRANT SELECT ON dbo.RISK_STATUS TO rma_users
go
GRANT SELECT ON dbo.temp_sqr_event TO rma_users
go
GRANT SELECT ON dbo.QFN TO rma_users
go
GRANT SELECT ON dbo.LEARNER_ENROLMENT TO rma_users
go
GRANT SELECT ON dbo.FINANCE_TRANSACTION_NSN TO rma_users
go
GRANT SELECT ON dbo.EXAM_MTL_FILE_INPUT TO rma_users
go
GRANT SELECT ON dbo.COUNTRY_CODE TO rma_users
go
GRANT SELECT ON dbo.BOOKLET_RETRIEVAL TO rma_users
go
GRANT SELECT ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO rma_users
go
GRANT SELECT ON dbo.PERORG_ROLE_AVLBL_REGION TO rma_users
go
GRANT SELECT ON dbo.QES_INSTITUTE_SECTION TO rma_users
go
GRANT SELECT ON dbo.ALLOCATION_RUN TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_web11 TO rma_users
go
GRANT SELECT ON dbo.CASE_TYPE_STATUS_COMBO TO rma_users
go
GRANT SELECT ON dbo.RISK_ISSUE_STATUS TO rma_users
go
GRANT SELECT ON dbo.MOD_ROLE_STATUS_REASON TO rma_users
go
GRANT SELECT ON dbo.STD_EXEMPTION TO rma_users
go
GRANT SELECT ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO rma_users
go
GRANT SELECT ON dbo.NOTE_SUBJECT_TYPE TO rma_users
go
GRANT SELECT ON dbo.STD_GRADING_TYPE TO rma_users
go
GRANT SELECT ON dbo.MARKER_TRANSFER_HISTORY TO rma_users
go
GRANT SELECT ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO rma_users
go
GRANT EXECUTE ON dbo.RMAAbsentScriptLoadData TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_pdtec2 TO rma_users
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_LINE TO rma_users
go
GRANT SELECT ON dbo.NZQA_ORG_UNIT_TYPE TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineCompleteSel TO rma_users
go
GRANT SELECT ON dbo.vwROLScholResult TO rma_users
go
GRANT SELECT ON dbo.COMPASSIONATE_PEER TO rma_users
go
GRANT SELECT ON dbo.ENTRY_SEC_COURSE_HIST TO rma_users
go
GRANT SELECT ON dbo.DELIVERY_SITE_STATUS TO rma_users
go
GRANT SELECT ON dbo.MOD_REPORT_COMP_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.MOD_REBATE_RATE TO rma_users
go
GRANT SELECT ON dbo.PERORG_ROLE_TYPE TO rma_users
go
GRANT SELECT ON dbo.SEC_COURSE_STD_HIST TO rma_users
go
GRANT SELECT ON dbo.NOTE_ISSUE_RESP_TYPE TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_REG_EXEMPTION TO rma_users
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION_STATUS TO rma_users
go
GRANT SELECT ON dbo.CLAIM_STATUS TO rma_users
go
GRANT SELECT ON dbo.COURSE_VERSION_STATUS_HIST TO rma_users
go
GRANT SELECT ON dbo.EXAM_MATERIAL_STATUS TO rma_users
go
GRANT SELECT ON dbo.PAGE_DISPLAY_TYPE TO rma_users
go
GRANT SELECT ON dbo.PANEL_AD_REGION TO rma_users
go
GRANT SELECT ON dbo.PROV_NOTE_ISSUE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_sqr_event_dr TO rma_users
go
GRANT SELECT ON dbo.VW_ALL_STANDARDS TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_APPLN_CONTACT TO rma_users
go
GRANT SELECT ON dbo.NOTE_ISSUE_SEVERITY_CODE TO rma_users
go
GRANT SELECT ON dbo.CHECK_MOD_SELECT_STATUS TO rma_users
go
GRANT SELECT ON dbo.KEY_LOG TO rma_users
go
GRANT SELECT ON dbo.NO_QFN_REASON_CODE TO rma_users
go
GRANT SELECT ON dbo.SSB_TYPE TO rma_users
go
GRANT SELECT ON dbo.OUTSTANDING_FEE_LODGEMENT TO rma_users
go
GRANT SELECT ON dbo.ExamsMarkerLateAppointmentVw TO rma_users
go
GRANT SELECT ON dbo.EX_MRKR_PAGE_INPUT TO rma_users
go
GRANT SELECT ON dbo.CFN_CATEGORY_STATUS TO rma_users
go
GRANT SELECT ON dbo.JBM_DUAL TO rma_users
go
GRANT SELECT ON dbo.vwSRSAchievement TO rma_users
go
GRANT SELECT ON dbo.MODERATOR TO rma_users
go
GRANT SELECT ON dbo.REGION_GROUP TO rma_users
go
GRANT SELECT ON dbo.PROXIMITY_CODE TO rma_users
go
GRANT SELECT ON dbo.QFN_TYPE TO rma_users
go
GRANT SELECT ON dbo.PERORG_ROLE_HISTORY TO rma_users
go
GRANT SELECT ON dbo.STD_VERSION_PUB_HISTORY TO rma_users
go
GRANT SELECT ON dbo.LVL TO rma_users
go
GRANT SELECT ON dbo.AMAP_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.PERSONALISATION_EXCEPTION TO rma_users
go
GRANT SELECT ON dbo.VW_QUAL_STRANDS TO rma_users
go
GRANT SELECT ON dbo.RECONSIDERATION_RUN TO rma_users
go
GRANT EXECUTE ON dbo.RMA_Key_Date_Get TO rma_users
go
GRANT SELECT ON dbo.VW_STANDARD_INPUT_WITH_ERROR TO rma_users
go
GRANT SELECT ON dbo.QFN_RULE TO rma_users
go
GRANT SELECT ON dbo.MODERATOR_CAPACITY TO rma_users
go
GRANT SELECT ON dbo.QFN_VERSION_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_COMPONENT TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_COMPONENT_PEP TO rma_users
go
GRANT SELECT ON dbo.QFN_PREQ_EXEMPTION_STRAND TO rma_users
go
GRANT SELECT ON dbo.MODERATION_REPORT_COMPONENT TO rma_users
go
GRANT SELECT ON dbo.QUAL_APP_STD_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.IR330 TO rma_users
go
GRANT SELECT ON dbo.PERORG_ALT_ID_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO rma_users
go
GRANT SELECT ON dbo.SEARCH_CONTEXT TO rma_users
go
GRANT SELECT ON dbo.PERSONALISATION_RUN TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROV_QUALCHECK_RESULT TO rma_users
go
GRANT SELECT ON dbo.NEXT_ID TO rma_users
go
GRANT SELECT ON dbo.MODERATION_REPORT TO rma_users
go
GRANT SELECT ON dbo.QFN_RULE_TYPE TO rma_users
go
GRANT SELECT ON dbo.RESULT_COMPONENT_QUESTION TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppWebSel TO rma_users
go
GRANT SELECT ON dbo.BATCH_ERROR_SEVERITY TO rma_users
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocValidate TO rma_users
go
GRANT SELECT ON dbo.REPORT_ITERATION_MODE TO rma_users
go
GRANT SELECT ON dbo.QFN_SCENARIO TO rma_users
go
GRANT SELECT ON dbo.REPORT_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROVIDER TO rma_users
go
GRANT SELECT ON dbo.TEC_COURSE TO rma_users
go
GRANT SELECT ON dbo.CLAIM_UNIT_QUANTITY TO rma_users
go
GRANT SELECT ON dbo.RES_STAT_VERIFICATION_CODE TO rma_users
go
GRANT SELECT ON dbo.PAYMENT_STATUS_HIST TO rma_users
go
GRANT SELECT ON dbo.PROV_SFP_ARGMT TO rma_users
go
GRANT SELECT ON dbo.ADDL_VOLUME_TYPE TO rma_users
go
GRANT SELECT ON dbo.STD_GRAD_SCHEME_STD_TYPE TO rma_users
go
GRANT SELECT ON dbo.JMS_ROLES TO rma_users
go
GRANT SELECT ON dbo.SCH_DECILE_CODE TO rma_users
go
GRANT SELECT ON dbo.CASE_STATUS TO rma_users
go
GRANT SELECT ON dbo.COM_COMBO TO rma_users
go
GRANT SELECT ON dbo.MOD_CAPACITY_REASON_CODE TO rma_users
go
GRANT SELECT ON dbo.ORDER_ITEM_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.PRODUCT_TYPE TO rma_users
go
GRANT SELECT ON dbo.SIZE_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.ORG_EVALUATION_TYPE TO rma_users
go
GRANT SELECT ON dbo.COMPASSIONATE_STATUS TO rma_users
go
GRANT SELECT ON dbo.SCH_SUB_TYPE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_web11 TO rma_users
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO rma_users
go
GRANT SELECT ON dbo.COURSE_VERSION_STD TO rma_users
go
GRANT SELECT ON dbo.RISK_ISSUE_STATUS_HIST TO rma_users
go
GRANT SELECT ON dbo.AMAP_VERSION TO rma_users
go
GRANT SELECT ON dbo.DIARY_EVENT_TYPE TO rma_users
go
GRANT SELECT ON dbo.MOD_REPORT_STATUS_CODE TO rma_users
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data1 TO rma_users
go
GRANT SELECT ON dbo.vwROLQualification TO rma_users
go
GRANT SELECT ON dbo.EXCEPTION_ORN_TYPE TO rma_users
go
GRANT SELECT ON dbo.SECONDARY_COURSE TO rma_users
go
GRANT SELECT ON dbo.SECONDARY_COURSE_HIST TO rma_users
go
GRANT SELECT ON dbo.SDR_COURSE TO rma_users
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_TYPE TO rma_users
go
GRANT SELECT ON dbo.MARK_INPUT TO rma_users
go
GRANT SELECT ON dbo.SALUTATION TO rma_users
go
GRANT SELECT ON dbo.NZPOST_HUB TO rma_users
go
GRANT SELECT ON dbo.CLAIM_QUANTITY_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_DEREG_REASON_CODE TO rma_users
go
GRANT SELECT ON dbo.LINE_ORIGIN_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_KVP TO rma_users
go
GRANT SELECT ON dbo.VW_MARKER_ALLOCATION_GROUP TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_next_id_web12 TO rma_users
go
GRANT EXECUTE ON dbo.RMA_Get_Marker_Record TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_sqr_event_web1 TO rma_users
go
GRANT SELECT ON dbo.GENDER_CODE TO rma_users
go
GRANT SELECT ON dbo.JOINING_WORDS TO rma_users
go
GRANT SELECT ON dbo.BATCH_PROFILE TO rma_users
go
GRANT SELECT ON dbo.NOTE_ISSUE_SUB_TYPE TO rma_users
go
GRANT SELECT ON dbo.ZERO_TO_99 TO rma_users
go
GRANT SELECT ON dbo.EX_MRKR_BATCH_INPUT TO rma_users
go
GRANT SELECT ON dbo.QFN_ORGANISATION_ROLE TO rma_users
go
GRANT SELECT ON dbo.VW_IRN_RESULTS TO rma_users
go
GRANT SELECT ON dbo.QFN_CERT TO rma_users
go
GRANT SELECT ON dbo.PROCESS_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.STD_GROUP_OWNER_CODE TO rma_users
go
GRANT SELECT ON dbo.vwSRSLearner TO rma_users
go
GRANT SELECT ON dbo.KEY_DATE_TYPE TO rma_users
go
GRANT SELECT ON dbo.STATS_ENTRY_PROVIDER_RESULT TO rma_users
go
GRANT SELECT ON dbo.MERGE_REQUEST TO rma_users
go
GRANT SELECT ON dbo.QUAL_CHECK_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.MARKING_SCHEME_TYPE TO rma_users
go
GRANT SELECT ON dbo.temp1 TO rma_users
go
GRANT SELECT ON dbo.QUAL_PUBLICATION_CODE TO rma_users
go
GRANT SELECT ON dbo.QFN_RULE_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO rma_users
go
GRANT SELECT ON dbo.NAME_DOB_VER_CODE TO rma_users
go
GRANT SELECT ON dbo.MODERATION_REPORT_JUDGEMENT TO rma_users
go
GRANT SELECT ON dbo.AMAP_VERSION_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.ACADEMIC_YEAR TO rma_users
go
GRANT EXECUTE ON dbo.SU_Clear_Temp_Table TO rma_users
go
GRANT SELECT ON dbo.BREACH_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.PERORG_TYPE TO rma_users
go
GRANT SELECT ON dbo.VW_ARC_INPUT_BATCH_ERROR TO rma_users
go
GRANT SELECT ON dbo.PICKUP_TYPE TO rma_users
go
GRANT SELECT ON dbo.NAME TO rma_users
go
GRANT SELECT ON dbo.HOOKFEE_OVERRIDE_TYPE TO rma_users
go
GRANT SELECT ON dbo.AMAP_COVERAGE TO rma_users
go
GRANT SELECT ON dbo.QFN_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.AWARD_TYPE TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_COP_ACCOM_OPTION TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION TO rma_users
go
GRANT SELECT ON dbo.RESULT_COMPONENT_QN_TYPE TO rma_users
go
GRANT SELECT ON dbo.REPORT_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.tmp_standard_input_vw2 TO rma_users
go
GRANT SELECT ON dbo.COURIER_ZONE_CODE TO rma_users
go
GRANT SELECT ON dbo.QFN_SCENARIO_QFN_COMPONENT TO rma_users
go
GRANT SELECT ON dbo.MODERATION_SUBMISSION_DATE TO rma_users
go
GRANT EXECUTE ON dbo.RMAMarkerCheckSheets TO rma_users
go
GRANT SELECT ON dbo.EXAM_MATERIAL_CMPT TO rma_users
go
GRANT SELECT ON dbo.RESULT_COMPONENT_LINK TO rma_users
go
GRANT SELECT ON dbo.BATCH_SUMMARY_TOTAL TO rma_users
go
GRANT SELECT ON dbo.ORDER_ITEM_STATUS_HIST TO rma_users
go
GRANT SELECT ON dbo.AMAP_VER_QA_EVENT_HISTORY TO rma_users
go
GRANT SELECT ON dbo.VW_RESMAN_RELATIONSHIP TO rma_users
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_HEADER TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_APP_TYPE TO rma_users
go
GRANT SELECT ON dbo.OUTPUT_TYPE TO rma_users
go
GRANT SELECT ON dbo.SEVERITY TO rma_users
go
GRANT SELECT ON dbo.QFN_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.EVALUATION_REASON_CODE TO rma_users
go
GRANT SELECT ON dbo.JMS_TRANSACTIONS TO rma_users
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_STATUS TO rma_users
go
GRANT SELECT ON dbo.CONDITION_TYPE TO rma_users
go
GRANT SELECT ON dbo.CFN_SYSTEM_TYPE TO rma_users
go
GRANT SELECT ON dbo.VW_ALLOCATION_GROUP_MARKERS TO rma_users
go
GRANT SELECT ON dbo.TIMERS TO rma_users
go
GRANT SELECT ON dbo.MARKER_ALLOCATION_GROUP TO rma_users
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO rma_users
go
GRANT SELECT ON dbo.DEAD_MESSAGE_QUEUE TO rma_users
go
GRANT SELECT ON dbo.MODERATION_MAT_TYPE_CODE TO rma_users
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data2 TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineNotComplSel TO rma_users
go
GRANT SELECT ON dbo.vwROLLearner TO rma_users
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_PROGRESS TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_TYPE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_web12 TO rma_users
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_FOCUS_CODE TO rma_users
go
GRANT SELECT ON dbo.vw_set TO rma_users
go
GRANT SELECT ON dbo.RECOGNITION_BODY_CODE TO rma_users
go
GRANT SELECT ON dbo.MOD_FORBIDDEN_PROVIDER TO rma_users
go
GRANT SELECT ON dbo.QFN_PLUGIN_RULE_TYPE TO rma_users
go
GRANT SELECT ON dbo.BATCH_ERROR_CODE TO rma_users
go
GRANT SELECT ON dbo.PROV_LRNR_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.STD TO rma_users
go
GRANT SELECT ON dbo.STD_VER_QA_EVENT_HISTORY TO rma_users
go
GRANT SELECT ON dbo.CLAIM_ITEM TO rma_users
go
GRANT SELECT ON dbo.VW_IRN_SCHOOL_EXCLUDES TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_next_id_web11 TO rma_users
go
GRANT SELECT ON dbo.VW_QFN_ACHIEVED TO rma_users
go
GRANT SELECT ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO rma_users
go
GRANT SELECT ON dbo.ORG_QA_ACTIVITY TO rma_users
go
GRANT SELECT ON dbo.TAX_CODE TO rma_users
go
GRANT SELECT ON dbo.FORBIDDEN_LEARNER TO rma_users
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES_GRADE_AVG TO rma_users
go
GRANT SELECT ON dbo.PERSONALISATION_RUN_STATUS TO rma_users
go
GRANT SELECT ON dbo.MEMO_OF_AGREEMENT TO rma_users
go
GRANT EXECUTE ON dbo.RMA_ReactivateMPM TO rma_users
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ROW TO rma_users
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_FROM TO rma_users
go
GRANT SELECT ON dbo.W_ASSESSMENT_CENTRE TO rma_users
go
GRANT SELECT ON dbo.RECONSIDERATION_PAGE TO rma_users
go
GRANT SELECT ON dbo.QFN_VER_QA_EVENT_HISTORY TO rma_users
go
GRANT SELECT ON dbo.CODE_TABLE_CATG TO rma_users
go
GRANT SELECT ON dbo.STD_GROUP_COVERAGE TO rma_users
go
GRANT SELECT ON dbo.ORGANISATION_TYPE TO rma_users
go
GRANT SELECT ON dbo.JBM_TX TO rma_users
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_STATUS TO rma_users
go
GRANT SELECT ON dbo.ORG_EVALUATION_CATG TO rma_users
go
GRANT SELECT ON dbo.EXAM_ABSENT_SCRIPT TO rma_users
go
GRANT SELECT ON dbo.JBM_POSTOFFICE TO rma_users
go
GRANT SELECT ON dbo.SQR_EVENT TO rma_users
go
GRANT SELECT ON dbo.MESSAGE_SELECTOR TO rma_users
go
GRANT SELECT ON dbo.AMAP_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.BUILD_TAG TO rma_users
go
GRANT EXECUTE ON dbo.RMA_Valid_Page TO rma_users
go
GRANT SELECT ON dbo.ALLOCATION_GROUP TO rma_users
go
GRANT SELECT ON dbo.CONTACT_MERGE_RUN_STATUS TO rma_users
go
GRANT SELECT ON dbo.QUAL_CHECK_RESULT TO rma_users
go
GRANT SELECT ON dbo.ATTAINMENT_CODE TO rma_users
go
GRANT SELECT ON dbo.w_markers TO rma_users
go
GRANT SELECT ON dbo.PERSONALISATION_RUN_TYPE TO rma_users
go
GRANT EXECUTE ON dbo.RMA_Update_submission_Status TO rma_users
go
GRANT SELECT ON dbo.QA_APRV_RATING_CODE TO rma_users
go
GRANT SELECT ON dbo.REVIEW_REASON_CODE TO rma_users
go
GRANT SELECT ON dbo.EQA_SETTING TO rma_users
go
GRANT SELECT ON dbo.PERORG TO rma_users
go
GRANT SELECT ON dbo.SCHOOL_ASSISTANCE_CODE TO rma_users
go
GRANT SELECT ON dbo.AUDIT_TRANSACTION TO rma_users
go
GRANT SELECT ON dbo.CantyFileRptVw TO rma_users
go
GRANT SELECT ON dbo.REPORT_FIELD_TYPE TO rma_users
go
GRANT SELECT ON dbo.EXAM_MTL_EVENT TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_IA_RESULT TO rma_users
go
GRANT SELECT ON dbo.EXAM_CENTRE_ALLOC_RULE TO rma_users
go
GRANT SELECT ON dbo.ETHNICITY_CODE TO rma_users
go
GRANT SELECT ON dbo.GLOBAL_BUFFER_PRM TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_RQMT_CODE TO rma_users
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ROLE TO rma_users
go
GRANT SELECT ON dbo.STD_MINOR_VERSION TO rma_users
go
GRANT SELECT ON dbo.vw_ssb_name_status TO rma_users
go
GRANT SELECT ON dbo.CONTEXT_CODE TO rma_users
go
GRANT SELECT ON dbo.IWI TO rma_users
go
GRANT SELECT ON dbo.CFN_DEPTH_TYPE TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_RULE TO rma_users
go
GRANT SELECT ON dbo.MISCONDUCT_TYPE TO rma_users
go
GRANT SELECT ON dbo.RUN_AFTER_TYPE TO rma_users
go
GRANT SELECT ON dbo.COST_ALLOCATION TO rma_users
go
GRANT SELECT ON dbo.QRS_APPLICANT TO rma_users
go
GRANT SELECT ON dbo.QFN_CLASS_CODE TO rma_users
go
GRANT SELECT ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_CONTACT_TYPE TO rma_users
go
GRANT SELECT ON dbo.TE_REO_CIRCULAR TO rma_users
go
GRANT SELECT ON dbo.ZIM_PERSONALISATION_RUN TO rma_users
go
GRANT SELECT ON dbo.ASSESS_SESSION_RELATIONSHIP TO rma_users
go
GRANT SELECT ON dbo.SDR_TEC_QUAL TO rma_users
go
GRANT SELECT ON dbo.DIARY_EVENT_UPDATE_TYPE TO rma_users
go
GRANT SELECT ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.ENDR_RESULT_DETAIL TO rma_users
go
GRANT SELECT ON dbo.sysquerymetrics TO rma_users
go
GRANT SELECT ON dbo.SECONDARY_COURSE_INPUT TO rma_users
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO rma_users
go
GRANT SELECT ON dbo.COURSE_MONITORING_STATUS TO rma_users
go
GRANT SELECT ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_CHK_STATUS TO rma_users
go
GRANT SELECT ON dbo.AWARD_DETAIL TO rma_users
go
GRANT SELECT ON dbo.STD_VERSION TO rma_users
go
GRANT SELECT ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO rma_users
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data2 TO rma_users
go
GRANT SELECT ON dbo.ORG_EVALUATION TO rma_users
go
GRANT SELECT ON dbo.STD_VERSION_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.PAYMENT_REFUND TO rma_users
go
GRANT SELECT ON dbo.NOTE_ISSUE_TYPE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_dr_sysobjects TO rma_users
go
GRANT SELECT ON dbo.NQAF_STG_REG_APP TO rma_users
go
GRANT SELECT ON dbo.VW_STD_GROUP TO rma_users
go
GRANT SELECT ON dbo.PROVIDER_FOCUS TO rma_users
go
GRANT SELECT ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_next_id_pdrpt2 TO rma_users
go
GRANT SELECT ON dbo.FIN_TRANSACTION_TYPE_CODE TO rma_users
go
GRANT SELECT ON dbo.VW_COMMON_QUALIFICATION TO rma_users
go
GRANT SELECT ON dbo.ACCREDITATION_EXTENSION_RUN TO rma_users
go
GRANT SELECT ON dbo.FIN_ASSIST_APPROVED TO rma_users
go
GRANT EXECUTE ON dbo.RMA_get_marker_name TO rma_users
go
GRANT SELECT ON dbo.w_providers TO rma_users
go
GRANT SELECT ON dbo.PERSON_CLAIM TO rma_users
go
GRANT SELECT ON dbo.VW_PEOPLE TO rma_users
go
GRANT SELECT ON dbo.ACCREDITED_ITEM TO rma_users
go
GRANT SELECT ON dbo.QA_OUTCOME_TYPE TO rma_users
go
GRANT SELECT ON dbo.LEARNER_ASSESSMENT_CENTRE TO rma_users
go
GRANT SELECT ON dbo.QFN_PREREQUISITE TO rma_users
go
GRANT SELECT ON dbo.w_all_providers TO rma_users
go
GRANT SELECT ON dbo.CLAIM_UNIT TO rma_users
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ITEM TO rma_users
go
GRANT SELECT ON dbo.LODGEMENT_DETAIL TO rma_users
go
GRANT SELECT ON dbo.QFN_VERSION_CLASSIFICATION TO rma_users
go
GRANT SELECT ON dbo.LEARNER_SORT_CODE_UNALLOC TO rma_users
go
GRANT SELECT ON dbo.STD_GROUP_CFN_MAPPING TO rma_users
go
GRANT SELECT ON dbo.CERTIFICATE_TYPE TO rma_users
go
GRANT SELECT ON dbo.MARKER_SUBMISSION_STATUS TO rma_users
go
GRANT SELECT ON dbo.MESSAGE_QUEUE TO rma_users
go
GRANT SELECT ON dbo.BATCH_SUMMARY_EXCLUSION TO rma_users
go
GRANT SELECT ON dbo.PAID_CODE TO rma_users
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_STD TO rma_users
go
GRANT SELECT ON dbo.VW_STD_VERSIONS_WITH_LEVEL TO rma_users
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO rma_users
go
GRANT SELECT ON dbo.QRS_INSTITUTION_QFN TO rma_users
go
GRANT SELECT ON dbo.CONTACT_MERGE_DETAIL TO rma_users
go
GRANT SELECT ON dbo.ENROLMENT_FEE TO rma_users
go
GRANT SELECT ON dbo.QFN_SCENARIO_COMP_STRAND TO rma_users
go
GRANT SELECT ON dbo.MARKER_PANEL TO rma_users
go
GRANT SELECT ON dbo.EQA_SETTING_HISTORY TO rma_users
go
GRANT SELECT ON dbo.QFN_COND_OPERATOR TO rma_users
go
GRANT SELECT ON dbo.COP_ACCOM_OPTION_TYPE TO rma_users
go
GRANT SELECT ON dbo.QFN_VER_ENDORSEMENT_VER TO rma_users
go
GRANT SELECT ON dbo.MARKER TO rma_users
go
GRANT SELECT ON dbo.QFN_ORG_ROLE_TYPE TO rma_users
go
GRANT SELECT ON dbo.QRS_STG_APPLN_QFN TO rma_users
go
GRANT SELECT ON dbo.EXAM_MATERIALS_CODE TO rma_users
go
GRANT SELECT ON dbo.ASSMT_SESS_COMP_MATERIAL TO rma_users
go
GRANT SELECT ON dbo.SCHOOL_QUALCHECK_STATUS TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_TYPE TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_CENTRE TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineStdSel TO rma_users
go
GRANT SELECT ON dbo.CFN_CATEGORY_STATUS_HISTORY TO rma_users
go
GRANT SELECT ON dbo.QFN_SECTION_TYPE TO rma_users
go
GRANT SELECT ON dbo.ENTRY TO rma_users
go
GRANT EXECUTE ON dbo.RMAMarkerSubmStatusUpd TO rma_users
go
GRANT SELECT ON dbo.QFN_ITEMS_CFN_MAP TO rma_users
go
GRANT SELECT ON dbo.REGISTER_COMPLIANT_CODE TO rma_users
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG TO rma_users
go
GRANT SELECT ON dbo.REPORT_STATUS TO rma_users
go
GRANT SELECT ON dbo.ORDER_NOTE TO rma_users
go
GRANT SELECT ON dbo.SUPP_RESULT_ALLOCATED TO rma_users
go
GRANT SELECT ON dbo.FINANCIAL_DETAIL_TYPE TO rma_users
go
GRANT SELECT ON dbo.STD_VERSION_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.RESULT_COMPONENT TO rma_users
go
GRANT SELECT ON dbo.MOE_YEAR_LEVEL_CODE TO rma_users
go
GRANT SELECT ON dbo.SFP_ARGMT_SUB_TYPE TO rma_users
go
GRANT SELECT ON dbo.PAYMENT_STATUS TO rma_users
go
GRANT SELECT ON dbo.RESULT_TYPE TO rma_users
go
GRANT SELECT ON dbo.QFN_VERSION_PUB_HISTORY TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_pdtec2 TO rma_users
go
GRANT SELECT ON dbo.SFP_EXEMPTION_TYPE TO rma_users
go
GRANT SELECT ON dbo.PERORG_ROLE_PANEL_MMBR TO rma_users
go
GRANT SELECT ON dbo.PAYMENT_METHOD TO rma_users
go
GRANT SELECT ON dbo.SCH_AUTHORITY_CODE TO rma_users
go
GRANT SELECT ON dbo.SCH_TYPE TO rma_users
go
GRANT SELECT ON dbo.COURSE TO rma_users
go
GRANT SELECT ON dbo.MOD_ROLE_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.AWARD_EXTERNAL_STATUS TO rma_users
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppNZQASel TO rma_users
go
GRANT SELECT ON dbo.mc_compare_accedited_item TO rma_users
go
GRANT SELECT ON dbo.RISK_ISSUE_INDEX_HIST TO rma_users
go
GRANT SELECT ON dbo.WITHDRAWN_METHOD TO rma_users
go
GRANT SELECT ON dbo.ORG_EVALUATION_HISTORY TO rma_users
go
GRANT SELECT ON dbo.latency_test TO rma_users
go
GRANT SELECT ON dbo.PAYMENT_PRODUCT TO rma_users
go
GRANT SELECT ON dbo.NOTE_ISSUE_STATUS_HIST TO rma_users
go
GRANT SELECT ON dbo.PSE_ELEMENT_CODE TO rma_users
go
GRANT SELECT ON dbo.ORG_LEGAL_STATUS TO rma_users
go
GRANT SELECT ON dbo.SOP_MILESTONE TO rma_users
go
GRANT SELECT ON dbo.dba_pxy_next_id_dr TO rma_users
go
GRANT SELECT ON dbo.MARKER_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.SPER_YTD_RECON_LEARNER TO rma_users
go
GRANT SELECT ON dbo.LEARNER_STATISTIC_TYPE TO rma_users
go
GRANT SELECT ON dbo.PAYMENT_TYPE TO rma_users
go
GRANT SELECT ON dbo.ALLOCATION_WORKTABLE TO rma_users
go
GRANT SELECT ON dbo.PSE_COST_CENTRE_CODE TO rma_users
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_SUBJ TO rma_users
go
GRANT SELECT ON dbo.PAGE_INPUT_STATUS TO rma_users
go
GRANT EXECUTE ON dbo.RMA_datamail_date_update TO rma_users
go
GRANT SELECT ON dbo.VW_LEARNERS TO rma_users
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_OVERRIDE TO rma_users
go
GRANT SELECT ON dbo.QFN_SECTION_ACHIEVED TO rma_users
go
GRANT SELECT ON dbo.RECONSIDERATION_RUN_STATUS TO rma_users
go
GRANT SELECT ON dbo.ExamsMarkerAcceptVw TO rma_users
go
GRANT SELECT ON dbo.LEARNER_SORT_CODE TO rma_users
go
GRANT SELECT ON dbo.CFN_CATEGORY TO rma_users
go
GRANT SELECT ON dbo.CONTEXT_TYPE TO rma_users
go
GRANT SELECT ON dbo.AMAP_SCOPE TO rma_users
go
GRANT SELECT ON dbo.vwSRSSummary TO rma_users
go
GRANT SELECT ON dbo.STD_GROUP_STD_MAPPING TO rma_users
go
GRANT SELECT ON dbo.CUT_SCORE_STATUS TO rma_users
go
GRANT SELECT ON dbo.QUAL_APP_APP_MAPPING TO rma_users
go
GRANT SELECT ON dbo.NZQA_ORG_UNIT TO rma_users
go
GRANT SELECT ON dbo.MESSAGE_LISTENER TO rma_users
go
GRANT SELECT ON dbo.SRS_REQUEST TO rma_users
go
GRANT SELECT ON dbo.SESSION_PRE_PERS_ADDL_VOL TO rma_users
go
GRANT SELECT ON dbo.AMAP_VERSION_PUB_HISTORY TO rma_users
go
GRANT SELECT ON dbo.QFN_RULE_STD_VER TO rma_users
go
GRANT SELECT ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO rma_users
go
GRANT SELECT ON dbo.CRSE_ENDR_RESULT TO rma_users
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO rma_users
go
GRANT SELECT ON dbo.PERORG_ROLE_COMBO TO rma_users
go
GRANT SELECT ON dbo.NSI_INSTRUCTION_CODE TO rma_users
go
