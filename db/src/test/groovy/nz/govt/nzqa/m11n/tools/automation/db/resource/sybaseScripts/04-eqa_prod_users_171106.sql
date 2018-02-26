USE eqa_prod
go
EXEC sp_adduser 'AyaO','AyaO','public'
go
IF USER_ID('AyaO') IS NOT NULL
    PRINT '<<< CREATED USER AyaO >>>'
ELSE
    PRINT '<<< FAILED CREATING USER AyaO >>>'
go
GRANT SELECT ON dbo.QFN_VERSION TO AyaO
go
GRANT SELECT ON dbo.COURSE TO AyaO
go
GRANT SELECT ON dbo.COURSE_VERSION_STD TO AyaO
go
GRANT SELECT ON dbo.STD_VERSION TO AyaO
go
GRANT SELECT ON dbo.COURSE_VERSION TO AyaO
go
GRANT SELECT ON dbo.COURSE_VERSION_QFN_VERSION TO AyaO
go
GRANT SELECT ON dbo.SQR_EVENT TO AyaO
go
GRANT SELECT ON dbo.STD TO AyaO
go
GRANT SELECT ON dbo.QFN TO AyaO
go
EXEC sp_adduser 'MohitB','MohitB','read_only'
go
IF USER_ID('MohitB') IS NOT NULL
    PRINT '<<< CREATED USER MohitB >>>'
ELSE
    PRINT '<<< FAILED CREATING USER MohitB >>>'
go
EXEC sp_adduser 'ShyamS','ShyamS','read_only'
go
IF USER_ID('ShyamS') IS NOT NULL
    PRINT '<<< CREATED USER ShyamS >>>'
ELSE
    PRINT '<<< FAILED CREATING USER ShyamS >>>'
go
EXEC sp_adduser 'apps_eng_user','apps_eng_user','public'
go
IF USER_ID('apps_eng_user') IS NOT NULL
    PRINT '<<< CREATED USER apps_eng_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER apps_eng_user >>>'
go
EXEC sp_adduser 'batch_user','batch_user','public'
go
IF USER_ID('batch_user') IS NOT NULL
    PRINT '<<< CREATED USER batch_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER batch_user >>>'
go
GRANT EXECUTE ON dbo.proc_web_doc_validate TO batch_user
go
GRANT EXECUTE ON dbo.w_populate_entry_stats_tables TO batch_user
go
GRANT EXECUTE ON dbo.Proc_expire_qualifications TO batch_user
go
GRANT EXECUTE ON dbo.QUAL_Domains_Backfeed TO batch_user
go
GRANT EXECUTE ON dbo.QUAL_Replacement_backfeed TO batch_user
go
GRANT EXECUTE ON dbo.QUAL_UnitsTracking_Backfeed TO batch_user
go
GRANT EXECUTE ON dbo.proc_web_as_assessment_year TO batch_user
go
GRANT EXECUTE ON dbo.proc_move_quals_to_expiring TO batch_user
go
GRANT EXECUTE ON dbo.proc_flatten_rules TO batch_user
go
GRANT EXECUTE ON dbo.proc_expire_domain_class TO batch_user
go
GRANT EXECUTE ON dbo.proc_expire_subfield_class TO batch_user
go
GRANT EXECUTE ON dbo.proc_expire_field_class TO batch_user
go
GRANT EXECUTE ON dbo.proc_expire_classification TO batch_user
go
GRANT EXECUTE ON dbo.proc_expire_amaps TO batch_user
go
GRANT EXECUTE ON dbo.proc_expire_standards TO batch_user
go
GRANT EXECUTE ON dbo.proc_sel_archive_standards TO batch_user
go
GRANT EXECUTE ON dbo.proc_notify_dereg_teo TO batch_user
go
EXEC sp_adduser 'sa','dbo','public'
go
GRANT 1 TO dbo
go
GRANT DBCC CHECKALLOC TO dbo
go
GRANT DBCC CHECKCATALOG TO dbo
go
GRANT DBCC CHECKDB TO dbo
go
GRANT DBCC CHECKINDEX TO dbo
go
GRANT DBCC CHECKSTORAGE TO dbo
go
GRANT DBCC CHECKTABLE TO dbo
go
GRANT DBCC CHECKVERIFY TO dbo
go
GRANT DBCC FIX_TEXT TO dbo
go
GRANT DBCC INDEXALLOC TO dbo
go
GRANT DBCC REINDEX TO dbo
go
GRANT DBCC TABLEALLOC TO dbo
go
GRANT DBCC TEXTALLOC TO dbo
go
GRANT 91 TO dbo
go
GRANT 100 TO dbo
go
GRANT 102 TO dbo
go
GRANT 105 TO dbo
go
GRANT 110 TO dbo
go
GRANT 130 TO dbo
go
GRANT SETUSER TO dbo
go
GRANT CREATE TABLE TO dbo
go
GRANT CREATE VIEW TO dbo
go
GRANT CREATE PROCEDURE TO dbo
go
GRANT CREATE DEFAULT TO dbo
go
GRANT CREATE RULE TO dbo
go
GRANT CREATE FUNCTION TO dbo
go
EXEC sp_adduser 'dp_user','dp_user','public'
go
IF USER_ID('dp_user') IS NOT NULL
    PRINT '<<< CREATED USER dp_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER dp_user >>>'
go
GRANT EXECUTE ON dbo.DpRelationshipComboUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpModAssmntPlanStsCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanDel TO dp_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleDel TO dp_user
go
GRANT EXECUTE ON dbo.proc_createPrintLinkTempTable TO dp_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanSel TO dp_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleIns TO dp_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleSel TO dp_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleUpd TO dp_user
go
GRANT EXECUTE ON dbo.MBSNewNsnFileGen TO dp_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlCleanup TO dp_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlEntriesGet TO dp_user
go
GRANT EXECUTE ON dbo.DpHistoryProvContextUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlEntriesUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpScholAwardsGen TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTGroupLkp TO dp_user
go
GRANT EXECUTE ON dbo.dpModReportDeactivate TO dp_user
go
GRANT EXECUTE ON dbo.DpModReportDMRSel TO dp_user
go
GRANT EXECUTE ON dbo.dpModReportLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpModReportDMRUpd TO dp_user
go
GRANT EXECUTE ON dbo.dpModReportModeratorLkp TO dp_user
go
GRANT EXECUTE ON dbo.dpModReportProviderLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerClaimStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpInsComMethodDL TO dp_user
go
GRANT EXECUTE ON dbo.dpModReportStatusLkp TO dp_user
go
GRANT EXECUTE ON dbo.p_fix_expiry_date TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerClaimStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpInsComMethodGU TO dp_user
go
GRANT EXECUTE ON dbo.dpModReportTypeLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpModeratorEndDateSel TO dp_user
go
GRANT EXECUTE ON dbo.DpInsComMethodPU TO dp_user
go
GRANT EXECUTE ON dbo.DpModeratorEndDateUpd TO dp_user
go
GRANT EXECUTE ON dbo.p_randomisation TO dp_user
go
GRANT EXECUTE ON dbo.dpModReportUpdate TO dp_user
go
GRANT EXECUTE ON dbo.DpIwiCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpIwiCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpIwiCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.w_ecm_extract TO dp_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.DistECMPackoutLabels TO dp_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupDel TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupIns TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusDel TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupSel TO dp_user
go
GRANT EXECUTE ON dbo.DpResultCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusIns TO dp_user
go
GRANT EXECUTE ON dbo.DpAssessmentCentreSel TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpResultRankingDel TO dp_user
go
GRANT EXECUTE ON dbo.procMarkerAddressSnapshot TO dp_user
go
GRANT EXECUTE ON dbo.p_fix_assess_date TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpAssessmentCentreUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpResultRankingIns TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpResultRankingUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.DistGTAssessSched TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.ExamsVASerialNbrGen_slow TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseStatusDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseStatusIns TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupIns TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.p_fix_pov TO dp_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.p_add_pers_Run TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocationMethodLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboIns TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpScholStdMigrate TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleIns TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusDel TO dp_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesIns TO dp_user
go
GRANT EXECUTE ON dbo.DpAssistCodeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusIns TO dp_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesSel TO dp_user
go
GRANT EXECUTE ON dbo.DpAssistCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpAssistCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusIns TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpProvidersLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpAssistCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.Remove_SGC TO dp_user
go
GRANT EXECUTE ON dbo.ExamsSplitPanel TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.Remove_SGSM TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.Update_SGC_1 TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerTransferUndo TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusDel TO dp_user
go
GRANT EXECUTE ON dbo.Update_SGC_2 TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGroupDel TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusIns TO dp_user
go
GRANT EXECUTE ON dbo.Update_SGSM_1 TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGroupIns TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.Update_SGSM_2 TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGroupOwnerCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.p_upd_materials_rec TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGroupSel TO dp_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealDel TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGroupTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealIns TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.DistChaserHubLabels TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGroupUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealSel TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DistMKRDeliveryLabels TO dp_user
go
GRANT EXECUTE ON dbo.DpPostAppealDataFix TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpAcademicYearLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusDel TO dp_user
go
GRANT EXECUTE ON dbo.DpPostAppealRemoveReport TO dp_user
go
GRANT EXECUTE ON dbo.DpSchoolResultFileGen2 TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusIns TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpFixMarkerPrefAddr TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpProvidersSchoolLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpKeyDateDel TO dp_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonDel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpKeyDateIns TO dp_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonIns TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpKeyDateSel TO dp_user
go
GRANT EXECUTE ON dbo.p_fix_smv_title TO dp_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonSel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpKeyDateTypeLkp TO dp_user
go
GRANT EXECUTE ON dbo.spSetLatestModId TO dp_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpKeyDateUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpProviderSel TO dp_user
go
GRANT EXECUTE ON dbo.DpProviderStatusDel TO dp_user
go
GRANT EXECUTE ON dbo.DpBklProcTypSel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpResultRankingSel TO dp_user
go
GRANT EXECUTE ON dbo.DpProviderStatusIns TO dp_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlIns TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeDel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTGen TO dp_user
go
GRANT EXECUTE ON dbo.DpProviderStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlSel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.proc_gp_paging TO dp_user
go
GRANT EXECUTE ON dbo.w_ecm_employee_extract TO dp_user
go
GRANT EXECUTE ON dbo.DpProviderStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyDel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyIns TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodySel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DistVADeliveryLabels TO dp_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonDel TO dp_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpFlushResultsModify TO dp_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonIns TO dp_user
go
GRANT EXECUTE ON dbo.DpFlushResults TO dp_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonSel TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerCategorySel TO dp_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonUpd TO dp_user
go
GRANT EXECUTE ON dbo.p_fix_complete_date TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerCategoryUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelMemberStatusSel TO dp_user
go
GRANT EXECUTE ON dbo.DpCountryCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelMemberStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelDel TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelIns TO dp_user
go
GRANT EXECUTE ON dbo.DpProviderUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelSel TO dp_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpCountryCodeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpPanelRollover TO dp_user
go
GRANT EXECUTE ON dbo.ExamsVASerialNbrGen TO dp_user
go
GRANT EXECUTE ON dbo.DpCountryCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpPanelsToRolloverGet TO dp_user
go
GRANT EXECUTE ON dbo.DpCountryCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocMethodLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlDel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupDel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupSel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpExamsResultsTransferAll TO dp_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelMemberSel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocationMethodLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedDel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsPanelLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedIns TO dp_user
go
GRANT EXECUTE ON dbo.ExamsGTAllocGroupLkp TO dp_user
go
GRANT EXECUTE ON dbo.ExamsPanelRegionLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedSel TO dp_user
go
GRANT EXECUTE ON dbo.DpSperBtchsWthDifPrvdrs TO dp_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpSperBtchsWthDifPrvdrsSmry TO dp_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupIns TO dp_user
go
GRANT EXECUTE ON dbo.DpExamsMpmStatusUpd TO dp_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelIns TO dp_user
go
GRANT EXECUTE ON dbo.DpMpmStatusLkp TO dp_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelSel TO dp_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpBatchErrorCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpBatchErrorCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.ExamsExamCentreAlloc TO dp_user
go
GRANT EXECUTE ON dbo.ExamsExamCentreAllocMaster TO dp_user
go
GRANT EXECUTE ON dbo.dm_proc_insert_perorg_alt_id TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgAltIdTypeLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpSSBLkp TO dp_user
go
GRANT EXECUTE ON dbo.DpQualVrfctnBatchesSel TO dp_user
go
GRANT EXECUTE ON dbo.sp_reset_qual_248 TO dp_user
go
GRANT EXECUTE ON dbo.DpAsmntCntrPaymentGradeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.p_fix_first_assess_date TO dp_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeUpd TO dp_user
go
GRANT EXECUTE ON dbo.DpPerorgTypeSel TO dp_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboDel TO dp_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeDel TO dp_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboIns TO dp_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeIns TO dp_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboSel TO dp_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeSel TO dp_user
go
EXEC sp_adduser 'edo_user','edo_user','read_only'
go
IF USER_ID('edo_user') IS NOT NULL
    PRINT '<<< CREATED USER edo_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER edo_user >>>'
go
GRANT EXECUTE ON dbo.get_next_id TO edo_user
go
GRANT EXECUTE ON dbo.p_lwf_ins_audit_tran TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_prod TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_recon_run TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_refund TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_add_paymt_status_hist TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_get_all_pymt_rec_run TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_get_last_recon_run TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_payments TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_refunds TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_by_id TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_products TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_get_processed_recon_run TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_upd_payment TO edo_user
go
GRANT EXECUTE ON dbo.p_pay_upd_reconciliation_run TO edo_user
go
EXEC sp_adduser 'eqa_rpt_user','eqa_rpt_user','read_only'
go
IF USER_ID('eqa_rpt_user') IS NOT NULL
    PRINT '<<< CREATED USER eqa_rpt_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER eqa_rpt_user >>>'
go
GRANT INSERT ON dbo.DIARY_EVENT TO eqa_rpt_user
go
GRANT INSERT ON dbo.AUDIT_TRANSACTION TO eqa_rpt_user
go
GRANT INSERT ON dbo.NEXT_ID TO eqa_rpt_user
go
GRANT DELETE ON dbo.DIARY_EVENT TO eqa_rpt_user
go
GRANT DELETE ON dbo.AUDIT_TRANSACTION TO eqa_rpt_user
go
GRANT DELETE ON dbo.NEXT_ID TO eqa_rpt_user
go
GRANT UPDATE ON dbo.DIARY_EVENT TO eqa_rpt_user
go
GRANT UPDATE ON dbo.AUDIT_TRANSACTION TO eqa_rpt_user
go
GRANT UPDATE ON dbo.NEXT_ID TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getAllAssessmentTitles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_region_by_code TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_work_experience TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mods_assned_to_checkmod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_quantity TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_FX_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_non_compliant_qualifications_without_org TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdTypeCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_finance_invoices TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SRSUEQualExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_learner_srq_secondary_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_additional_paging TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_find_applicants TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModAssmntPlanStsCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_patch_std_group TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getAllComponentsByYear TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_registered_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_prv_accred_domains_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_years TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_rate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_PH_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_PanelLeadersPackMaterials TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_find_nsn_for_sop TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_past_learner_sec_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_find_apps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_patch_std_group_cfn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_related_perorg_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_rol_credits_achvd_in_yr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ass_subj_by_group_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_unit TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_createPrintLinkTempTable TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdTypeForVer TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_find_sop_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_quantities TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_applcnts_agent TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_patch_std_group_coverage TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getAllSubjectsByYear TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_results_by_entry_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_rol_learner_by_name_dob TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assessment_plan TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_contract_items TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examApproveAllocationRun TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_financial_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_applcnts_web_user TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_patch_std_group_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_rma_web_supp_unallocated TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_sac_exam_processing_report_data TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_web_doc_validate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCandidatesOtherSchool TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetSubjectLevels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_frwk_analysis TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_financial_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_application TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_CELL_PH_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps_by_year TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.MBSNewNsnFileGen TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.mc_find_assplan_systems TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_ir330 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCheckMarkerIdForEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetSubjects TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_full_qc_learners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_results_for_class TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_financial_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Create_Y11_Data TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_application_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentForId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_perorg_non_mark TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_std_subject_catorg_names TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMaterialsList TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_item_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examDeleteAllocationRule TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetSubLvlPnl TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_ROA_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_getall_lrnr_results_verif TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_contract_in_role TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_applications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_rol_learner_by_nsn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cops TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlCleanup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_lrnrs_for_studyprov_by_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_ReactivateMPM TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assessment_subject TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_person_claim TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_summary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examDeletePersonalisation TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_achieved_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_financial_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Create_Y13_Tables TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_apps_failed_sub TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.EOS_MGRTN_COUNTS TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsBySession TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_rol_quals_achvd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_focus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlEntriesGet TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_mod_is_allocated_for_period TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assigned_marker_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_move_contract_item TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindStdVersionsForAss TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_com_get_eqa_setting_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Statistic_Insert TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_freq_qual_names TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpHistoryProvContextUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_rol_stds_achvd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_cec_get_exemptions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlEntriesUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_populate_entry_stats_tables TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assplan_legacy_notes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpScholAwardsGen TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_rem_claim_rate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGenerateNewMarkerCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconRef3 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_chkmod_rpts_for_chkmod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_com_get_recent_eqa_settings TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Statistic_Update TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_qual TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_role_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_cec_get_exemption_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_sites TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_sec_learn_data_other_achieve_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_rem_item_from_ctct TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_ho TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetActiveMPMForMarker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetVAContexts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_learner_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_com_ins_eqa_setting_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Adhoc_Driver_process TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUtilSequenceColors TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsBySubject TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_roles_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_seclearndata_ncea_detail_wdentries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assplan_years_for_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_rem_item_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAssSessCmp4StdYear TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInfoManagementLabel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_ntrs_rslts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_create_prescr_ver_stat_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_1a TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAllocateEntries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_quals_by_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsByType TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_sac_approvals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_cec_get_rules TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTGroupLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qa_activity TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_reset_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_check_mod_report_years TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_search_contractors TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAssessmentSession TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_current_previous_batch_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_1b TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_institution TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getDistributionSummary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_sacs_for_entry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTStandards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_check_mod_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_contract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetCntx4MrkAndAllocGr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_prov_awards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_institutions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNDropTables TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dpModReportDeactivate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getEventDate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_secondary_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_cfn_search_name_or_number TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTPortfolios TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qa_outcome_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.CRS_PERORG_ALT_ID_Ins TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_checkmods_for_year TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_test_rep TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_item TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetContext4MrkrEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertAssessCentre TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_seg_roa_for_ce TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_add_memo_of_agreement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_3 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModReportDMRSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_nz_qualifications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCreateCGA TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dpModReportLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getEventsByYear TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_session_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSpecialAssessmentAll TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTMarkers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qual_app_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_chkmods_mod_id_by_yr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_quantity TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetContextsForAllocGr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_seg_roa_for_qc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_find_prv_names_moe_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_4 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModReportDMRUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_qualifications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCreateCandidate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dpModReportModeratorLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_amap_with_std_and_cat TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTMrkrPvdrPrtflo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_classfn_by_number TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_rate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetCurrTransferAlloc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInternalLabelReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_teg_roa_for_qc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accred_item_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_Adhoc_ExtractLearners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_selected_prods TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCreateCohort TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dpModReportProviderLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTFirstMarker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_flag_paid_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetCurrentAllocForMag TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examIsMaintModeEnabled TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_caa_unaccred_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_ExtractLearners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerClaimStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_supporting_docs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpInsComMethodDL TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCreateCount TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dpModReportStatusLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getExamCentres TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_amap_advance_report TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_by_app_num TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTAllocate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_reg_app_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_codetable_audit TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_unit TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetEntrySerialNumbers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examIsPanelLeader TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_hookon_fee TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_expiry_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cfn_depth_by_code TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerClaimStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_work_experience TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpInsComMethodGU TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCreateResult TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_qfn_minor_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dpModReportTypeLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_amap_advance_search TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_codetable_cols TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetForbAllocForMarker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examIsPanelMember TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_approval_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSelectEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModeratorEndDateSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_applicant TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpInsComMethodPU TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAddMarkerPanelMember TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_check_oid TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCreateStandard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_standard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_case_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_codetable_fk_vals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsResetMarkerStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_contract_items TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetForbiddenLearners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examIsValidMarkerCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_hookon_letter TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_signatory_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpModeratorEndDateUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_application TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsGetCurrentAllocCount TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_randomisation TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dpModReportUpdate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpIwiCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_standard_by_number TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_indicators TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_codetable_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsTransferAllocReversal TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetForbiddenProviders TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_is_lrnr_embargoed TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_by_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_qualification TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsTransferAllocation TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Change_avacode_std_number TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpIwiCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_std_category_names TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_codetable_vals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetLearnerEnrolments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_items_subj_to_emb TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_change_reasons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getGlobalBufferParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpIwiCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_std_entry_cts_by_subj TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_codetables TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ecm_extract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_ir330 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerAssignedCde TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMarkerSchedules TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_invalid TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_schedule_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qual_sec_qc_cleanup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetSupervisors TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Highest_Attainment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_std_entry_cts_by_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DistECMPackoutLabels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_authority TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_com_combo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_person_claim TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerPageHistory TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_maori TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_schedule_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.umlaut2txt TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_std_result_spread TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_decile TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_communication_methods TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_com_get_all_eqa_settings TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerPageSummary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_nonmaori TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_extension_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFinalListAnswerSets TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_all_qfns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getLatestComponentFile TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_gender_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ito_report_quals_pop_qual TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_compentry_by_comp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMaxReconPageNumber TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_provres TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFinalPackingList TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_non_nqf_qfns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getLatestFileByType TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_std_subject_names TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_locality TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_country_by_code TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_accred_ext_extend TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMkrByAssgndMkrCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examNewCodeGenerator TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_qual TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_learner_categories TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examDeletePaginationRun TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_subj_entry_cts_by_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_active_app_objects TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_sub_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_course TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_accred_ext_select TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMkrStsByAssgndMkrCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examP13nLabelForEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_memo_of_agreement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examExMarkSheetsBody TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_subject TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCalcCompsHeld TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_domains_for_category TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Proc_expire_qualifications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ct_amap_web_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_accredited_program TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetNewStdCtxMapsFrMkr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPanelAdRegions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_awards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_indicators TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpResultCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examExMarkSheetsHeader TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getOversView TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAssessmentCentreSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_submission_dates TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sched_eers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_next_tagged_qc_lnr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ct_qual_web_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_accreds_for_case TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelSummsByMkrId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_ECM_Assessment_centre_Update TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_responses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpResultRankingDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindMarkSheet TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.procMarkerAddressSnapshot TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_assess_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getPrintVolume TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAssessmentCentreUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_unaccredited_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_next_amap_seq_number TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_school_level TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ct_stds_web_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_accreds_for_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPanelLeaderAddress TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_letter TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_severity_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpResultRankingIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindPanelsFromMkPgs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getProdVolumeSummary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_STANDARD_INPUT TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_unallocated_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_next_app_seq_number TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_db_ver_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_add_accred TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPossContextsForMkr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_misconduct TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_sta_his TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerAllocation TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_sper TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_uninv_mod_group_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.getNceaGroupings TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_arrangements TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_empty_aplan_summaries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_add_extension_run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPossibleCntx4Mrker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPanelStdsForPanel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_merge_leap_orders TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpResultRankingUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_valid_sacs_for_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DistGTAssessSched TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_bulk_attes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetResCmpLayout4AssCm TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPaperChanges TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_mod_rebate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SU_Check_Exist_Std_Version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_subtypes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAllocateEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_vendors_customers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_std_version_cfn_oid TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_exempt_catgs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_course_search TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetResCmpQuest4LinkId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SU_Clear_Temp_Table TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_subject_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertMkPgHistory TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAllocationStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertComponent TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsVASerialNbrGen_slow TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_verification_states TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_for_cfns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sites TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrolment_yrs_for_lrnr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_del_accred TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetResCompLayout4Std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examQueryPanels1 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_nsi_number_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_organisation_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseStatusDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertException TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_versions_of_standard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_for_comps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_size_categories TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_del_app TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetSperBatchSubmissionDate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examQueryPanels2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_nzdb_reg_letter TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_delete_standard_input_with_error_eqa TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_per_role_by_names TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPoVpMarkSheetsBody TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseStatusIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_for_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_stag_app TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_del_app_org_focus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdStubForCmpt TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.procUpdateQnText TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconProgReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prof_affiliations TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_has_enrolment_for_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_main TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_standard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_del_app_sfp_catg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdStubForCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconProgReportSum TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_pun_stat TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_contact_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReallocMarkerPgLine TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindMarkers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_has_enrolments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qfn_search_any_framework TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrols_for_prov_by_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_del_course_qfn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdTypeForCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconRef TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_qual_awarded TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_has_role TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qual_get_accredited_teos TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_teo_reg_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_del_course_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetStdMinVerForEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconRef2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_qual_check_log TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_exempt_catgs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_exam_fetch_ex_pagedata TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAbsentLearners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertMaterialFile TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_pov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ins_audit_transaction TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qual_get_cfns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetTransfHistCnt4Mrkr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconRefSchool TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_by_moe_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_RCQnType TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_exam_fetch_other_pagedata TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAcademicYear TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_upd_learner_orn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ins_codetable_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_exam_centre_police_vet TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetUnallocatedEntries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconRefSchool2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_refund_section TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_code_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_UpdRCQnType TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCandidatesReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocCounts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLUpdateROLRequest TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_add_pers_Run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ins_codetable_vals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_rebuild_std_group_coverage TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_user_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_entry_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInfoManagementLabel2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconRefSchool3 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_results_list TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cop_arranged_by TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPostMarkersReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocGroup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLUpdateLearner TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_remove_old_pers_run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_insert_sac_upload_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_exclusions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_has_base_accred TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ethnicities_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accred_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertAllocationRule TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examRecRefStat TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_review_letter TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cop_arranged_option TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_resultUpdCLCT TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPostStandardReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocGrp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLCreateTables TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocationMethodLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponent TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_is_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_sec_learn_data_qual_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_direct_payments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertTeReoIndication TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examRegionalBufferPack TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_crse_end TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cop_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_ASCUpdate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMarkerPortfolio TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLLearnerExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_is_mod_role_in_use TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_app_contact TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.load_entry_context TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_exam_nonclashes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_add_logo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examIsDuplicateAttendance TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSetChanges TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_learner_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qa_activity_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_newResultComponent TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMarkerPortfolioNonApp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocationRules TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLStandardExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_is_panel_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_standard_search_by_domain TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_app_org_focus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_exam_session TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examIsValidExamAttendance TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_qfn_summary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Exa842EntryMarkerReset TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_reasons_for_change TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_ASCLoad TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAssignedMkrCodes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLQualificationExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentIds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_is_std_accredited_for_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_stdver_in_catg_and_lvls TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_app_sfp_catg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_levels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examLastRunForAllocGroup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSuppCloseOff TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_qual_achieved TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_mgmt_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_resultComponentLoad TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioStdLevel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpScholStdMigrate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLQualificationStrandExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_is_va_assistant TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_validate_category_delete TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_caa_app_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_fees_by_enrolment_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_pte_levels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examLatestReconsRunStats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_retrieve_data TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_argmt_subtype TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetEcmsByProvider TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLUnitResultExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateExceptionStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_datafix_milisecond_dates TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ito_report_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_validate_cfn_expired TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_cop_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_rebuild_input_batch_error TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_fin_assist_apps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_qfn_Types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examLearnerEnrlmntsByStd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUnallocatedSupps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_schol_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_teo_provider_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubMarker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetEcwByPerorg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLUnitResultLatestIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ContactsMergeCopyComMethod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ito_report_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_basic_amap_search TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_groups_mod_stats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_qual_Types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMarkingPageSummaries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUnallocatedSupsMkId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_standard_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SRNCandidatesExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.rs_get_lastcommit TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_trust_deed_holders TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLUnitResultLatestUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ContactsMergeCopyName TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ito_report_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course_qfn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_regions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_Valid_Page TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMkrStatusLttrsByStat TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUnallocateMarker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_trnd_exc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SRNCounts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.rs_syncup_lastcommit TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsResetMaxToCurrAlloc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_trust_holders_org TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetExamCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLScholResultExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ContactsMergeCleanup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_key_performance_report TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_amap TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_contact TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetMarkersOnPanel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QU_Check_Exist_Qual_Version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAssistCodeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUnallocSuppsById TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SRNHEader TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_accred_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAdmissExamCentre TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLScholResultLatestIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ContactsMergeValidate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateOvers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_list_all_exclusion_sac TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_application TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_itos TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_doc_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAExMarkerPageLineUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPanelDetailsByPanelId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QU_Clear_Qual_Update_Data TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAssistCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_ue_award TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SRNResultCodesExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAdmissSchoolsExams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMagForMember TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLScholResultLatestUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ContactsMergeProcess TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateRowId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_list_all_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_eer_sched_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_iwis_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_org_focus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPanelMembersForPanel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAssistCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_school_qc_learners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SRNResultsExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_document_items TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_issue_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAdmissStandards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLScholQualExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ContactsMerge TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_enr_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_nqf_qfns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_eer_schedule TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProvidersLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_judgement_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_sfp_catg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPersonalisationTotals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAssistCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateAssessCentre TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_sec_qc_endorsement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_cfn_cLog_std_stat TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_assplan_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSQLResultTransfer TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_Check_Endorsement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_note_iss_stat_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAllMarkerCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLUEQualExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_current_qfn_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_studyprov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_issue_index_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPoVpMarkSheetsHeader TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_learner_select TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindEntryAndResult TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_cop_arranged_by TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAllocatedSupps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_current_std_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Remove_SGC TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.mod_std_group_load TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_create_new_prescription TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_apps_by_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubjectLevel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsSplitPanel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_qual_achieved TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertAbsentResult TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsEntryMarkerReset TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_cop_arranged_option TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAllocatedSupsLrnr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkSheetsByExam TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetTransSummary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Remove_SGSM TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_lrnrs_for_studyprov_by_nsn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.mod_std_group_norm TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_create_new_reg_prescr_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_learner_category TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubmissions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateGroupForEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_schol_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_sfp_exemption_catg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAllocSuppsById TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetName TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_qfn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPnlsBySubjectAndRgn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Update_SGC_1 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_marker_has_verif_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.mod_std_group_validate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_create_prescr_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerTransferUndo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelLeaderNames TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_learners_for_course TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_caa_app_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubmissions2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_standard_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocationExclusions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.FMIS_Add_eQA_Only TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_set_delivery_status_ind TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAnonAddressLabel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPagesForSper TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Update_SGC_2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_marker_verif_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.mod_std_group_main TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_create_prescr_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_note_issue TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPendingRecons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGroupDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_learners_for_nsifile TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_count_assess_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReallocPgLineValidate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_ue_award TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.FMIS_ORG_PERORG_ROLE_LOAD TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_crs_dev_and_review TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAnonAddressLabel2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_qfn_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Update_SGSM_1 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_marker_verif_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_notes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPendingReconsStats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGroupIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMarkerCodeGen TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_learners_unpaid_fees TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.EMOD_220_ROLE_2002_2003_ins TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examResetMarkerSubStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_ce_res TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocGrpView TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_internal_approval TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAnonAddressLabel3 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelMembers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_standard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Update_SGSM_2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_marker_verif_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_expire_prescription TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_pro_condition TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconsHeader TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGroupOwnerCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cfns_by_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examRevertAllocationGroup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_ce_summ TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_rma_web_store_and_forward TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.rs_send_repserver_cmd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_library_resources TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_grant_fim_macro_user TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_std_minor_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_rpts_for_moderator TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_mod_has_capacity TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_upd_materials_rec TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_update_prescr_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_cop TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_bulk_wd_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGroupSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_res_by_prov_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMASuppResultAllocatedUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSelectPortfolioEntris TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_PanelLeaderPackLabels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_crse_end TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QUAL_Domains_Backfeed TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.check_web_contingency_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_overseas_delivery TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.getStdGradingResults TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_std_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_turnaround TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_mod_has_te_reo_reports TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.get_next_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_update_prescr_ver_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGroupTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_panel_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_moderation_subjects TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_classfn_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSetAllocationRunStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_learner_select TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QUAL_Replacement_backfeed TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_cop_arranged_by TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_Moderator_duplicates TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCmpResExc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.getStdVersionDetails TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.MOD_ASSESS_PLAN_EMOD_201_upd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMarkerStatusUpdate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_stds_in_domain TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getOrgDetailsByPerorg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DistChaserHubLabels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_find_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGroupUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_classification TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSetEntryReconStatuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_PanelPackList TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_qual_achieved TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QUAL_UnitsTracking_Backfeed TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_cop_arranged_option TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCodeGenerator TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMarkerUnallocate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_achievements TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_mod_is_allocated_to_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DistMKRDeliveryLabels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accreds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_focus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_panels_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_comm_methods TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examTranslatedPapersReqd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_updReseqMarkerPages TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_schol_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPostAppealDataFix TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_reason_for_change TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examHistoryTransStds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_ass_plan_subject_stats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accreds2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_ho TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_panels_region TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cond_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMrkrContextCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUnmrkdAllocatedSupps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_standard_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_sfp_exemption_catg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAcademicYearLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsMPL TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_default_plan TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.assessment_session_norm TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_prov_is_forbidden_for_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.UpdQCStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_bufferPackPackingList_B TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_qa_activity TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_reallocations TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cond_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_Key_Date_Get TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateAllocationRule TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_stdsumm_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_ExtractResults TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPostAppealRemoveReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_staffing_resources TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSchoolResultFileGen2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindEligableMarkers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertAbsent TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_exclusions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_get_insuf_comp_dist_summ TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.assessment_session_validate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_report_compassionate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_base_org_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_registration_app TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsUpdateMarkerRoleEndDate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_result_spread TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_conditions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_Update_submission_Status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateComponentReadyForSPER TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_ue_award TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_UpdateQualsGained TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpFixMarkerPrefAddr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_summary_of_change TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_ins_relationship TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.marker_panel_load TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_change_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_risk_issue TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_schedules TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_confidence_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_tcs_dual_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_ProvQualCheck_EQAUpdate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_teaching_resources TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindMrkrToAlloc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertAttendance TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_mods_for_check_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_allocation TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getDevelopers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProvidersSchoolLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.marker_panel_norm TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpKeyDateDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_ho TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_sfp_arrangement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_scripts_alloc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_reset_batch_profile TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMagOnMarkerPage TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetReconPageId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_unverified_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_ProvQualCheck_InsProc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_transition_arrgmts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindStdsWithoutComp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertDiaryEvent TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_seclearndata_ncea_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpKeyDateIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_reg_classfns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_arranged TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_existing_assess_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsRecordPersRunDate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMaintenanceMode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetScheduledEntries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_QualCheckDriverProc_cut TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_applyBufferParamsToComponents TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_qfn_rule TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.assessment_session_main TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpKeyDateSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_has_limited_base_accred TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_stg_application TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_materials_url_years TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_option TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMarkerForbidden TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetScheduleResults TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ytd_recon_learner TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_DailyDriverProc_cut TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_applyGrowthAllowanceParamsToComponents TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_smv_title TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_qfn_rules_tree TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.marker_panel_main TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_select_sac_upload_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpKeyDateTypeLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_emergency_broadcast_ecm_contact_list TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_version_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_web_as_assessment_year TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAAbsentScriptLoadData TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_allocation_stats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMarkerHoldResults TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_Daily_and_ITI_Driver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.spSetLatestModId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_find_sample_stds_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_applyNonBufferParamsToComponents TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_check_ncea_charge TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getOrgDtlsByPerorgAltId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_stats_assessment_sessions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpKeyDateUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_lwf_ins_audit_tran TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_is_course_duplicated TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_by_mod_role_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_teo_mod_plan TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMarkerSubStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconLabels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_Daily_QualCheckDriverProc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProviderSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_deleteAdditionalCmptVolumeByPrePersId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMarkerReallocations TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProviderStatusDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamAllocationGroupRevert TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBklProcTypSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_stats_enrolments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_is_course_owner TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_capacity_reasons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdatePoliceVetExpiry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examReconsBody TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_count_final_prov_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_QualCheckDriverProc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpResultRankingSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getAdditionalComponentVolumeNotExtracted TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProviderStatusIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_check_roa_charge TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERHeaderSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getRelatedRoles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_stats_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_prod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_set_accred TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_comps_for_rpt_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_check_mod_reports TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_exam_distributor_validate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.emod409_moderation_report TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_del_entry_assistance TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTGen TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getAdditionalProductionVolumeNotExtractedForId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetTransAssigns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProviderStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_check_srs_charge TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_stats_ext_entries_variance TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_recon_run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_set_accred_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_gp_paging TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_by_num TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_finalVariationPckngList1 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examRegenReconPage TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ecm_employee_extract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getAllExceptionsByFileId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPaginationRun TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProviderStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_del_courier_price TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_stats_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_refund TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetEcwById TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_set_case_end_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_contact_changes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_rma_clear_web_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_finalVariationPckngList2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_exists_spec_assist_app TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getAssessmentSessionsFromYear TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAssCentreById TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_oz_learner_std_result TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_stats_verif_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_add_paymt_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_declined_reasons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_owners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assessment_standard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getOrgDetailsByPerorgRole TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSetReconRunIdOnPage TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentByMaterialCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAssessmentCentre TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_latest_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_courier_price TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_tert_prov_can_do_ass_plan TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_all_pymt_rec_run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetLastApprovedEcm TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_comments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_diary_events_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assessment_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getPerOrgRolByPerOrgAltID TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetEthnicity TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_assplan_systems TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsByCriteria TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSelectMarkers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodySel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_courier_prices TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_truncate_stats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_last_recon_run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_contact TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_latency_test TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_diary_events_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_ver_qfns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assplan_summaries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_resultComponentLayoutType TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetProviderList TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.update_provider TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsBySessionAndExamCentre TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_courier_zone TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_upd_amap_web_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_payments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertEcw TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_description TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DistVADeliveryLabels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_jdgmts_for_rpt_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_ver_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_incomp_mod_rpts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_cover_letr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetResults4Provider TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpFlushResultsSave TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsByStandard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSubjectPnlsByPnlId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_delivery_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_conGetRelationships TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_upd_codetable_vals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAResetDateToDatamail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_refunds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_docs_posted TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_not_inv_reasons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_versions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_lnr_letter TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMarkerToSchoolLabel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_compass_by_enrolment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpFlushResultsModify TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getExamCentreAddlPrePersVols TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetAssSessionComp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examSummStdTrans TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_upd_ct_stds_web_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_submit TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_rep_status_events TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_courses_by_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_resub TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_qc_lnrs_new TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFixAsmtSesCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_exam_session_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpFlushResults TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getExamCentreAddlPrePersVolsById TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QC_Adhoc_QualCheckDriverProc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUndoAllocationRun TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_upd_qual_web_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_products TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_withdraw TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_report_statii TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_crs_ver_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerCategorySel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_prov_mod_plan TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_qc_lnrs_orig TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFixAsmtSesTitle TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dmproc_add_perorg_alt_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_forbidden_learners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_contact_list TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalDistributionRequests TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetCntxForSubjects TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_complete_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_learner TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_upd_stats_expired_ia_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_processed_recon_run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_course_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_report_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_crs_ver_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerCategoryUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_app_required_letter TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMPLResultTransfer TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalProductionRequests TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetContactStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_appGrp_NQF_status_count TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_lodgement_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsDeletePerorgRole TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_upd_stats_sess_other_sch TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_upd_payment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_report_years TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_delivery_modes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelMemberStatusSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_WDRes_list TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_learner_examsessions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCandidate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_cec_get_grading_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_risk_issues TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalProductionRequestsDateList TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateEcw TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_PanelLeadersPackDetails TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_datamail_date_update TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_update_stats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_upd_reconciliation_run TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_deliver_mode_exp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCountryCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_group TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_case TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelMemberStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_info_WDRes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_learner_peers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examCentreSession TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_cfn_search TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalRequestsDateList TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateEntry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_payment_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qualification TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_tmp_update_prescr_ver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_verif_data_entry_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examValidateSchool TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_eer_qa_notes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_add_applicant TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ext_entries_no_rslts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_exam_ins_ex_mrkr_batch TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_learners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_check_component_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getGlobalGrowthAllowanceParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_payment_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_move_quals_to_expiring TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_com_get_recent_es_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_verif_std_levels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getPersonRoleTypesByPerorg TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_eer_schedule TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_schedule TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpProviderUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_finance_invoice_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_learners_by_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_add_item_to_ctct TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getGlobalNonBufferParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_provider TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.EMOD774STDGroupLinkDateCheck TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_results_for_SA_class TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_marker_code_from_result TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_external_support TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_role_statii TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_add_institution TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_act_spec_assist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_exam_ins_ex_mrkr_page TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_learners_by_nsn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_activity_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getMaterialCodesWithTotalQtyOrder TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_exam_distributor_paging TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_qual_result TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_com_upd_eqa_setting TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_reg_nqf_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_add_inst_qual TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCountryCodeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_prepaid_learners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examAssignTranslator TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_learners_total TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_cc_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getOrderDatesAndAmounts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_short_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_qfn_status_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_work_queue_counts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_provider_by_moe_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_internal_support TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPanelRollover TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_rpt_years_for_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsVASerialNbrGen TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCountryCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_get_unpaid_learners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examComparisons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examIsDuplicateAbsent TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_cl_status_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_getTotalQuantityOrderedByMaterialCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_exam_ins_ex_mrkr_line TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_unique_short_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_status_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMaterialsReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_learner_category TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.AddToMarkerPanel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPanelsToRolloverGet TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_focus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpCountryCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_hookon_learner_stas TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examDeleteAvlblRegions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_nsn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_contract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_ins_courier_price TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMaterialsSummary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocMethodLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_std_by_number TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_add_work_experience TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_gov_body_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_payment_cover_sheet TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCreateTables TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examDelTeReoIndications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examResetLatestPers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_mod_reports TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_contracts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertAdditionalComponentVolume TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_flatten_rules TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_ins_lodgement_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_note_issue TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_std_groups_by_year TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_del_applicant TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_assignees TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_recons_result_letter TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFindTranslators TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPersonalisationMark TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_mod_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_items TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertGlobalBufferParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getNzqaEmployeeList TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_expire_domain_class TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_notes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_sys_for_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_del_application TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_index_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_upd_batch_error_code TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelAssigns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examTidyLatestPers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_moderators TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertGlobalGrowthAllowanceParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_expire_subfield_class TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_insert_enrolments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_learner_loc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_org_legal_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_checkmod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_bufferPackingBase TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_del_qualification TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_close_off_entry_sec_course_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetSessions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_panel_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_rate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertGlobalNonBufferParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExamsResultsTransfer TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetGroupsForPanel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_entryPersonalisation TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_expire_field_class TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_upd_courier_price TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_org_stability TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_check_batch_status_old TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetTeReoCircular TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examPersonalisationRun TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_panels_by_standard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_units TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertMaterialComponentFile TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExamsResultsTransferAll TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetKeyDate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelMemberSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateLabelPrintDate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_expire_classification TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_organisation_qms TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocationMethodLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_moderator_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_del_work_experience TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_check_missing_triggers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetTeReoIndications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_people TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claims TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_insertSessionPrePersVolume TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getRoles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_updatePergorgStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_expire_amaps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_delete_learner_input_match_eqa TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_component TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsPanelLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_moderator_rpt_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_get_batch_processing_response TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetTransRegions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_people_by_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claims_by_pid TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateAdditionalComponentVolume TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetLearnerContexts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_getUsageReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsGTAllocGroupLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_judgement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_pro_condition TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsPanelRegionLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_moderator_stats TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_monitor_cycles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetTransStatus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_previous_mod_reports TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_claims_by_rid TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateAdditionalProductionVolume TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_qual_org_role TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSperBtchsWthDifPrvdrs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_expire_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_update_assessment_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_prov_ho_code TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_moderator_years TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_promote_batch TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_monitor_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_reset_batch_profile_new TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_prov_lrnrs_by_batch TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_contract_item TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentBufferParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sperCompProcessInfo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSperBtchsWthDifPrvdrsSmry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_prov_ho_vetted TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mods_alloc_to_sys_year TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_no_qfn_reasons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.transfer_erlpCandidate_subject TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertAvlblRegion TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_contract_items TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentGrowthAllowanceParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sperFindCompToProcess TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sel_archive_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_assess_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_ssb_by_perorgRoleId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_cop TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mods_allocated_to_sys TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_com_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_assplan_systems_original TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInsertTeReoCircular TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examInitP13nReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_providers_by_moe_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_contract_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentNonBufferParams TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExamsMpmStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerHistory TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_advce_NSN TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_notify_dereg_teo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_assess_subj TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_ssb_by_resmanClientId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qual_amap_cov_detail TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_learner_by_name_or_dob TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCandidatesGradeAvgExrct TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examVariP13nReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_contractor TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateExtractAdditionalProductionRequests TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpMpmStatusLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerIdForCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_byLrnrId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_del_payment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_assess_plan TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qual_amap_cov_scope TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mods_for_check_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCandidatesExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetMarkerPanels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examFinalP13nReport TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_sa_lrnr_by_nsn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_element_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateExtractAdditionalRequests TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.OidInitialise TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_perorg_role TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qual_amap_cov_summ TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_focus TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_HISTORY TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mods_for_nat_mod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_moderator_provider_addresses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNCohortsExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_learner_sec_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_sample_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateNonBufferComponentRates TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkingPage TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_finance TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_cancel_batch TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_name_non_mark TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_LINE TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_non_check_mod_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_app_id_for_payment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_prov_lrnrs_by_name_dob TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNHeldStd_load TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_sec_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_sample_stds_std TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_export_elements TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_emm_updateSessionPrePersVolume TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkingPageLines TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_direct_payment_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_perorg_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.QU_Update_EQA_QMV TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_rgcode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_ALLOCATED TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_organisation_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_academic_years_for_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNQualificationsExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_sample_subjects TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries1 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_export_persons TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_find_latst_assessble_stdver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_input_batch_error_insert TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineNZQASel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SU_Update_EQA_SMV TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBatchErrorCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_qa_activity TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_UNALLOCATED TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_secondary_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_panel_members TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsDeleteMarkerRole TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_assessment_standard_by_assess_subj_and_std_num TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNResultsExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_emergency_broadcast_contact_list TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMkrStsByMkrCode TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_transcpt TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpBatchErrorCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_exam TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ITI_Adhoc_Create_Y13_Tbls TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_panel_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_cmod_rpt_years_for_cmod TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNSchoolExcludesExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdateTeReoCircular TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_standard_keywords TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries3 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkrLine4EntryId TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_ce_enrl TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineStdSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_receipts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_registration_app TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_dba_check_arch_table_column TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_sec_quals_past TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_peers_by_compentry TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_contact TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrol_years_for_provider TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.IRNStandardsExtract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examUpdTransUnassigDt TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_standard_levels TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_gl_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_check_non_standard_param_charge TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkrsForTransfer TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_qc_lnrs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_risk_issue TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_people_for_provider TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_contacts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_notes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_ir330 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_application_system TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkSheets TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_risk_summary TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_get_proposed_assess_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_past_sec_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_person_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_contactInfo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id_all TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examValidateStandard TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_absent_script_report TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_ir330s TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_last_status_updated TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppWebSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_sfp_arrangement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_person_by_userid TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_doc_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrolments_with_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_item_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_outst_fee_lodgement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dm_proc_insert_perorg_alt_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.Adhoc_QualCheck_and_ITI_Driver TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_by_ref TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_export_dates TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_srq_secondary_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_person_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_for_app TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_active_mod_reports TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_latest_ir330 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_get_work_queue_item_list TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgAltIdTypeLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPageLinesByExam TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_amount_paid TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineMarkerSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ExamsAddMarkerAllocationGroup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERRecordCounts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerPage TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.MOEProviderLocChange TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_upd_export_claims TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_preferred_com_method TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_num_applications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_legal_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_crse TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_active_mod_roles TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_mrk_pages_count TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_ins_outst_fee_lodgement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpSSBLkp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelForGroup TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERMarkerCounts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineCompleteSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilestoSPERStdValidate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_stag_app TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_course_endorsement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_principal_nominees TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_find_spec_assist_lrnrs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpQualVrfctnBatchesSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_grouped TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_admission_learners TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_person_bank_acc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_set_certificate_print_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelInfo TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_learner_info TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_Get_Marker_Record TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineNotComplSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERStdCounts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_statuses TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_subject_area_exp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.sp_reset_qual_248 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_owners_by_names TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_exam_centre_worker_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_countries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_person_claim TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderation_subject TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_leap_upd_outst_fee_lodgement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_get_marker_name TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppNZQASel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAMarkerCheckSheets TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_types TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_existing_assess_stds_tm TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_del_course_version TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_gender_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_portfolio_count TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_AL_PH_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_learner_api_service_get_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppUnallSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMAMarkerSubmStatusUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_pmts_by_sett_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_qrs_country_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_delete_learner_input_eqa TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_provider_enrolments TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_perorg_stag_apps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_learner_by_enrolment_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_mod_std_groups TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_rates_for_item TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_appl_payment_products TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_LINE_WEB TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_info_res TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_delete_input_batch_error_eqa TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMA_GetMarkerPanelMemberShips TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocInsert TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examManualAllocate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpAsmntCntrPaymentGradeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_provider_property TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_get_unsubmitted_apps TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_learners_examcode_report TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_moderators TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_result_count TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_AD_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_status_hist TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_WEB TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_res_list TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data1 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_product_type TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_for_app_by_cfn TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_version_details TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_providers TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prof_bodies TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_update_payment_amount TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DF_UpdateLearner_Enrolment TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_learners_for_billingfile TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_regions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_rg_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_EM_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_ito_report_result_pop_stds TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examGetProviderName TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data2 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocValidate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_delete_mark_input_eqa TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.MOE_Provider_Loc_Change TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_provs_for_mod_alloc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_rma_web_supp_allocated TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provSite_ho_ref TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_update_payment_status TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_bufferPackPackingLabel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_role_contract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_FX_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_refunds_by_payment_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_ALLOC_WEB TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_ce_find_start TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_fix_first_assess_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data3 TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.dmproc_AuditTransactionAdd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_examMaterials TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_pinkies TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_bufferPackPackingList_A TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_sacs TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_schol_prt_count TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_get_refunds_by_settlement_date TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_cec_lrnr_enrlmts TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.SU_Validate_Accred_Option_Code TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeUpd TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpPerorgTypeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_prv_accred_subs_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_institution TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_marker_panels_ad_region TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_all_salutations TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_stds_for_mrkr TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_PH_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_add_supporting_document TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_UNALLOC_WEB TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_crse_endr_history TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_pay_upd_payment_refund TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_prv_accreds_file TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_inst_qual TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_materials_url_submissions TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_aplan_diary_events TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeDel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_get_tax_codes TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_PO_AD_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_del_supporting_document TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.checkLearnerNCEAL2Awarded TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.proc_sper_domain_standards TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_individual_course_endorsement TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.ROLUpdateRunDate TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_prv_name_by_moe_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_key_contact TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_contact_change_dets TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_for_prov TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeIns TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_contract TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_AD_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_supporting_document TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_arch_web_read_write TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_learner_sec_miss_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_add_application TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.AddToMarkerPanelAllocGrp TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_qualification TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_note_issues TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_mod_rpts_for_auto_alloc TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_statii TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeSel TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_item TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_EM_non_marker TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_search_non_compliant_qualifications TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_historical_mod_results TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_award_learner_secondary_quals TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.UpdateNSN TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_qrs_add_qualification TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.p_patch_qfn_version_cfn TO eqa_rpt_user
go
EXEC sp_adduser 'eqa_sqr_user','eqa_sqr_user','read_only'
go
IF USER_ID('eqa_sqr_user') IS NOT NULL
    PRINT '<<< CREATED USER eqa_sqr_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER eqa_sqr_user >>>'
go
GRANT REFERENCES ON dbo.SQR_EVENT TO eqa_sqr_user
go
GRANT INSERT ON dbo.SQR_EVENT TO eqa_sqr_user
go
GRANT DELETE ON dbo.SQR_EVENT TO eqa_sqr_user
go
GRANT UPDATE ON dbo.SQR_EVENT TO eqa_sqr_user
go
GRANT DELETE STATISTICS ON dbo.SQR_EVENT TO eqa_sqr_user
go
GRANT TRUNCATE TABLE ON dbo.SQR_EVENT TO eqa_sqr_user
go
GRANT UPDATE STATISTICS ON dbo.SQR_EVENT TO eqa_sqr_user
go
GRANT TRANSFER TABLE ON dbo.SQR_EVENT TO eqa_sqr_user
go
EXEC sp_adduser 'eqa_user','eqa_user','public'
go
IF USER_ID('eqa_user') IS NOT NULL
    PRINT '<<< CREATED USER eqa_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER eqa_user >>>'
go
GRANT REFERENCES ON dbo.COM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT TO eqa_user
go
GRANT REFERENCES ON dbo.SCH_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT REFERENCES ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT REFERENCES ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT REFERENCES ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.RISK_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT REFERENCES ON dbo.DIARY_EVENT TO eqa_user
go
GRANT REFERENCES ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT REFERENCES ON dbo.ACCREDITATION TO eqa_user
go
GRANT REFERENCES ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT REFERENCES ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT REFERENCES ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SECTION TO eqa_user
go
GRANT REFERENCES ON dbo.LANGUAGE TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.EQA_SETTING TO eqa_user
go
GRANT REFERENCES ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT REFERENCES ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT REFERENCES ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ROLE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT REFERENCES ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT REFERENCES ON dbo.STREET_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT REFERENCES ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT REFERENCES ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT REFERENCES ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT REFERENCES ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT REFERENCES ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT REFERENCES ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_CERT TO eqa_user
go
GRANT REFERENCES ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT REFERENCES ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.ETHNICITY TO eqa_user
go
GRANT REFERENCES ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT REFERENCES ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT REFERENCES ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_PANEL TO eqa_user
go
GRANT REFERENCES ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT REFERENCES ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.IWI_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_CONDITION TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT REFERENCES ON dbo.IWI TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT REFERENCES ON dbo.COMPASSIONATE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.BUILD_TAG TO eqa_user
go
GRANT REFERENCES ON dbo.NZQA_POSITION TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT REFERENCES ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT REFERENCES ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT REFERENCES ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT REFERENCES ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_COURSE TO eqa_user
go
GRANT REFERENCES ON dbo.LVL TO eqa_user
go
GRANT REFERENCES ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT REFERENCES ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CASE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT REFERENCES ON dbo.CASE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT REFERENCES ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT REFERENCES ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT REFERENCES ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT REFERENCES ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT REFERENCES ON dbo.FILE_LOCATION TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT REFERENCES ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE TO eqa_user
go
GRANT REFERENCES ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT REFERENCES ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT REFERENCES ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MARK_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ENDORSEMENT TO eqa_user
go
GRANT REFERENCES ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT REFERENCES ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.RULES_GROUP TO eqa_user
go
GRANT REFERENCES ON dbo.database_backup_date TO eqa_user
go
GRANT REFERENCES ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT REFERENCES ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT REFERENCES ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT REFERENCES ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.JMS_USERS TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT REFERENCES ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.JMS_ROLES TO eqa_user
go
GRANT REFERENCES ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT REFERENCES ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT REFERENCES ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT REFERENCES ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT REFERENCES ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT REFERENCES ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT REFERENCES ON dbo.GENDER_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT REFERENCES ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT REFERENCES ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.TIMERS TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT REFERENCES ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.KEY_LOG TO eqa_user
go
GRANT REFERENCES ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT REFERENCES ON dbo.RELATIONSHIP TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT REFERENCES ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT REFERENCES ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER TO eqa_user
go
GRANT REFERENCES ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT REFERENCES ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.dba_test_rep TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MOE_NUMBER TO eqa_user
go
GRANT REFERENCES ON dbo.JOINING_WORDS TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT REFERENCES ON dbo.DEBTOR TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT REFERENCES ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_CASE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT REFERENCES ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT REFERENCES ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GROUP TO eqa_user
go
GRANT REFERENCES ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT REFERENCES ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT REFERENCES ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT REFERENCES ON dbo.STD_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_RULE TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT REFERENCES ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT REFERENCES ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT REFERENCES ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_RATE TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT REFERENCES ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT REFERENCES ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.SALUTATION TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT REFERENCES ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT REFERENCES ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATOR TO eqa_user
go
GRANT REFERENCES ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT REFERENCES ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT REFERENCES ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.rs_dbversion TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT REFERENCES ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT REFERENCES ON dbo.rs_lastcommit TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT REFERENCES ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT REFERENCES ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.NZPOST_HUB TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT REFERENCES ON dbo.TAX_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT REFERENCES ON dbo.rs_threads TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT REFERENCES ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.SRS_REQUEST TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT REFERENCES ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT REFERENCES ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT REFERENCES ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT REFERENCES ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT REFERENCES ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.REPORT_ROLE TO eqa_user
go
GRANT REFERENCES ON dbo.latency_test TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT REFERENCES ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT REFERENCES ON dbo.REGION_GROUP TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT REFERENCES ON dbo.SQR_EVENT TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT REFERENCES ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.TEC_COURSE TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT REFERENCES ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.IR330 TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT REFERENCES ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT REFERENCES ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT REFERENCES ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT REFERENCES ON dbo.STD TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT REFERENCES ON dbo.FEE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.RETURN_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT REFERENCES ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT REFERENCES ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT REFERENCES ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT REFERENCES ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.SSB_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT REFERENCES ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT REFERENCES ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT REFERENCES ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_DUAL TO eqa_user
go
GRANT REFERENCES ON dbo.AWARD_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT REFERENCES ON dbo.SEVERITY TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT REFERENCES ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT REFERENCES ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT REFERENCES ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT REFERENCES ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT REFERENCES ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT REFERENCES ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT REFERENCES ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT REFERENCES ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT REFERENCES ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT REFERENCES ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT REFERENCES ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT REFERENCES ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT REFERENCES ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT REFERENCES ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT REFERENCES ON dbo.CURRENCY TO eqa_user
go
GRANT REFERENCES ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_MSG TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.REGION TO eqa_user
go
GRANT REFERENCES ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT REFERENCES ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_TX TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT REFERENCES ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT REFERENCES ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.NAME_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT REFERENCES ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT REFERENCES ON dbo.KEY_DATE TO eqa_user
go
GRANT REFERENCES ON dbo.COM_METHOD TO eqa_user
go
GRANT REFERENCES ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_COUNTER TO eqa_user
go
GRANT REFERENCES ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CODE_TABLE TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_ITEM TO eqa_user
go
GRANT REFERENCES ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT REFERENCES ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT REFERENCES ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT REFERENCES ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT REFERENCES ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT REFERENCES ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ORDER_NOTE TO eqa_user
go
GRANT REFERENCES ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT REFERENCES ON dbo.NEXT_ID TO eqa_user
go
GRANT REFERENCES ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT REFERENCES ON dbo.PAID_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.text_events TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT REFERENCES ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_USER TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT REFERENCES ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT REFERENCES ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.CFN_UPDATES TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.JBM_ROLE TO eqa_user
go
GRANT REFERENCES ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT REFERENCES ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.COM_COMBO TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.COM_MEDIUM TO eqa_user
go
GRANT REFERENCES ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT REFERENCES ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT REFERENCES ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER TO eqa_user
go
GRANT REFERENCES ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT REFERENCES ON dbo.LEAVING_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN TO eqa_user
go
GRANT REFERENCES ON dbo.NAME TO eqa_user
go
GRANT REFERENCES ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT REFERENCES ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT REFERENCES ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT REFERENCES ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT REFERENCES ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT REFERENCES ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT REFERENCES ON dbo.COND_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT REFERENCES ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT REFERENCES ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT REFERENCES ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT REFERENCES ON dbo.RESULT_RANKING TO eqa_user
go
GRANT REFERENCES ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT REFERENCES ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT REFERENCES ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT REFERENCES ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT REFERENCES ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT SELECT ON dbo.COM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT SELECT ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT SELECT ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT TO eqa_user
go
GRANT SELECT ON dbo.SCH_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_COM_METHOD TO eqa_user
go
GRANT SELECT ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT SELECT ON dbo.VW_ALL_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT SELECT ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT SELECT ON dbo.temp_sec_course_std_hist TO eqa_user
go
GRANT SELECT ON dbo.VW_COMMON_QUALIFICATION TO eqa_user
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT SELECT ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT SELECT ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT SELECT ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT SELECT ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT SELECT ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_NAME TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT SELECT ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT SELECT ON dbo.VW_LEARNERS TO eqa_user
go
GRANT SELECT ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT SELECT ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_ORGANISATION TO eqa_user
go
GRANT SELECT ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT SELECT ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT SELECT ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.RISK_STATUS TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG TO eqa_user
go
GRANT SELECT ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT SELECT ON dbo.VW_MARKERS TO eqa_user
go
GRANT SELECT ON dbo.DIARY_EVENT TO eqa_user
go
GRANT SELECT ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITATION TO eqa_user
go
GRANT SELECT ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_QFN_ACHIEVED TO eqa_user
go
GRANT SELECT ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT SELECT ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT SELECT ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT SELECT ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_SECTION TO eqa_user
go
GRANT SELECT ON dbo.LANGUAGE TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT SELECT ON dbo.EQA_SETTING TO eqa_user
go
GRANT SELECT ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ALT_ID TO eqa_user
go
GRANT SELECT ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT SELECT ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT SELECT ON dbo.vwSRSStandard TO eqa_user
go
GRANT SELECT ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_PEOPLE TO eqa_user
go
GRANT SELECT ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT SELECT ON dbo.VW_ALLOCATION_GROUP_MARKERS TO eqa_user
go
GRANT SELECT ON dbo.VW_RELATIONSHIP_CONTACT TO eqa_user
go
GRANT SELECT ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ROLE TO eqa_user
go
GRANT SELECT ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT SELECT ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PERORG_ROLE TO eqa_user
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT SELECT ON dbo.STREET_TYPE TO eqa_user
go
GRANT SELECT ON dbo.vwSRSLearner TO eqa_user
go
GRANT SELECT ON dbo.VW_PROVIDERS TO eqa_user
go
GRANT SELECT ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT SELECT ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT SELECT ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT SELECT ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT SELECT ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT SELECT ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT SELECT ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT SELECT ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT SELECT ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT SELECT ON dbo.CantyFileRptVw TO eqa_user
go
GRANT SELECT ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT SELECT ON dbo.vwSRSStdResult TO eqa_user
go
GRANT SELECT ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.QFN_CERT TO eqa_user
go
GRANT SELECT ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT SELECT ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_RELATIONSHIP TO eqa_user
go
GRANT SELECT ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.RESULT TO eqa_user
go
GRANT SELECT ON dbo.ETHNICITY TO eqa_user
go
GRANT SELECT ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT SELECT ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT SELECT ON dbo.MARKER_CODE TO eqa_user
go
GRANT SELECT ON dbo.vwSRSAchievement TO eqa_user
go
GRANT SELECT ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT SELECT ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT SELECT ON dbo.VW_EXAM_CENTRE TO eqa_user
go
GRANT SELECT ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT SELECT ON dbo.vwSRSSummary TO eqa_user
go
GRANT SELECT ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.MARKER_PANEL TO eqa_user
go
GRANT SELECT ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT SELECT ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT SELECT ON dbo.BATCH_INPUT TO eqa_user
go
GRANT SELECT ON dbo.IWI_CODE TO eqa_user
go
GRANT SELECT ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT SELECT ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT SELECT ON dbo.QFN_CONDITION TO eqa_user
go
GRANT SELECT ON dbo.PERORG TO eqa_user
go
GRANT SELECT ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT SELECT ON dbo.IWI TO eqa_user
go
GRANT SELECT ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT SELECT ON dbo.COMPASSIONATE TO eqa_user
go
GRANT SELECT ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT SELECT ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.w_markers TO eqa_user
go
GRANT SELECT ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT SELECT ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT SELECT ON dbo.BUILD_TAG TO eqa_user
go
GRANT SELECT ON dbo.NZQA_POSITION TO eqa_user
go
GRANT SELECT ON dbo.VW_STD_GROUP TO eqa_user
go
GRANT SELECT ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT SELECT ON dbo.AMAP TO eqa_user
go
GRANT SELECT ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT SELECT ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT SELECT ON dbo.w_providers TO eqa_user
go
GRANT SELECT ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT SELECT ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT SELECT ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT SELECT ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT SELECT ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT SELECT ON dbo.SDR_COURSE TO eqa_user
go
GRANT SELECT ON dbo.LVL TO eqa_user
go
GRANT SELECT ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT SELECT ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT SELECT ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT SELECT ON dbo.CASE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT SELECT ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT SELECT ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT SELECT ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.MARKER TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT SELECT ON dbo.CASE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT SELECT ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.ENTRY TO eqa_user
go
GRANT SELECT ON dbo.QFN_VERSION TO eqa_user
go
GRANT SELECT ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT SELECT ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT SELECT ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT SELECT ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT SELECT ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT SELECT ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT SELECT ON dbo.FILE_LOCATION TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT SELECT ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT SELECT ON dbo.COURSE TO eqa_user
go
GRANT SELECT ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT SELECT ON dbo.RESULT_CODE TO eqa_user
go
GRANT SELECT ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT SELECT ON dbo.PERORG_STATUS TO eqa_user
go
GRANT SELECT ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT SELECT ON dbo.vw_set TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT SELECT ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT SELECT ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT SELECT ON dbo.temp1 TO eqa_user
go
GRANT SELECT ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT SELECT ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT SELECT ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT SELECT ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT SELECT ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT SELECT ON dbo.MARK_INPUT TO eqa_user
go
GRANT SELECT ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ENDORSEMENT TO eqa_user
go
GRANT SELECT ON dbo.VW_QUAL_CHECK_RESULT_IQ TO eqa_user
go
GRANT SELECT ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT SELECT ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT SELECT ON dbo.RULES_GROUP TO eqa_user
go
GRANT SELECT ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT SELECT ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT SELECT ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT SELECT ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT SELECT ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT SELECT ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.JMS_USERS TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_SCHOOL_EXCLUDES TO eqa_user
go
GRANT SELECT ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT SELECT ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT SELECT ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT SELECT ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT SELECT ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT SELECT ON dbo.COURSE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT SELECT ON dbo.JMS_ROLES TO eqa_user
go
GRANT SELECT ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT SELECT ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT SELECT ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT SELECT ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT SELECT ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT SELECT ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT SELECT ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT SELECT ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT SELECT ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT SELECT ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT SELECT ON dbo.VW_EXAM_STANDARD TO eqa_user
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT SELECT ON dbo.GENDER_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT SELECT ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT SELECT ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT SELECT ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT SELECT ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT SELECT ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT SELECT ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT SELECT ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.TIMERS TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT SELECT ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT SELECT ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT SELECT ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT SELECT ON dbo.KEY_LOG TO eqa_user
go
GRANT SELECT ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT SELECT ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT SELECT ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT SELECT ON dbo.RELATIONSHIP TO eqa_user
go
GRANT SELECT ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT SELECT ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT SELECT ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT SELECT ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT SELECT ON dbo.LEARNER TO eqa_user
go
GRANT SELECT ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT SELECT ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT SELECT ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.dba_test_rep TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT SELECT ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT SELECT ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT SELECT ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT SELECT ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT SELECT ON dbo.MOE_NUMBER TO eqa_user
go
GRANT SELECT ON dbo.JOINING_WORDS TO eqa_user
go
GRANT SELECT ON dbo.temp_sqr_event TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT SELECT ON dbo.DEBTOR TO eqa_user
go
GRANT SELECT ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT SELECT ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT SELECT ON dbo.PERORG_CASE TO eqa_user
go
GRANT SELECT ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT SELECT ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT SELECT ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT SELECT ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT SELECT ON dbo.STD_GROUP TO eqa_user
go
GRANT SELECT ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT SELECT ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT SELECT ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT SELECT ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT SELECT ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT SELECT ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT SELECT ON dbo.STD_VERSION TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT SELECT ON dbo.QFN_RULE TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT SELECT ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT SELECT ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT SELECT ON dbo.VW_STD_VERSIONS_WITH_LEVEL TO eqa_user
go
GRANT SELECT ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT SELECT ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT SELECT ON dbo.COURSE_VERSION TO eqa_user
go
GRANT SELECT ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_OPTIONAL_STRANDS TO eqa_user
go
GRANT SELECT ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT SELECT ON dbo.vwROLStandard TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.VW_ENTRY_RECON TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT SELECT ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT SELECT ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT SELECT ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT SELECT ON dbo.w_learner TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_RATE TO eqa_user
go
GRANT SELECT ON dbo.VW_QUAL_STRANDS TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT SELECT ON dbo.vwROLLearner TO eqa_user
go
GRANT SELECT ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT SELECT ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT SELECT ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT SELECT ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT SELECT ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT SELECT ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT SELECT ON dbo.VW_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.vwROLUnitResult TO eqa_user
go
GRANT SELECT ON dbo.SALUTATION TO eqa_user
go
GRANT SELECT ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT SELECT ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT SELECT ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.VW_RESMAN_PROVIDER TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT SELECT ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT SELECT ON dbo.MODERATOR TO eqa_user
go
GRANT SELECT ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT SELECT ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT SELECT ON dbo.vwROLQualification TO eqa_user
go
GRANT SELECT ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT SELECT ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT SELECT ON dbo.w_all_moderation_standards TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT SELECT ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT SELECT ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT SELECT ON dbo.vwROLQualificationStrand TO eqa_user
go
GRANT SELECT ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.AMAP_VERSION TO eqa_user
go
GRANT SELECT ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT SELECT ON dbo.w_providers_all_names TO eqa_user
go
GRANT SELECT ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT SELECT ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT SELECT ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT SELECT ON dbo.vwROLScholResult TO eqa_user
go
GRANT SELECT ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT SELECT ON dbo.REPORT_STATUS TO eqa_user
go
GRANT SELECT ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT SELECT ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT SELECT ON dbo.rs_lastcommit TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT SELECT ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT SELECT ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT SELECT ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT SELECT ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT SELECT ON dbo.NZPOST_HUB TO eqa_user
go
GRANT SELECT ON dbo.REPORT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT SELECT ON dbo.TAX_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT SELECT ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT SELECT ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT SELECT ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT SELECT ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT SELECT ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT SELECT ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT SELECT ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT SELECT ON dbo.SRS_REQUEST TO eqa_user
go
GRANT SELECT ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT SELECT ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.mc_compare_accedited_item TO eqa_user
go
GRANT SELECT ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT SELECT ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT SELECT ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.BATCH_STATUS TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT SELECT ON dbo.REPORT TO eqa_user
go
GRANT SELECT ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT SELECT ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT SELECT ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerInviteVw TO eqa_user
go
GRANT SELECT ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT SELECT ON dbo.vw_ssb_name_status TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT SELECT ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_ENTRY_PERS_MARKER TO eqa_user
go
GRANT SELECT ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT SELECT ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerLateAppointmentVw TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT SELECT ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT SELECT ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT SELECT ON dbo.REPORT_ROLE TO eqa_user
go
GRANT SELECT ON dbo.latency_test TO eqa_user
go
GRANT SELECT ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerAcceptVw TO eqa_user
go
GRANT SELECT ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT SELECT ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT SELECT ON dbo.REGION_GROUP TO eqa_user
go
GRANT SELECT ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT SELECT ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT SELECT ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT SELECT ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_MATCH_extract TO eqa_user
go
GRANT SELECT ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT SELECT ON dbo.ExamsMarkerDeclineVw TO eqa_user
go
GRANT SELECT ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT SELECT ON dbo.SQR_EVENT TO eqa_user
go
GRANT SELECT ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT SELECT ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT SELECT ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT SELECT ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.ORGANISATION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT SELECT ON dbo.TEC_COURSE TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT SELECT ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT SELECT ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT SELECT ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.IR330 TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT SELECT ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT SELECT ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT SELECT ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT SELECT ON dbo.RESULT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT SELECT ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT SELECT ON dbo.STD TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT SELECT ON dbo.FEE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.WEB_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.RETURN_TYPE TO eqa_user
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT SELECT ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT SELECT ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT SELECT ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT SELECT ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT SELECT ON dbo.VW_QUALIFICATIONS TO eqa_user
go
GRANT SELECT ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT SELECT ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT SELECT ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT SELECT ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT SELECT ON dbo.SSB_TYPE TO eqa_user
go
GRANT SELECT ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT SELECT ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT SELECT ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT SELECT ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT SELECT ON dbo.JBM_DUAL TO eqa_user
go
GRANT SELECT ON dbo.VW_ASSESSMENT TO eqa_user
go
GRANT SELECT ON dbo.AWARD_TYPE TO eqa_user
go
GRANT SELECT ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT SELECT ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT SELECT ON dbo.SEVERITY TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT SELECT ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT SELECT ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT SELECT ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT SELECT ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT SELECT ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT SELECT ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT SELECT ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT SELECT ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT SELECT ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT SELECT ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT SELECT ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT SELECT ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES TO eqa_user
go
GRANT SELECT ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT SELECT ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT SELECT ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT SELECT ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT SELECT ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT SELECT ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_CANDIDATES_GRADE_AVG TO eqa_user
go
GRANT SELECT ON dbo.tmp_standard_input_vw1 TO eqa_user
go
GRANT SELECT ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT SELECT ON dbo.CURRENCY TO eqa_user
go
GRANT SELECT ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT SELECT ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_QUALIFICATIONS TO eqa_user
go
GRANT SELECT ON dbo.tmp_standard_input_vw2 TO eqa_user
go
GRANT SELECT ON dbo.JBM_MSG TO eqa_user
go
GRANT SELECT ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT SELECT ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_RESULTS TO eqa_user
go
GRANT SELECT ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT SELECT ON dbo.REGION TO eqa_user
go
GRANT SELECT ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT SELECT ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT SELECT ON dbo.JBM_TX TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT SELECT ON dbo.vw_LEARNER_INPUT_extract TO eqa_user
go
GRANT SELECT ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT SELECT ON dbo.VW_IRN_STANDARDS TO eqa_user
go
GRANT SELECT ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT SELECT ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.NAME_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_ARC_INPUT_BATCH_ERROR TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT SELECT ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_STANDARDS_SUBJECT TO eqa_user
go
GRANT SELECT ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT SELECT ON dbo.KEY_DATE TO eqa_user
go
GRANT SELECT ON dbo.COM_METHOD TO eqa_user
go
GRANT SELECT ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.JBM_COUNTER TO eqa_user
go
GRANT SELECT ON dbo.VW_INPUT_BATCH_ERROR_LOADED TO eqa_user
go
GRANT SELECT ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT SELECT ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT SELECT ON dbo.QFN_TYPE TO eqa_user
go
GRANT SELECT ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT SELECT ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.CODE_TABLE TO eqa_user
go
GRANT SELECT ON dbo.ORDER_ITEM TO eqa_user
go
GRANT SELECT ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT SELECT ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT SELECT ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT SELECT ON dbo.VW_STANDARD_INPUT_WITH_ERROR TO eqa_user
go
GRANT SELECT ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT SELECT ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT SELECT ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT SELECT ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT SELECT ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT SELECT ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT SELECT ON dbo.w_all_providers TO eqa_user
go
GRANT SELECT ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.ORDER_NOTE TO eqa_user
go
GRANT SELECT ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT SELECT ON dbo.NEXT_ID TO eqa_user
go
GRANT SELECT ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.w_all_standards TO eqa_user
go
GRANT SELECT ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT SELECT ON dbo.PAID_CODE TO eqa_user
go
GRANT SELECT ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT SELECT ON dbo.NOTE_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT SELECT ON dbo.mc_vw_sqr_event TO eqa_user
go
GRANT SELECT ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.W_ASSESSMENT_CENTRE TO eqa_user
go
GRANT SELECT ON dbo.sysquerymetrics TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT SELECT ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT SELECT ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT SELECT ON dbo.JBM_USER TO eqa_user
go
GRANT SELECT ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT SELECT ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT SELECT ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT SELECT ON dbo.w_learners TO eqa_user
go
GRANT SELECT ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT SELECT ON dbo.vw_MARK_INPUT_extract TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT SELECT ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT SELECT ON dbo.CFN_UPDATES TO eqa_user
go
GRANT SELECT ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT SELECT ON dbo.JBM_ROLE TO eqa_user
go
GRANT SELECT ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT SELECT ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT SELECT ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT SELECT ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT SELECT ON dbo.COM_COMBO TO eqa_user
go
GRANT SELECT ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT SELECT ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.w_people TO eqa_user
go
GRANT SELECT ON dbo.PERORG_TYPE TO eqa_user
go
GRANT SELECT ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT SELECT ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT SELECT ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT SELECT ON dbo.COM_MEDIUM TO eqa_user
go
GRANT SELECT ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT SELECT ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT SELECT ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT SELECT ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER TO eqa_user
go
GRANT SELECT ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT SELECT ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT SELECT ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT SELECT ON dbo.LEAVING_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN TO eqa_user
go
GRANT SELECT ON dbo.NAME TO eqa_user
go
GRANT SELECT ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT SELECT ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT SELECT ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT SELECT ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT SELECT ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT SELECT ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT SELECT ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT SELECT ON dbo.VW_EXAMS_ENTRY TO eqa_user
go
GRANT SELECT ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT SELECT ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT SELECT ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT SELECT ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT SELECT ON dbo.VW_MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT SELECT ON dbo.COND_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT SELECT ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT SELECT ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT SELECT ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT SELECT ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT SELECT ON dbo.RESULT_RANKING TO eqa_user
go
GRANT SELECT ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT SELECT ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT SELECT ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT SELECT ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT SELECT ON dbo.VW_PERSONALISATION_LATEST TO eqa_user
go
GRANT SELECT ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT SELECT ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT SELECT ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT INSERT ON dbo.COM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT INSERT ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT INSERT ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT TO eqa_user
go
GRANT INSERT ON dbo.SCH_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT INSERT ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT INSERT ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT INSERT ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT INSERT ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT INSERT ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT INSERT ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT INSERT ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT INSERT ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT INSERT ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT INSERT ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT INSERT ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT INSERT ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT INSERT ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT INSERT ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.RISK_STATUS TO eqa_user
go
GRANT INSERT ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT INSERT ON dbo.DIARY_EVENT TO eqa_user
go
GRANT INSERT ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT INSERT ON dbo.ACCREDITATION TO eqa_user
go
GRANT INSERT ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT INSERT ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT INSERT ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT INSERT ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT INSERT ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_SECTION TO eqa_user
go
GRANT INSERT ON dbo.LANGUAGE TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT INSERT ON dbo.EQA_SETTING TO eqa_user
go
GRANT INSERT ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT INSERT ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT INSERT ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT INSERT ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT INSERT ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT INSERT ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE TO eqa_user
go
GRANT INSERT ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT INSERT ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT INSERT ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT INSERT ON dbo.STREET_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT INSERT ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT INSERT ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT INSERT ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT INSERT ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT INSERT ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT INSERT ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT INSERT ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT INSERT ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT INSERT ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT INSERT ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.QFN_CERT TO eqa_user
go
GRANT INSERT ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT INSERT ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.RESULT TO eqa_user
go
GRANT INSERT ON dbo.ETHNICITY TO eqa_user
go
GRANT INSERT ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT INSERT ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT INSERT ON dbo.MARKER_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT INSERT ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT INSERT ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT INSERT ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.MARKER_PANEL TO eqa_user
go
GRANT INSERT ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT INSERT ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT INSERT ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT INSERT ON dbo.BATCH_INPUT TO eqa_user
go
GRANT INSERT ON dbo.IWI_CODE TO eqa_user
go
GRANT INSERT ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT INSERT ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT INSERT ON dbo.QFN_CONDITION TO eqa_user
go
GRANT INSERT ON dbo.PERORG TO eqa_user
go
GRANT INSERT ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT INSERT ON dbo.IWI TO eqa_user
go
GRANT INSERT ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT INSERT ON dbo.COMPASSIONATE TO eqa_user
go
GRANT INSERT ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT INSERT ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT INSERT ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT INSERT ON dbo.BUILD_TAG TO eqa_user
go
GRANT INSERT ON dbo.NZQA_POSITION TO eqa_user
go
GRANT INSERT ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT INSERT ON dbo.AMAP TO eqa_user
go
GRANT INSERT ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT INSERT ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT INSERT ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT INSERT ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT INSERT ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT INSERT ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT INSERT ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT INSERT ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT INSERT ON dbo.SDR_COURSE TO eqa_user
go
GRANT INSERT ON dbo.LVL TO eqa_user
go
GRANT INSERT ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT INSERT ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT INSERT ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT INSERT ON dbo.CASE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT INSERT ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT INSERT ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT INSERT ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.MARKER TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT INSERT ON dbo.CASE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT INSERT ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.ENTRY TO eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION TO eqa_user
go
GRANT INSERT ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT INSERT ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT INSERT ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT INSERT ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT INSERT ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT INSERT ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT INSERT ON dbo.FILE_LOCATION TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT INSERT ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT INSERT ON dbo.COURSE TO eqa_user
go
GRANT INSERT ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT INSERT ON dbo.RESULT_CODE TO eqa_user
go
GRANT INSERT ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT INSERT ON dbo.PERORG_STATUS TO eqa_user
go
GRANT INSERT ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT INSERT ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT INSERT ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT INSERT ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT INSERT ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT INSERT ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT INSERT ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT INSERT ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT INSERT ON dbo.MARK_INPUT TO eqa_user
go
GRANT INSERT ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ENDORSEMENT TO eqa_user
go
GRANT INSERT ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT INSERT ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT INSERT ON dbo.RULES_GROUP TO eqa_user
go
GRANT INSERT ON dbo.database_backup_date TO eqa_user
go
GRANT INSERT ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT INSERT ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT INSERT ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT INSERT ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT INSERT ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT INSERT ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT INSERT ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.JMS_USERS TO eqa_user
go
GRANT INSERT ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT INSERT ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT INSERT ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT INSERT ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT INSERT ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT INSERT ON dbo.COURSE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT INSERT ON dbo.JMS_ROLES TO eqa_user
go
GRANT INSERT ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT INSERT ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT INSERT ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT INSERT ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT INSERT ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT INSERT ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT INSERT ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT INSERT ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT INSERT ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT INSERT ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT INSERT ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT INSERT ON dbo.GENDER_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT INSERT ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT INSERT ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT INSERT ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT INSERT ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT INSERT ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT INSERT ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT INSERT ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT INSERT ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT INSERT ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.TIMERS TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT INSERT ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT INSERT ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT INSERT ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT INSERT ON dbo.KEY_LOG TO eqa_user
go
GRANT INSERT ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT INSERT ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT INSERT ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT INSERT ON dbo.RELATIONSHIP TO eqa_user
go
GRANT INSERT ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT INSERT ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT INSERT ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT INSERT ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT INSERT ON dbo.LEARNER TO eqa_user
go
GRANT INSERT ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT INSERT ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT INSERT ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.dba_test_rep TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT INSERT ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT INSERT ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT INSERT ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT INSERT ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT INSERT ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT INSERT ON dbo.MOE_NUMBER TO eqa_user
go
GRANT INSERT ON dbo.JOINING_WORDS TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT INSERT ON dbo.DEBTOR TO eqa_user
go
GRANT INSERT ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT INSERT ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT INSERT ON dbo.PERORG_CASE TO eqa_user
go
GRANT INSERT ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT INSERT ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT INSERT ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT INSERT ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT INSERT ON dbo.STD_GROUP TO eqa_user
go
GRANT INSERT ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT INSERT ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT INSERT ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT INSERT ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT INSERT ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT INSERT ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT INSERT ON dbo.STD_VERSION TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT INSERT ON dbo.QFN_RULE TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT INSERT ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT INSERT ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT INSERT ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT INSERT ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT INSERT ON dbo.COURSE_VERSION TO eqa_user
go
GRANT INSERT ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT INSERT ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT INSERT ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT INSERT ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT INSERT ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_RATE TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT INSERT ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT INSERT ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT INSERT ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT INSERT ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT INSERT ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT INSERT ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT INSERT ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT INSERT ON dbo.SALUTATION TO eqa_user
go
GRANT INSERT ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT INSERT ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT INSERT ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT INSERT ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT INSERT ON dbo.MODERATOR TO eqa_user
go
GRANT INSERT ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT INSERT ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT INSERT ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT INSERT ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT INSERT ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT INSERT ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT INSERT ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT INSERT ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT INSERT ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.AMAP_VERSION TO eqa_user
go
GRANT INSERT ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.rs_dbversion TO eqa_user
go
GRANT INSERT ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT INSERT ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT INSERT ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT INSERT ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT INSERT ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT INSERT ON dbo.REPORT_STATUS TO eqa_user
go
GRANT INSERT ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT INSERT ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT INSERT ON dbo.rs_lastcommit TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT INSERT ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT INSERT ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT INSERT ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT INSERT ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT INSERT ON dbo.NZPOST_HUB TO eqa_user
go
GRANT INSERT ON dbo.REPORT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT INSERT ON dbo.TAX_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT INSERT ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT INSERT ON dbo.rs_threads TO eqa_user
go
GRANT INSERT ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT INSERT ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT INSERT ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT INSERT ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT INSERT ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT INSERT ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT INSERT ON dbo.SRS_REQUEST TO eqa_user
go
GRANT INSERT ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT INSERT ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT INSERT ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT INSERT ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.BATCH_STATUS TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT INSERT ON dbo.REPORT TO eqa_user
go
GRANT INSERT ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT INSERT ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT INSERT ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT INSERT ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT INSERT ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT INSERT ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT INSERT ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT INSERT ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT INSERT ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT INSERT ON dbo.REPORT_ROLE TO eqa_user
go
GRANT INSERT ON dbo.latency_test TO eqa_user
go
GRANT INSERT ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT INSERT ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT INSERT ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT INSERT ON dbo.REGION_GROUP TO eqa_user
go
GRANT INSERT ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT INSERT ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT INSERT ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT INSERT ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT INSERT ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT INSERT ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT INSERT ON dbo.SQR_EVENT TO eqa_user
go
GRANT INSERT ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT INSERT ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT INSERT ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT INSERT ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT INSERT ON dbo.TEC_COURSE TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT INSERT ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT INSERT ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT INSERT ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.IR330 TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT INSERT ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT INSERT ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT INSERT ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT INSERT ON dbo.RESULT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT INSERT ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT INSERT ON dbo.STD TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT INSERT ON dbo.FEE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.RETURN_TYPE TO eqa_user
go
GRANT INSERT ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT INSERT ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT INSERT ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT INSERT ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT INSERT ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT INSERT ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT INSERT ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT INSERT ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT INSERT ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT INSERT ON dbo.SSB_TYPE TO eqa_user
go
GRANT INSERT ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT INSERT ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT INSERT ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT INSERT ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT INSERT ON dbo.JBM_DUAL TO eqa_user
go
GRANT INSERT ON dbo.AWARD_TYPE TO eqa_user
go
GRANT INSERT ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT INSERT ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT INSERT ON dbo.SEVERITY TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT INSERT ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT INSERT ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT INSERT ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT INSERT ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT INSERT ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT INSERT ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT INSERT ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT INSERT ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT INSERT ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT INSERT ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT INSERT ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT INSERT ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT INSERT ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT INSERT ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT INSERT ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT INSERT ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT INSERT ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT INSERT ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT INSERT ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT INSERT ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT INSERT ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT INSERT ON dbo.CURRENCY TO eqa_user
go
GRANT INSERT ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT INSERT ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT INSERT ON dbo.JBM_MSG TO eqa_user
go
GRANT INSERT ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT INSERT ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT INSERT ON dbo.REGION TO eqa_user
go
GRANT INSERT ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT INSERT ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT INSERT ON dbo.JBM_TX TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT INSERT ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT INSERT ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT INSERT ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.NAME_TYPE TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT INSERT ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT INSERT ON dbo.KEY_DATE TO eqa_user
go
GRANT INSERT ON dbo.COM_METHOD TO eqa_user
go
GRANT INSERT ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.JBM_COUNTER TO eqa_user
go
GRANT INSERT ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT INSERT ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT INSERT ON dbo.QFN_TYPE TO eqa_user
go
GRANT INSERT ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT INSERT ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.CODE_TABLE TO eqa_user
go
GRANT INSERT ON dbo.ORDER_ITEM TO eqa_user
go
GRANT INSERT ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT INSERT ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT INSERT ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT INSERT ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT INSERT ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT INSERT ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT INSERT ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT INSERT ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT INSERT ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT INSERT ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.ORDER_NOTE TO eqa_user
go
GRANT INSERT ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT INSERT ON dbo.NEXT_ID TO eqa_user
go
GRANT INSERT ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT INSERT ON dbo.PAID_CODE TO eqa_user
go
GRANT INSERT ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT INSERT ON dbo.NOTE_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT INSERT ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.text_events TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT INSERT ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT INSERT ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT INSERT ON dbo.JBM_USER TO eqa_user
go
GRANT INSERT ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT INSERT ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT INSERT ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT INSERT ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT INSERT ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT INSERT ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT INSERT ON dbo.CFN_UPDATES TO eqa_user
go
GRANT INSERT ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT INSERT ON dbo.JBM_ROLE TO eqa_user
go
GRANT INSERT ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT INSERT ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT INSERT ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT INSERT ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT INSERT ON dbo.COM_COMBO TO eqa_user
go
GRANT INSERT ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT INSERT ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.PERORG_TYPE TO eqa_user
go
GRANT INSERT ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT INSERT ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT INSERT ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT INSERT ON dbo.COM_MEDIUM TO eqa_user
go
GRANT INSERT ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT INSERT ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT INSERT ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT INSERT ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER TO eqa_user
go
GRANT INSERT ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT INSERT ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT INSERT ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT INSERT ON dbo.LEAVING_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN TO eqa_user
go
GRANT INSERT ON dbo.NAME TO eqa_user
go
GRANT INSERT ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT INSERT ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT INSERT ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT INSERT ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT INSERT ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT INSERT ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT INSERT ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT INSERT ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT INSERT ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT INSERT ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT INSERT ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT INSERT ON dbo.COND_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT INSERT ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT INSERT ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT INSERT ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT INSERT ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT INSERT ON dbo.RESULT_RANKING TO eqa_user
go
GRANT INSERT ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT INSERT ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT INSERT ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT INSERT ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT INSERT ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT INSERT ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT DELETE ON dbo.COM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT DELETE ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT DELETE ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT TO eqa_user
go
GRANT DELETE ON dbo.SCH_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT DELETE ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT DELETE ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT DELETE ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT DELETE ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT DELETE ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT DELETE ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT DELETE ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT DELETE ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT DELETE ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT DELETE ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT DELETE ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT DELETE ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT DELETE ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT DELETE ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.RISK_STATUS TO eqa_user
go
GRANT DELETE ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT DELETE ON dbo.DIARY_EVENT TO eqa_user
go
GRANT DELETE ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITATION TO eqa_user
go
GRANT DELETE ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT DELETE ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT DELETE ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT DELETE ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT DELETE ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_SECTION TO eqa_user
go
GRANT DELETE ON dbo.LANGUAGE TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT DELETE ON dbo.EQA_SETTING TO eqa_user
go
GRANT DELETE ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT DELETE ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT DELETE ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT DELETE ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT DELETE ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT DELETE ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE TO eqa_user
go
GRANT DELETE ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT DELETE ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT DELETE ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT DELETE ON dbo.STREET_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT DELETE ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT DELETE ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT DELETE ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT DELETE ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT DELETE ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT DELETE ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT DELETE ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT DELETE ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT DELETE ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT DELETE ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.QFN_CERT TO eqa_user
go
GRANT DELETE ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT DELETE ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.RESULT TO eqa_user
go
GRANT DELETE ON dbo.ETHNICITY TO eqa_user
go
GRANT DELETE ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT DELETE ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT DELETE ON dbo.MARKER_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT DELETE ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT DELETE ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT DELETE ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.MARKER_PANEL TO eqa_user
go
GRANT DELETE ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT DELETE ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT DELETE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT DELETE ON dbo.BATCH_INPUT TO eqa_user
go
GRANT DELETE ON dbo.IWI_CODE TO eqa_user
go
GRANT DELETE ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT DELETE ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT DELETE ON dbo.QFN_CONDITION TO eqa_user
go
GRANT DELETE ON dbo.PERORG TO eqa_user
go
GRANT DELETE ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT DELETE ON dbo.IWI TO eqa_user
go
GRANT DELETE ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT DELETE ON dbo.COMPASSIONATE TO eqa_user
go
GRANT DELETE ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT DELETE ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT DELETE ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT DELETE ON dbo.BUILD_TAG TO eqa_user
go
GRANT DELETE ON dbo.NZQA_POSITION TO eqa_user
go
GRANT DELETE ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT DELETE ON dbo.AMAP TO eqa_user
go
GRANT DELETE ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT DELETE ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT DELETE ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT DELETE ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT DELETE ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT DELETE ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT DELETE ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT DELETE ON dbo.SDR_COURSE TO eqa_user
go
GRANT DELETE ON dbo.LVL TO eqa_user
go
GRANT DELETE ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT DELETE ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT DELETE ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT DELETE ON dbo.CASE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT DELETE ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT DELETE ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT DELETE ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.MARKER TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT DELETE ON dbo.CASE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT DELETE ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.ENTRY TO eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION TO eqa_user
go
GRANT DELETE ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT DELETE ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT DELETE ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT DELETE ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT DELETE ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT DELETE ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT DELETE ON dbo.FILE_LOCATION TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT DELETE ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT DELETE ON dbo.COURSE TO eqa_user
go
GRANT DELETE ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT DELETE ON dbo.RESULT_CODE TO eqa_user
go
GRANT DELETE ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT DELETE ON dbo.PERORG_STATUS TO eqa_user
go
GRANT DELETE ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT DELETE ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT DELETE ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT DELETE ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT DELETE ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT DELETE ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT DELETE ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT DELETE ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT DELETE ON dbo.MARK_INPUT TO eqa_user
go
GRANT DELETE ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ENDORSEMENT TO eqa_user
go
GRANT DELETE ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT DELETE ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT DELETE ON dbo.RULES_GROUP TO eqa_user
go
GRANT DELETE ON dbo.database_backup_date TO eqa_user
go
GRANT DELETE ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT DELETE ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT DELETE ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT DELETE ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT DELETE ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT DELETE ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT DELETE ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.JMS_USERS TO eqa_user
go
GRANT DELETE ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT DELETE ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT DELETE ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT DELETE ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT DELETE ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT DELETE ON dbo.COURSE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT DELETE ON dbo.JMS_ROLES TO eqa_user
go
GRANT DELETE ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT DELETE ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT DELETE ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT DELETE ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT DELETE ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT DELETE ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT DELETE ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT DELETE ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT DELETE ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT DELETE ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT DELETE ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT DELETE ON dbo.GENDER_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT DELETE ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT DELETE ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT DELETE ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT DELETE ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT DELETE ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT DELETE ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT DELETE ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT DELETE ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.TIMERS TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT DELETE ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT DELETE ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT DELETE ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT DELETE ON dbo.KEY_LOG TO eqa_user
go
GRANT DELETE ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT DELETE ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT DELETE ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT DELETE ON dbo.RELATIONSHIP TO eqa_user
go
GRANT DELETE ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT DELETE ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT DELETE ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT DELETE ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT DELETE ON dbo.LEARNER TO eqa_user
go
GRANT DELETE ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT DELETE ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT DELETE ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.dba_test_rep TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT DELETE ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT DELETE ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT DELETE ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT DELETE ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT DELETE ON dbo.MOE_NUMBER TO eqa_user
go
GRANT DELETE ON dbo.JOINING_WORDS TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT DELETE ON dbo.DEBTOR TO eqa_user
go
GRANT DELETE ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT DELETE ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT DELETE ON dbo.PERORG_CASE TO eqa_user
go
GRANT DELETE ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT DELETE ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT DELETE ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT DELETE ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT DELETE ON dbo.STD_GROUP TO eqa_user
go
GRANT DELETE ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT DELETE ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT DELETE ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT DELETE ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT DELETE ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT DELETE ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT DELETE ON dbo.STD_VERSION TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT DELETE ON dbo.QFN_RULE TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT DELETE ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT DELETE ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT DELETE ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT DELETE ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT DELETE ON dbo.COURSE_VERSION TO eqa_user
go
GRANT DELETE ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT DELETE ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT DELETE ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT DELETE ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT DELETE ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_RATE TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT DELETE ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT DELETE ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT DELETE ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT DELETE ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT DELETE ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT DELETE ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT DELETE ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT DELETE ON dbo.SALUTATION TO eqa_user
go
GRANT DELETE ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT DELETE ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT DELETE ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT DELETE ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT DELETE ON dbo.MODERATOR TO eqa_user
go
GRANT DELETE ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT DELETE ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT DELETE ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT DELETE ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT DELETE ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT DELETE ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT DELETE ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT DELETE ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.AMAP_VERSION TO eqa_user
go
GRANT DELETE ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.rs_dbversion TO eqa_user
go
GRANT DELETE ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT DELETE ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT DELETE ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT DELETE ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT DELETE ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT DELETE ON dbo.REPORT_STATUS TO eqa_user
go
GRANT DELETE ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT DELETE ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT DELETE ON dbo.rs_lastcommit TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT DELETE ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT DELETE ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT DELETE ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT DELETE ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT DELETE ON dbo.NZPOST_HUB TO eqa_user
go
GRANT DELETE ON dbo.REPORT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT DELETE ON dbo.TAX_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT DELETE ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT DELETE ON dbo.rs_threads TO eqa_user
go
GRANT DELETE ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT DELETE ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT DELETE ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT DELETE ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT DELETE ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT DELETE ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT DELETE ON dbo.SRS_REQUEST TO eqa_user
go
GRANT DELETE ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT DELETE ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT DELETE ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT DELETE ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.BATCH_STATUS TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT DELETE ON dbo.REPORT TO eqa_user
go
GRANT DELETE ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT DELETE ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT DELETE ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT DELETE ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT DELETE ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT DELETE ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT DELETE ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT DELETE ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT DELETE ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT DELETE ON dbo.REPORT_ROLE TO eqa_user
go
GRANT DELETE ON dbo.latency_test TO eqa_user
go
GRANT DELETE ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT DELETE ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT DELETE ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT DELETE ON dbo.REGION_GROUP TO eqa_user
go
GRANT DELETE ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT DELETE ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT DELETE ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT DELETE ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT DELETE ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT DELETE ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT DELETE ON dbo.SQR_EVENT TO eqa_user
go
GRANT DELETE ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT DELETE ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT DELETE ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT DELETE ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT DELETE ON dbo.TEC_COURSE TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT DELETE ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT DELETE ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT DELETE ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.IR330 TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT DELETE ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT DELETE ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT DELETE ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT DELETE ON dbo.RESULT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT DELETE ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT DELETE ON dbo.STD TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT DELETE ON dbo.FEE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.RETURN_TYPE TO eqa_user
go
GRANT DELETE ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT DELETE ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT DELETE ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT DELETE ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT DELETE ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT DELETE ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT DELETE ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT DELETE ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT DELETE ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT DELETE ON dbo.SSB_TYPE TO eqa_user
go
GRANT DELETE ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT DELETE ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT DELETE ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT DELETE ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT DELETE ON dbo.JBM_DUAL TO eqa_user
go
GRANT DELETE ON dbo.AWARD_TYPE TO eqa_user
go
GRANT DELETE ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT DELETE ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT DELETE ON dbo.SEVERITY TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT DELETE ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT DELETE ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT DELETE ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT DELETE ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT DELETE ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT DELETE ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT DELETE ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT DELETE ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT DELETE ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT DELETE ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT DELETE ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT DELETE ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT DELETE ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT DELETE ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT DELETE ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT DELETE ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT DELETE ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT DELETE ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT DELETE ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT DELETE ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT DELETE ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT DELETE ON dbo.CURRENCY TO eqa_user
go
GRANT DELETE ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT DELETE ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT DELETE ON dbo.JBM_MSG TO eqa_user
go
GRANT DELETE ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT DELETE ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT DELETE ON dbo.REGION TO eqa_user
go
GRANT DELETE ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT DELETE ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT DELETE ON dbo.JBM_TX TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT DELETE ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT DELETE ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT DELETE ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.NAME_TYPE TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT DELETE ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT DELETE ON dbo.KEY_DATE TO eqa_user
go
GRANT DELETE ON dbo.COM_METHOD TO eqa_user
go
GRANT DELETE ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.JBM_COUNTER TO eqa_user
go
GRANT DELETE ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT DELETE ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT DELETE ON dbo.QFN_TYPE TO eqa_user
go
GRANT DELETE ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT DELETE ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.CODE_TABLE TO eqa_user
go
GRANT DELETE ON dbo.ORDER_ITEM TO eqa_user
go
GRANT DELETE ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT DELETE ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT DELETE ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT DELETE ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT DELETE ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT DELETE ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT DELETE ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT DELETE ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT DELETE ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT DELETE ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.ORDER_NOTE TO eqa_user
go
GRANT DELETE ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT DELETE ON dbo.NEXT_ID TO eqa_user
go
GRANT DELETE ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT DELETE ON dbo.PAID_CODE TO eqa_user
go
GRANT DELETE ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT DELETE ON dbo.NOTE_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT DELETE ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.text_events TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT DELETE ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT DELETE ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT DELETE ON dbo.JBM_USER TO eqa_user
go
GRANT DELETE ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT DELETE ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT DELETE ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT DELETE ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT DELETE ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT DELETE ON dbo.CFN_UPDATES TO eqa_user
go
GRANT DELETE ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT DELETE ON dbo.JBM_ROLE TO eqa_user
go
GRANT DELETE ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT DELETE ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT DELETE ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT DELETE ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT DELETE ON dbo.COM_COMBO TO eqa_user
go
GRANT DELETE ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT DELETE ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.PERORG_TYPE TO eqa_user
go
GRANT DELETE ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT DELETE ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT DELETE ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT DELETE ON dbo.COM_MEDIUM TO eqa_user
go
GRANT DELETE ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT DELETE ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT DELETE ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT DELETE ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER TO eqa_user
go
GRANT DELETE ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT DELETE ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT DELETE ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT DELETE ON dbo.LEAVING_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN TO eqa_user
go
GRANT DELETE ON dbo.NAME TO eqa_user
go
GRANT DELETE ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT DELETE ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT DELETE ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT DELETE ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT DELETE ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT DELETE ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT DELETE ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT DELETE ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT DELETE ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT DELETE ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT DELETE ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT DELETE ON dbo.COND_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT DELETE ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT DELETE ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT DELETE ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT DELETE ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT DELETE ON dbo.RESULT_RANKING TO eqa_user
go
GRANT DELETE ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT DELETE ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT DELETE ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT DELETE ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT DELETE ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT DELETE ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT UPDATE ON dbo.COM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT TO eqa_user
go
GRANT UPDATE ON dbo.SCH_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT UPDATE ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT UPDATE ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT UPDATE ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT UPDATE ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT UPDATE ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT UPDATE ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.RISK_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT UPDATE ON dbo.DIARY_EVENT TO eqa_user
go
GRANT UPDATE ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITATION TO eqa_user
go
GRANT UPDATE ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT UPDATE ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT UPDATE ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SECTION TO eqa_user
go
GRANT UPDATE ON dbo.LANGUAGE TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.EQA_SETTING TO eqa_user
go
GRANT UPDATE ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT UPDATE ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT UPDATE ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT UPDATE ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT UPDATE ON dbo.STREET_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT UPDATE ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT UPDATE ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT UPDATE ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT UPDATE ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT UPDATE ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT UPDATE ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.QFN_CERT TO eqa_user
go
GRANT UPDATE ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT UPDATE ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.RESULT TO eqa_user
go
GRANT UPDATE ON dbo.ETHNICITY TO eqa_user
go
GRANT UPDATE ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT UPDATE ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT UPDATE ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_PANEL TO eqa_user
go
GRANT UPDATE ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT UPDATE ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT UPDATE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.IWI_CODE TO eqa_user
go
GRANT UPDATE ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT UPDATE ON dbo.QFN_CONDITION TO eqa_user
go
GRANT UPDATE ON dbo.PERORG TO eqa_user
go
GRANT UPDATE ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT UPDATE ON dbo.IWI TO eqa_user
go
GRANT UPDATE ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT UPDATE ON dbo.COMPASSIONATE TO eqa_user
go
GRANT UPDATE ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.BUILD_TAG TO eqa_user
go
GRANT UPDATE ON dbo.NZQA_POSITION TO eqa_user
go
GRANT UPDATE ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT UPDATE ON dbo.AMAP TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT UPDATE ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT UPDATE ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT UPDATE ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT UPDATE ON dbo.SDR_COURSE TO eqa_user
go
GRANT UPDATE ON dbo.LVL TO eqa_user
go
GRANT UPDATE ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT UPDATE ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CASE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.MARKER TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT UPDATE ON dbo.CASE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT UPDATE ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY TO eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT UPDATE ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT UPDATE ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT UPDATE ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT UPDATE ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT UPDATE ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT UPDATE ON dbo.FILE_LOCATION TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT UPDATE ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT UPDATE ON dbo.COURSE TO eqa_user
go
GRANT UPDATE ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT UPDATE ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT UPDATE ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT UPDATE ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MARK_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ENDORSEMENT TO eqa_user
go
GRANT UPDATE ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT UPDATE ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT UPDATE ON dbo.RULES_GROUP TO eqa_user
go
GRANT UPDATE ON dbo.database_backup_date TO eqa_user
go
GRANT UPDATE ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT UPDATE ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT UPDATE ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT UPDATE ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT UPDATE ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.JMS_USERS TO eqa_user
go
GRANT UPDATE ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT UPDATE ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT UPDATE ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT UPDATE ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.JMS_ROLES TO eqa_user
go
GRANT UPDATE ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT UPDATE ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT UPDATE ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT UPDATE ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT UPDATE ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT UPDATE ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT UPDATE ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT UPDATE ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT UPDATE ON dbo.GENDER_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT UPDATE ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT UPDATE ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT UPDATE ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.TIMERS TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT UPDATE ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT UPDATE ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.KEY_LOG TO eqa_user
go
GRANT UPDATE ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT UPDATE ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT UPDATE ON dbo.RELATIONSHIP TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT UPDATE ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT UPDATE ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER TO eqa_user
go
GRANT UPDATE ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT UPDATE ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.dba_test_rep TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT UPDATE ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT UPDATE ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT UPDATE ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MOE_NUMBER TO eqa_user
go
GRANT UPDATE ON dbo.JOINING_WORDS TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT UPDATE ON dbo.DEBTOR TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT UPDATE ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_CASE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT UPDATE ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT UPDATE ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT UPDATE ON dbo.STD_GROUP TO eqa_user
go
GRANT UPDATE ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT UPDATE ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT UPDATE ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT UPDATE ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT UPDATE ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT UPDATE ON dbo.STD_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT UPDATE ON dbo.QFN_RULE TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT UPDATE ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT UPDATE ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT UPDATE ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_RATE TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT UPDATE ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT UPDATE ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT UPDATE ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT UPDATE ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.SALUTATION TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT UPDATE ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT UPDATE ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.MODERATOR TO eqa_user
go
GRANT UPDATE ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT UPDATE ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT UPDATE ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT UPDATE ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT UPDATE ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.rs_dbversion TO eqa_user
go
GRANT UPDATE ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT UPDATE ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT UPDATE ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT UPDATE ON dbo.rs_lastcommit TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT UPDATE ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT UPDATE ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.NZPOST_HUB TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT UPDATE ON dbo.TAX_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT UPDATE ON dbo.rs_threads TO eqa_user
go
GRANT UPDATE ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT UPDATE ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.SRS_REQUEST TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT UPDATE ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT UPDATE ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT UPDATE ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT UPDATE ON dbo.REPORT TO eqa_user
go
GRANT UPDATE ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT UPDATE ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT UPDATE ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT UPDATE ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT UPDATE ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.REPORT_ROLE TO eqa_user
go
GRANT UPDATE ON dbo.latency_test TO eqa_user
go
GRANT UPDATE ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT UPDATE ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT UPDATE ON dbo.REGION_GROUP TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT UPDATE ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT UPDATE ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT UPDATE ON dbo.SQR_EVENT TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT UPDATE ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.TEC_COURSE TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT UPDATE ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT UPDATE ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.IR330 TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT UPDATE ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT UPDATE ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT UPDATE ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT UPDATE ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT UPDATE ON dbo.STD TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT UPDATE ON dbo.FEE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.RETURN_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT UPDATE ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT UPDATE ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT UPDATE ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT UPDATE ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT UPDATE ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.SSB_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT UPDATE ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT UPDATE ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT UPDATE ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT UPDATE ON dbo.JBM_DUAL TO eqa_user
go
GRANT UPDATE ON dbo.AWARD_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT UPDATE ON dbo.SEVERITY TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT UPDATE ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT UPDATE ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT UPDATE ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT UPDATE ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT UPDATE ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT UPDATE ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT UPDATE ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT UPDATE ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT UPDATE ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT UPDATE ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT UPDATE ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT UPDATE ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT UPDATE ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT UPDATE ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT UPDATE ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT UPDATE ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT UPDATE ON dbo.CURRENCY TO eqa_user
go
GRANT UPDATE ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT UPDATE ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.JBM_MSG TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.REGION TO eqa_user
go
GRANT UPDATE ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT UPDATE ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT UPDATE ON dbo.JBM_TX TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT UPDATE ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT UPDATE ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT UPDATE ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.NAME_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT UPDATE ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT UPDATE ON dbo.KEY_DATE TO eqa_user
go
GRANT UPDATE ON dbo.COM_METHOD TO eqa_user
go
GRANT UPDATE ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.JBM_COUNTER TO eqa_user
go
GRANT UPDATE ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT UPDATE ON dbo.QFN_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CODE_TABLE TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_ITEM TO eqa_user
go
GRANT UPDATE ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT UPDATE ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT UPDATE ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT UPDATE ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT UPDATE ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT UPDATE ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT UPDATE ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT UPDATE ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ORDER_NOTE TO eqa_user
go
GRANT UPDATE ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT UPDATE ON dbo.NEXT_ID TO eqa_user
go
GRANT UPDATE ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT UPDATE ON dbo.PAID_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT UPDATE ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.text_events TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT UPDATE ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT UPDATE ON dbo.JBM_USER TO eqa_user
go
GRANT UPDATE ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT UPDATE ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT UPDATE ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.CFN_UPDATES TO eqa_user
go
GRANT UPDATE ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.JBM_ROLE TO eqa_user
go
GRANT UPDATE ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT UPDATE ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT UPDATE ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT UPDATE ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT UPDATE ON dbo.COM_COMBO TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT UPDATE ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT UPDATE ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.COM_MEDIUM TO eqa_user
go
GRANT UPDATE ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT UPDATE ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT UPDATE ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER TO eqa_user
go
GRANT UPDATE ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT UPDATE ON dbo.LEAVING_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN TO eqa_user
go
GRANT UPDATE ON dbo.NAME TO eqa_user
go
GRANT UPDATE ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT UPDATE ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT UPDATE ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT UPDATE ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT UPDATE ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT UPDATE ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT UPDATE ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT UPDATE ON dbo.COND_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT UPDATE ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT UPDATE ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT UPDATE ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT UPDATE ON dbo.RESULT_RANKING TO eqa_user
go
GRANT UPDATE ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT UPDATE ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT UPDATE ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT UPDATE ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT UPDATE ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getAllAssessmentTitles TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_region_by_code TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_work_experience TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mods_assned_to_checkmod TO eqa_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_quantity TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_FX_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_non_compliant_qualifications_without_org TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdTypeCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_finance_invoices TO eqa_user
go
GRANT EXECUTE ON dbo.SRSUEQualExtract TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_learner_srq_secondary_quals TO eqa_user
go
GRANT EXECUTE ON dbo.proc_additional_paging TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_find_applicants TO eqa_user
go
GRANT EXECUTE ON dbo.DpModAssmntPlanStsCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_patch_std_group TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getAllComponentsByYear TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_registered_quals TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_prv_accred_domains_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_years TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_rate TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_PH_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.proc_PanelLeadersPackMaterials TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_find_nsn_for_sop TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_past_learner_sec_quals TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_find_apps TO eqa_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_patch_std_group_cfn TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_related_perorg_roles TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_rol_credits_achvd_in_yr TO eqa_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ass_subj_by_group_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_unit TO eqa_user
go
GRANT EXECUTE ON dbo.proc_createPrintLinkTempTable TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdTypeForVer TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_find_sop_history TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_quantities TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_applcnts_agent TO eqa_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_patch_std_group_coverage TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getAllSubjectsByYear TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_results_by_entry_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_rol_learner_by_name_dob TO eqa_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assessment_plan TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_contract_items TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examApproveAllocationRun TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_financial_detail TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_applcnts_web_user TO eqa_user
go
GRANT EXECUTE ON dbo.DpModerationAssmntPlanUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_patch_std_group_std TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_rma_web_supp_unallocated TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_sac_exam_processing_report_data TO eqa_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_web_doc_validate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCandidatesOtherSchool TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetSubjectLevels TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_frwk_analysis TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_financial_details TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_application TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_CELL_PH_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps_by_year TO eqa_user
go
GRANT EXECUTE ON dbo.DpNZQAPositionTitleUpd TO eqa_user
go
GRANT EXECUTE ON dbo.MBSNewNsnFileGen TO eqa_user
go
GRANT EXECUTE ON dbo.mc_find_assplan_systems TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_ir330 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCheckMarkerIdForEntry TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetSubjects TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_full_qc_learners TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_results_for_class TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_financial_detail TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Create_Y11_Data TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_application_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentForId TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_perorg_non_mark TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_std_subject_catorg_names TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMaterialsList TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_item_type TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examDeleteAllocationRule TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetSubLvlPnl TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_ROA_entries TO eqa_user
go
GRANT EXECUTE ON dbo.w_getall_lrnr_results_verif TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_contract_in_role TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_applications TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_rol_learner_by_nsn TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cops TO eqa_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlCleanup TO eqa_user
go
GRANT EXECUTE ON dbo.w_lrnrs_for_studyprov_by_name TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_ReactivateMPM TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assessment_subject TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_person_claim TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_summary TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examDeletePersonalisation TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_achieved_quals TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_financial_detail TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Create_Y13_Tables TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_apps_failed_sub TO eqa_user
go
GRANT EXECUTE ON dbo.EOS_MGRTN_COUNTS TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsBySession TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_rol_quals_achvd TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_focus TO eqa_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlEntriesGet TO eqa_user
go
GRANT EXECUTE ON dbo.w_mod_is_allocated_for_period TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assigned_marker_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_move_contract_item TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindStdVersionsForAss TO eqa_user
go
GRANT EXECUTE ON dbo.p_com_get_eqa_setting_history TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Statistic_Insert TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_freq_qual_names TO eqa_user
go
GRANT EXECUTE ON dbo.DpHistoryProvContextUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_rol_stds_achvd TO eqa_user
go
GRANT EXECUTE ON dbo.p_cec_get_exemptions TO eqa_user
go
GRANT EXECUTE ON dbo.DpBatchWithdrawlEntriesUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_populate_entry_stats_tables TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assplan_legacy_notes TO eqa_user
go
GRANT EXECUTE ON dbo.DpScholAwardsGen TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_rem_claim_rate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGenerateNewMarkerCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_entries TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconRef3 TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_chkmod_rpts_for_chkmod TO eqa_user
go
GRANT EXECUTE ON dbo.p_com_get_recent_eqa_settings TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Statistic_Update TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_qual TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_role_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_cec_get_exemption_stds TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_sites TO eqa_user
go
GRANT EXECUTE ON dbo.w_sec_learn_data_other_achieve_detail TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_rem_item_from_ctct TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_ho TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetActiveMPMForMarker TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetVAContexts TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_learner_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_com_ins_eqa_setting_history TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Adhoc_Driver_process TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUtilSequenceColors TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_quals TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsBySubject TO eqa_user
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_roles_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_seclearndata_ncea_detail_wdentries TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assplan_years_for_prov TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_rem_item_type TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAssSessCmp4StdYear TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInfoManagementLabel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_ntrs_rslts TO eqa_user
go
GRANT EXECUTE ON dbo.p_create_prescr_ver_stat_hist TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_1a TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAllocateEntries TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_quals_by_name TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsByType TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_sac_approvals TO eqa_user
go
GRANT EXECUTE ON dbo.p_cec_get_rules TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTGroupLkp TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qa_activity TO eqa_user
go
GRANT EXECUTE ON dbo.proc_reset_entries TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_check_mod_report_years TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_search_contractors TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAssessmentSession TO eqa_user
go
GRANT EXECUTE ON dbo.p_current_previous_batch_status TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_1b TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_institution TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getDistributionSummary TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_sacs_for_entry TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTStandards TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_check_mod_roles TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_contract TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetCntx4MrkAndAllocGr TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_prov_awards TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_2 TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_institutions TO eqa_user
go
GRANT EXECUTE ON dbo.IRNDropTables TO eqa_user
go
GRANT EXECUTE ON dbo.dpModReportDeactivate TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getEventDate TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_secondary_providers TO eqa_user
go
GRANT EXECUTE ON dbo.p_cfn_search_name_or_number TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTPortfolios TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qa_outcome_types TO eqa_user
go
GRANT EXECUTE ON dbo.CRS_PERORG_ALT_ID_Ins TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_checkmods_for_year TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_test_rep TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_item TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetContext4MrkrEntry TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertAssessCentre TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_seg_roa_for_ce TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_add_memo_of_agreement TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_3 TO eqa_user
go
GRANT EXECUTE ON dbo.DpModReportDMRSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_nz_qualifications TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCreateCGA TO eqa_user
go
GRANT EXECUTE ON dbo.dpModReportLkp TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getEventsByYear TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_session_codes TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSpecialAssessmentAll TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTMarkers TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qual_app_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_chkmods_mod_id_by_yr TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_quantity TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetContextsForAllocGr TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_seg_roa_for_qc TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_find_prv_names_moe_id TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Driver_process_4 TO eqa_user
go
GRANT EXECUTE ON dbo.DpModReportDMRUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_qualifications TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCreateCandidate TO eqa_user
go
GRANT EXECUTE ON dbo.dpModReportModeratorLkp TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_amap_with_std_and_cat TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTMrkrPvdrPrtflo TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_classfn_by_number TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_rate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetCurrTransferAlloc TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInternalLabelReport TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_teg_roa_for_qc TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accred_item_types TO eqa_user
go
GRANT EXECUTE ON dbo.QC_Adhoc_ExtractLearners TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_selected_prods TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCreateCohort TO eqa_user
go
GRANT EXECUTE ON dbo.dpModReportProviderLkp TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTFirstMarker TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_flag_paid_entries TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_status TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetCurrentAllocForMag TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examIsMaintModeEnabled TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_caa_unaccred_stds TO eqa_user
go
GRANT EXECUTE ON dbo.QC_ExtractLearners TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerClaimStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_supporting_docs TO eqa_user
go
GRANT EXECUTE ON dbo.DpInsComMethodDL TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCreateCount TO eqa_user
go
GRANT EXECUTE ON dbo.dpModReportStatusLkp TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getExamCentres TO eqa_user
go
GRANT EXECUTE ON dbo.p_amap_advance_report TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_by_app_num TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTAllocate TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_reg_app_details TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_codetable_audit TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_claim_unit TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetEntrySerialNumbers TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examIsPanelLeader TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_hookon_fee TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_expiry_date TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cfn_depth_by_code TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerClaimStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_work_experience TO eqa_user
go
GRANT EXECUTE ON dbo.DpInsComMethodGU TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCreateResult TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_qfn_minor_version TO eqa_user
go
GRANT EXECUTE ON dbo.dpModReportTypeLkp TO eqa_user
go
GRANT EXECUTE ON dbo.p_amap_advance_search TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_codetable_cols TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetForbAllocForMarker TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examIsPanelMember TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_approval_type TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSelectEntry TO eqa_user
go
GRANT EXECUTE ON dbo.DpModeratorEndDateSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_applicant TO eqa_user
go
GRANT EXECUTE ON dbo.DpInsComMethodPU TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAddMarkerPanelMember TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_check_oid TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCreateStandard TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_standard TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_case_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_codetable_fk_vals TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsResetMarkerStatus TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_contract_items TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetForbiddenLearners TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examIsValidMarkerCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_hookon_letter TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_signatory_status TO eqa_user
go
GRANT EXECUTE ON dbo.DpModeratorEndDateUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_application TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsGetCurrentAllocCount TO eqa_user
go
GRANT EXECUTE ON dbo.p_randomisation TO eqa_user
go
GRANT EXECUTE ON dbo.dpModReportUpdate TO eqa_user
go
GRANT EXECUTE ON dbo.DpIwiCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_standard_by_number TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_indicators TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_codetable_history TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsTransferAllocReversal TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetForbiddenProviders TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_is_lrnr_embargoed TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_by_version TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_qualification TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsTransferAllocation TO eqa_user
go
GRANT EXECUTE ON dbo.Change_avacode_std_number TO eqa_user
go
GRANT EXECUTE ON dbo.DpIwiCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_std_category_names TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_codetable_vals TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetLearnerEnrolments TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_items_subj_to_emb TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_change_reasons TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getGlobalBufferParams TO eqa_user
go
GRANT EXECUTE ON dbo.DpIwiCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_std_entry_cts_by_subj TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_codetables TO eqa_user
go
GRANT EXECUTE ON dbo.w_ecm_extract TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_ir330 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerAssignedCde TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMarkerSchedules TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_invalid TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_schedule_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_qual_sec_qc_cleanup TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetSupervisors TO eqa_user
go
GRANT EXECUTE ON dbo.Highest_Attainment TO eqa_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_std_entry_cts_by_type TO eqa_user
go
GRANT EXECUTE ON dbo.DistECMPackoutLabels TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_authority TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_com_combo TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_person_claim TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerPageHistory TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMarkerStatusLetters TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_maori TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_schedule_hist TO eqa_user
go
GRANT EXECUTE ON dbo.umlaut2txt TO eqa_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_std_result_spread TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_decile TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_communication_methods TO eqa_user
go
GRANT EXECUTE ON dbo.p_com_get_all_eqa_settings TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerPageSummary TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_nonmaori TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_extension_details TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFinalListAnswerSets TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_all_qfns TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getLatestComponentFile TO eqa_user
go
GRANT EXECUTE ON dbo.DpLeavingCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupLkp TO eqa_user
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_adds TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_gender_type TO eqa_user
go
GRANT EXECUTE ON dbo.w_ito_report_quals_pop_qual TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_compentry_by_comp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMaxReconPageNumber TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_provres TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFinalPackingList TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_non_nqf_qfns TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getLatestFileByType TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupDel TO eqa_user
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_changes TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_std_subject_names TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_locality TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_country_by_code TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_accred_ext_extend TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMkrByAssgndMkrCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examNewCodeGenerator TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ito_stas_qual TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_learner_categories TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examDeletePaginationRun TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accreds3 TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_subj_entry_cts_by_prov TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_active_app_objects TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_sub_type TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_course TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_accred_ext_select TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMkrStsByAssgndMkrCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examP13nLabelForEntry TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_memo_of_agreement TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examExMarkSheetsBody TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusDel TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupSel TO eqa_user
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_deletes TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_subject TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCalcCompsHeld TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_domains_for_category TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sch_type TO eqa_user
go
GRANT EXECUTE ON dbo.Proc_expire_qualifications TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ct_amap_web_ver TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_accredited_program TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetNewStdCtxMapsFrMkr TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPanelAdRegions TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_awards TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_indicators TO eqa_user
go
GRANT EXECUTE ON dbo.DpResultCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examExMarkSheetsHeader TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getOversView TO eqa_user
go
GRANT EXECUTE ON dbo.DpAssessmentCentreSel TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelAllocGroupUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_submission_dates TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sched_eers TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_next_tagged_qc_lnr TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ct_qual_web_ver TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_accreds_for_case TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelSummsByMkrId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_info TO eqa_user
go
GRANT EXECUTE ON dbo.p_ECM_Assessment_centre_Update TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_responses TO eqa_user
go
GRANT EXECUTE ON dbo.DpResultRankingDel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindMarkSheet TO eqa_user
go
GRANT EXECUTE ON dbo.procMarkerAddressSnapshot TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_assess_date TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getPrintVolume TO eqa_user
go
GRANT EXECUTE ON dbo.DpAssessmentCentreUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelLkp TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_unaccredited_std TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_next_amap_seq_number TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_school_level TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ct_stds_web_ver TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_accreds_for_prov TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPanelLeaderAddress TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_letter TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_severity_codes TO eqa_user
go
GRANT EXECUTE ON dbo.DpResultRankingIns TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindPanelsFromMkPgs TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getProdVolumeSummary TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_STANDARD_INPUT TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_unallocated_providers TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_next_app_seq_number TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_db_ver_history TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_add_accred TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPossContextsForMkr TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_misconduct TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_sta_his TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerAllocation TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_sper TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_uninv_mod_group_roles TO eqa_user
go
GRANT EXECUTE ON dbo.getNceaGroupings TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_arrangements TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_empty_aplan_summaries TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_add_extension_run TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPossibleCntx4Mrker TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPanelStdsForPanel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_merge_leap_orders TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.DpResultRankingUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_valid_sacs_for_std TO eqa_user
go
GRANT EXECUTE ON dbo.DistGTAssessSched TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_bulk_attes TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetResCmpLayout4AssCm TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPaperChanges TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_mod_rebate TO eqa_user
go
GRANT EXECUTE ON dbo.SU_Check_Exist_Std_Version TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_issue_subtypes TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAllocateEntry TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_vendors_customers TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_std_version_cfn_oid TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_exempt_catgs TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_course_search TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetResCmpQuest4LinkId TO eqa_user
go
GRANT EXECUTE ON dbo.SU_Clear_Temp_Table TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_subject_types TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertMkPgHistory TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAllocationStatus TO eqa_user
go
GRANT EXECUTE ON dbo.DpAccrdItemTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertComponent TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsVASerialNbrGen_slow TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_verification_states TO eqa_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_for_cfns TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sites TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrolment_yrs_for_lrnr TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_del_accred TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetResCompLayout4Std TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examQueryPanels1 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_nsi_number_info TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_organisation_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseStatusDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertException TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_versions_of_standard TO eqa_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_for_comps TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_size_categories TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_del_app TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetSperBatchSubmissionDate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examQueryPanels2 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_nzdb_reg_letter TO eqa_user
go
GRANT EXECUTE ON dbo.p_delete_standard_input_with_error_eqa TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_per_role_by_names TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPoVpMarkSheetsBody TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseStatusIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_for_stds TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_stag_app TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_del_app_org_focus TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdStubForCmpt TO eqa_user
go
GRANT EXECUTE ON dbo.procUpdateQnText TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconProgReport TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prof_affiliations TO eqa_user
go
GRANT EXECUTE ON dbo.LateFees TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_has_enrolment_for_prov TO eqa_user
go
GRANT EXECUTE ON dbo.p_qfn_rules_search_main TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_standard TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_del_app_sfp_catg TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdStubForCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconProgReportSum TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_pun_stat TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_contact_details TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReallocMarkerPgLine TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindMarkers TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_has_enrolments TO eqa_user
go
GRANT EXECUTE ON dbo.p_qfn_search_any_framework TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrols_for_prov_by_std TO eqa_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_del_course_qfn TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetStdGrdTypeForCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconRef TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_qual_awarded TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_types TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupDel TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_has_role TO eqa_user
go
GRANT EXECUTE ON dbo.p_qual_get_accredited_teos TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_teo_reg_status TO eqa_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_del_course_std TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetStdMinVerForEntry TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconRef2 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_qual_check_log TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_exempt_catgs TO eqa_user
go
GRANT EXECUTE ON dbo.proc_exam_fetch_ex_pagedata TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAbsentLearners TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupIns TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertMaterialFile TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_pov TO eqa_user
go
GRANT EXECUTE ON dbo.w_ins_audit_transaction TO eqa_user
go
GRANT EXECUTE ON dbo.p_qual_get_cfns TO eqa_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetTransfHistCnt4Mrkr TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconRefSchool TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_by_moe_id TO eqa_user
go
GRANT EXECUTE ON dbo.proc_RCQnType TO eqa_user
go
GRANT EXECUTE ON dbo.proc_exam_fetch_other_pagedata TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAcademicYear TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_upd_learner_orn TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeLkp TO eqa_user
go
GRANT EXECUTE ON dbo.w_ins_codetable_hist TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_exam_centre_police_vet TO eqa_user
go
GRANT EXECUTE ON dbo.DpSchoolAssistCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetUnallocatedEntries TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconRefSchool2 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_refund_section TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_code_details TO eqa_user
go
GRANT EXECUTE ON dbo.proc_UpdRCQnType TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCandidatesReport TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocCounts TO eqa_user
go
GRANT EXECUTE ON dbo.ROLUpdateROLRequest TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupSel TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_add_pers_Run TO eqa_user
go
GRANT EXECUTE ON dbo.w_ins_codetable_vals TO eqa_user
go
GRANT EXECUTE ON dbo.p_rebuild_std_group_coverage TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_user_details TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_entry_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInfoManagementLabel2 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconRefSchool3 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_results_list TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cop_arranged_by TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPostMarkersReport TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocGroup TO eqa_user
go
GRANT EXECUTE ON dbo.ROLUpdateLearner TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocationGroupUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_remove_old_pers_run TO eqa_user
go
GRANT EXECUTE ON dbo.w_insert_sac_upload_hist TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_exclusions TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_has_base_accred TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ethnicities_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accred_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertAllocationRule TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examRecRefStat TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_review_letter TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cop_arranged_option TO eqa_user
go
GRANT EXECUTE ON dbo.proc_resultUpdCLCT TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPostStandardReport TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocGrp TO eqa_user
go
GRANT EXECUTE ON dbo.ROLCreateTables TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocationMethodLkp TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponent TO eqa_user
go
GRANT EXECUTE ON dbo.w_is_marker TO eqa_user
go
GRANT EXECUTE ON dbo.w_sec_learn_data_qual_detail TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_direct_payments TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertTeReoIndication TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examRegionalBufferPack TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_crse_end TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_cop_history TO eqa_user
go
GRANT EXECUTE ON dbo.proc_ASCUpdate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMarkerPortfolio TO eqa_user
go
GRANT EXECUTE ON dbo.ROLLearnerExtract TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_is_mod_role_in_use TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_app_contact TO eqa_user
go
GRANT EXECUTE ON dbo.load_entry_context TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_exam_nonclashes TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_add_logo TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examIsDuplicateAttendance TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSetChanges TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_learner_info TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qa_activity_types TO eqa_user
go
GRANT EXECUTE ON dbo.proc_newResultComponent TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMarkerPortfolioNonApp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocationRules TO eqa_user
go
GRANT EXECUTE ON dbo.ROLStandardExtract TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_is_panel_std TO eqa_user
go
GRANT EXECUTE ON dbo.p_standard_search_by_domain TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_app_org_focus TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_exam_session TO eqa_user
go
GRANT EXECUTE ON dbo.DpSchoolResultFileGen TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examIsValidExamAttendance TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_qfn_summary TO eqa_user
go
GRANT EXECUTE ON dbo.Exa842EntryMarkerReset TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_reasons_for_change TO eqa_user
go
GRANT EXECUTE ON dbo.proc_ASCLoad TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioExtract TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAssignedMkrCodes TO eqa_user
go
GRANT EXECUTE ON dbo.ROLQualificationExtract TO eqa_user
go
GRANT EXECUTE ON dbo.DpCaseTypeStatusComboUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentIds TO eqa_user
go
GRANT EXECUTE ON dbo.w_is_std_accredited_for_prov TO eqa_user
go
GRANT EXECUTE ON dbo.p_stdver_in_catg_and_lvls TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_app_sfp_catg TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_levels TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examLastRunForAllocGroup TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSuppCloseOff TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_qual_achieved TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_risk_mgmt_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.proc_resultComponentLoad TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioStdLevel TO eqa_user
go
GRANT EXECUTE ON dbo.DpScholStdMigrate TO eqa_user
go
GRANT EXECUTE ON dbo.ROLQualificationStrandExtract TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_is_va_assistant TO eqa_user
go
GRANT EXECUTE ON dbo.p_validate_category_delete TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_caa_app_details TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_fees_by_enrolment_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_pte_levels TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examLatestReconsRunStats TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_retrieve_data TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_sfp_argmt_subtype TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetEcmsByProvider TO eqa_user
go
GRANT EXECUTE ON dbo.ROLUnitResultExtract TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateExceptionStatus TO eqa_user
go
GRANT EXECUTE ON dbo.p_datafix_milisecond_dates TO eqa_user
go
GRANT EXECUTE ON dbo.w_ito_report_providers TO eqa_user
go
GRANT EXECUTE ON dbo.p_validate_cfn_expired TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_cop_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.sp_rebuild_input_batch_error TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_fin_assist_apps TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_qfn_Types TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examLearnerEnrlmntsByStd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUnallocatedSupps TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_schol_info TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_teo_provider_types TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboDel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubMarker TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetEcwByPerorg TO eqa_user
go
GRANT EXECUTE ON dbo.ROLUnitResultLatestIns TO eqa_user
go
GRANT EXECUTE ON dbo.ContactsMergeCopyComMethod TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_ito_report_quals TO eqa_user
go
GRANT EXECUTE ON dbo.p_basic_amap_search TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_groups_mod_stats TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_qual_Types TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMarkingPageSummaries TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUnallocatedSupsMkId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_standard_info TO eqa_user
go
GRANT EXECUTE ON dbo.SRNCandidatesExtract TO eqa_user
go
GRANT EXECUTE ON dbo.rs_get_lastcommit TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_trust_deed_holders TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboIns TO eqa_user
go
GRANT EXECUTE ON dbo.ROLUnitResultLatestUpd TO eqa_user
go
GRANT EXECUTE ON dbo.ContactsMergeCopyName TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonCycleUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_ito_report_results TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course_qfn TO eqa_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_all_regions TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_Valid_Page TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMkrStatusLttrsByStat TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUnallocateMarker TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_trnd_exc TO eqa_user
go
GRANT EXECUTE ON dbo.SRNCounts TO eqa_user
go
GRANT EXECUTE ON dbo.rs_syncup_lastcommit TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsResetMaxToCurrAlloc TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_trust_holders_org TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetExamCode TO eqa_user
go
GRANT EXECUTE ON dbo.ROLScholResultExtract TO eqa_user
go
GRANT EXECUTE ON dbo.ContactsMergeCleanup TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_key_performance_report TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_amap TO eqa_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_contact TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetMarkersOnPanel TO eqa_user
go
GRANT EXECUTE ON dbo.QU_Check_Exist_Qual_Version TO eqa_user
go
GRANT EXECUTE ON dbo.DpAssistCodeDel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUnallocSuppsById TO eqa_user
go
GRANT EXECUTE ON dbo.SRNHEader TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_accred_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleComboUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAdmissExamCentre TO eqa_user
go
GRANT EXECUTE ON dbo.ROLScholResultLatestIns TO eqa_user
go
GRANT EXECUTE ON dbo.ContactsMergeValidate TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateOvers TO eqa_user
go
GRANT EXECUTE ON dbo.w_list_all_exclusion_sac TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_application TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course_std TO eqa_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_itos TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_doc_types TO eqa_user
go
GRANT EXECUTE ON dbo.RMAExMarkerPageLineUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPanelDetailsByPanelId TO eqa_user
go
GRANT EXECUTE ON dbo.QU_Clear_Qual_Update_Data TO eqa_user
go
GRANT EXECUTE ON dbo.DpAssistCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_ue_award TO eqa_user
go
GRANT EXECUTE ON dbo.SRNResultCodesExtract TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_course_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusDel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAdmissSchoolsExams TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMagForMember TO eqa_user
go
GRANT EXECUTE ON dbo.ROLScholResultLatestUpd TO eqa_user
go
GRANT EXECUTE ON dbo.ContactsMergeProcess TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateRowId TO eqa_user
go
GRANT EXECUTE ON dbo.w_list_all_status TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_eer_sched_hist TO eqa_user
go
GRANT EXECUTE ON dbo.DpDebtorCodesUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_iwis_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_org_focus TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPanelMembersForPanel TO eqa_user
go
GRANT EXECUTE ON dbo.DpAssistCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_school_qc_learners TO eqa_user
go
GRANT EXECUTE ON dbo.SRNResultsExtract TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_document_items TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_issue_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusIns TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAdmissStandards TO eqa_user
go
GRANT EXECUTE ON dbo.ROLScholQualExtract TO eqa_user
go
GRANT EXECUTE ON dbo.ContactsMerge TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseMonitorStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_enr_prov TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_nqf_qfns TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_eer_schedule TO eqa_user
go
GRANT EXECUTE ON dbo.DpProvidersLkp TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_judgement_types TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_app_sfp_catg TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPersonalisationTotals TO eqa_user
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data2 TO eqa_user
go
GRANT EXECUTE ON dbo.DpAssistCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateAssessCentre TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_sec_qc_endorsement TO eqa_user
go
GRANT EXECUTE ON dbo.p_cfn_cLog_std_stat TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_assplan_providers TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSQLResultTransfer TO eqa_user
go
GRANT EXECUTE ON dbo.QC_Check_Endorsement TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_note_iss_stat_hist TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAllMarkerCode TO eqa_user
go
GRANT EXECUTE ON dbo.ROLUEQualExtract TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_current_qfn_version TO eqa_user
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_studyprov TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_issue_index_hist TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPoVpMarkSheetsHeader TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_learner_select TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindEntryAndResult TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_cop_arranged_by TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAllocatedSupps TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_current_std_version TO eqa_user
go
GRANT EXECUTE ON dbo.Remove_SGC TO eqa_user
go
GRANT EXECUTE ON dbo.mod_std_group_load TO eqa_user
go
GRANT EXECUTE ON dbo.p_create_new_prescription TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_apps_by_type TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubjectLevel TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsSplitPanel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_qual_achieved TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertAbsentResult TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsEntryMarkerReset TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_cop_arranged_option TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAllocatedSupsLrnr TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkSheetsByExam TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetTransSummary TO eqa_user
go
GRANT EXECUTE ON dbo.Remove_SGSM TO eqa_user
go
GRANT EXECUTE ON dbo.w_lrnrs_for_studyprov_by_nsn TO eqa_user
go
GRANT EXECUTE ON dbo.mod_std_group_norm TO eqa_user
go
GRANT EXECUTE ON dbo.p_create_new_reg_prescr_ver TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_learner_category TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubmissions TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateGroupForEntry TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_schol_info TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_sfp_exemption_catg TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAllocSuppsById TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetName TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_qfn TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPnlsBySubjectAndRgn TO eqa_user
go
GRANT EXECUTE ON dbo.Update_SGC_1 TO eqa_user
go
GRANT EXECUTE ON dbo.w_marker_has_verif_entries TO eqa_user
go
GRANT EXECUTE ON dbo.mod_std_group_validate TO eqa_user
go
GRANT EXECUTE ON dbo.p_create_prescr_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerTransferUndo TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelLeaderNames TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_learners_for_course TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_caa_app_details TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPortfolioSubmissions2 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_standard_info TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocationExclusions TO eqa_user
go
GRANT EXECUTE ON dbo.FMIS_Add_eQA_Only TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_set_delivery_status_ind TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAnonAddressLabel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPagesForSper TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusDel TO eqa_user
go
GRANT EXECUTE ON dbo.Update_SGC_2 TO eqa_user
go
GRANT EXECUTE ON dbo.w_marker_verif_entries TO eqa_user
go
GRANT EXECUTE ON dbo.mod_std_group_main TO eqa_user
go
GRANT EXECUTE ON dbo.p_create_prescr_version TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_note_issue TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPendingRecons TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGroupDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_learners_for_nsifile TO eqa_user
go
GRANT EXECUTE ON dbo.p_count_assess_stds TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReallocPgLineValidate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srn_ue_award TO eqa_user
go
GRANT EXECUTE ON dbo.FMIS_ORG_PERORG_ROLE_LOAD TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_crs_dev_and_review TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgRoleTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAnonAddressLabel2 TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_qfn_version TO eqa_user
go
GRANT EXECUTE ON dbo.Update_SGSM_1 TO eqa_user
go
GRANT EXECUTE ON dbo.w_marker_verif_providers TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_notes TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPendingReconsStats TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGroupIns TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMarkerCodeGen TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_learners_unpaid_fees TO eqa_user
go
GRANT EXECUTE ON dbo.EMOD_220_ROLE_2002_2003_ins TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examResetMarkerSubStatus TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_ce_res TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAllocGrpView TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_internal_approval TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAnonAddressLabel3 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelMembers TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_std TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_standard TO eqa_user
go
GRANT EXECUTE ON dbo.Update_SGSM_2 TO eqa_user
go
GRANT EXECUTE ON dbo.w_marker_verif_stds TO eqa_user
go
GRANT EXECUTE ON dbo.p_expire_prescription TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_pro_condition TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconsHeader TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGroupOwnerCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cfns_by_std TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examRevertAllocationGroup TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_ce_summ TO eqa_user
go
GRANT EXECUTE ON dbo.proc_rma_web_store_and_forward TO eqa_user
go
GRANT EXECUTE ON dbo.rs_send_repserver_cmd TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_library_resources TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_grant_fim_macro_user TO eqa_user
go
GRANT EXECUTE ON dbo.DpCourseVersionStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_std_minor_version TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_rpts_for_moderator TO eqa_user
go
GRANT EXECUTE ON dbo.w_mod_has_capacity TO eqa_user
go
GRANT EXECUTE ON dbo.p_upd_materials_rec TO eqa_user
go
GRANT EXECUTE ON dbo.p_update_prescr_status TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_cop TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_bulk_wd_entries TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGroupSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_res_by_prov_std TO eqa_user
go
GRANT EXECUTE ON dbo.RMASuppResultAllocatedUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSelectPortfolioEntris TO eqa_user
go
GRANT EXECUTE ON dbo.proc_PanelLeaderPackLabels TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_crse_end TO eqa_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealDel TO eqa_user
go
GRANT EXECUTE ON dbo.QUAL_Domains_Backfeed TO eqa_user
go
GRANT EXECUTE ON dbo.check_web_contingency_status TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_overseas_delivery TO eqa_user
go
GRANT EXECUTE ON dbo.getStdGradingResults TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_std_version TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_rol_turnaround TO eqa_user
go
GRANT EXECUTE ON dbo.w_mod_has_te_reo_reports TO eqa_user
go
GRANT EXECUTE ON dbo.get_next_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_update_prescr_ver_status TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGroupTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_panel_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_moderation_subjects TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_classfn_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSetAllocationRunStatus TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_learner_select TO eqa_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealIns TO eqa_user
go
GRANT EXECUTE ON dbo.QUAL_Replacement_backfeed TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_cop_arranged_by TO eqa_user
go
GRANT EXECUTE ON dbo.p_Moderator_duplicates TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCmpResExc TO eqa_user
go
GRANT EXECUTE ON dbo.getStdVersionDetails TO eqa_user
go
GRANT EXECUTE ON dbo.MOD_ASSESS_PLAN_EMOD_201_upd TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMarkerStatusUpdate TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_stds_in_domain TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getOrgDetailsByPerorg TO eqa_user
go
GRANT EXECUTE ON dbo.DistChaserHubLabels TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_find_providers TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGroupUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_classification TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSetEntryReconStatuses TO eqa_user
go
GRANT EXECUTE ON dbo.proc_PanelPackList TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_qual_achieved TO eqa_user
go
GRANT EXECUTE ON dbo.DpTmpPostAppealSel TO eqa_user
go
GRANT EXECUTE ON dbo.QUAL_UnitsTracking_Backfeed TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_cop_arranged_option TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCodeGenerator TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMarkerUnallocate TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_achievements TO eqa_user
go
GRANT EXECUTE ON dbo.w_mod_is_allocated_to_prov TO eqa_user
go
GRANT EXECUTE ON dbo.DistMKRDeliveryLabels TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accreds TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_focus TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_panels_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_comm_methods TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examTranslatedPapersReqd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_updReseqMarkerPages TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_schol_info TO eqa_user
go
GRANT EXECUTE ON dbo.DpPostAppealDataFix TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_reason_for_change TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examHistoryTransStds TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliveryModeTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_ass_plan_subject_stats TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_accreds2 TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_provider_ho TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_panels_region TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cond_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMrkrContextCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUnmrkdAllocatedSupps TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_standard_info TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_sfp_exemption_catg TO eqa_user
go
GRANT EXECUTE ON dbo.DpAcademicYearLkp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsMPL TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_default_plan TO eqa_user
go
GRANT EXECUTE ON dbo.assessment_session_norm TO eqa_user
go
GRANT EXECUTE ON dbo.w_prov_is_forbidden_for_mod TO eqa_user
go
GRANT EXECUTE ON dbo.UpdQCStatus TO eqa_user
go
GRANT EXECUTE ON dbo.proc_bufferPackPackingList_B TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_qa_activity TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_reallocations TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cond_types TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_Key_Date_Get TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateAllocationRule TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_stdsumm_info TO eqa_user
go
GRANT EXECUTE ON dbo.QC_ExtractResults TO eqa_user
go
GRANT EXECUTE ON dbo.DpPostAppealRemoveReport TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_staffing_resources TO eqa_user
go
GRANT EXECUTE ON dbo.DpSchoolResultFileGen2 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindEligableMarkers TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertAbsent TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_exclusions TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_get_insuf_comp_dist_summ TO eqa_user
go
GRANT EXECUTE ON dbo.assessment_session_validate TO eqa_user
go
GRANT EXECUTE ON dbo.w_report_compassionate TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_base_org_details TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_registration_app TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsUpdateMarkerRoleEndDate TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_result_spread TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_conditions TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_Update_submission_Status TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateComponentReadyForSPER TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_srs_ue_award TO eqa_user
go
GRANT EXECUTE ON dbo.QC_UpdateQualsGained TO eqa_user
go
GRANT EXECUTE ON dbo.DpFixMarkerPrefAddr TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_summary_of_change TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_ins_relationship TO eqa_user
go
GRANT EXECUTE ON dbo.marker_panel_load TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_change_history TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_risk_issue TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_schedules TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_confidence_codes TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_tcs_dual_info TO eqa_user
go
GRANT EXECUTE ON dbo.QC_ProvQualCheck_EQAUpdate TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_teaching_resources TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindMrkrToAlloc TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertAttendance TO eqa_user
go
GRANT EXECUTE ON dbo.DpDeliverySiteStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_mods_for_check_mod TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_learner_allocation TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getDevelopers TO eqa_user
go
GRANT EXECUTE ON dbo.DpProvidersSchoolLkp TO eqa_user
go
GRANT EXECUTE ON dbo.marker_panel_norm TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.DpKeyDateDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provider_ho TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_sfp_arrangement TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_scripts_alloc TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_reset_batch_profile TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMagOnMarkerPage TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetReconPageId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_unverified_results TO eqa_user
go
GRANT EXECUTE ON dbo.QC_ProvQualCheck_InsProc TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_transition_arrgmts TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindStdsWithoutComp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertDiaryEvent TO eqa_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_seclearndata_ncea_detail TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradSchemeStdTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpKeyDateIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_reg_classfns TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_arranged TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_existing_assess_stds TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsRecordPersRunDate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMaintenanceMode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetScheduledEntries TO eqa_user
go
GRANT EXECUTE ON dbo.QC_QualCheckDriverProc_cut TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_applyBufferParamsToComponents TO eqa_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_qfn_rule TO eqa_user
go
GRANT EXECUTE ON dbo.assessment_session_main TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.DpKeyDateSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_has_limited_base_accred TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_stg_application TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_materials_url_years TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_option TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMarkerForbidden TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetScheduleResults TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ytd_recon_learner TO eqa_user
go
GRANT EXECUTE ON dbo.QC_DailyDriverProc_cut TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_applyGrowthAllowanceParamsToComponents TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_smv_title TO eqa_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_qfn_rules_tree TO eqa_user
go
GRANT EXECUTE ON dbo.marker_panel_main TO eqa_user
go
GRANT EXECUTE ON dbo.w_select_sac_upload_hist TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.DpKeyDateTypeLkp TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_emergency_broadcast_ecm_contact_list TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_ins_version_details TO eqa_user
go
GRANT EXECUTE ON dbo.proc_web_as_assessment_year TO eqa_user
go
GRANT EXECUTE ON dbo.RMAAbsentScriptLoadData TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_allocation_stats TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_providers TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMarkerHoldResults TO eqa_user
go
GRANT EXECUTE ON dbo.QC_Daily_and_ITI_Driver TO eqa_user
go
GRANT EXECUTE ON dbo.spSetLatestModId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_find_sample_stds_std TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_applyNonBufferParamsToComponents TO eqa_user
go
GRANT EXECUTE ON dbo.DpProvDeregReasonUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_check_ncea_charge TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getOrgDtlsByPerorgAltId TO eqa_user
go
GRANT EXECUTE ON dbo.w_stats_assessment_sessions TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.DpKeyDateUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_lwf_ins_audit_tran TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_is_course_duplicated TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_by_mod_role_id TO eqa_user
go
GRANT EXECUTE ON dbo.proc_teo_mod_plan TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateMarkerSubStatus TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconLabels TO eqa_user
go
GRANT EXECUTE ON dbo.QC_Daily_QualCheckDriverProc TO eqa_user
go
GRANT EXECUTE ON dbo.DpProviderSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_deleteAdditionalCmptVolumeByPrePersId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMarkerReallocations TO eqa_user
go
GRANT EXECUTE ON dbo.DpProviderStatusDel TO eqa_user
go
GRANT EXECUTE ON dbo.ExamAllocationGroupRevert TO eqa_user
go
GRANT EXECUTE ON dbo.DpBklProcTypSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_stats_enrolments TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradTypeAssmntTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_is_course_owner TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_capacity_reasons TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdatePoliceVetExpiry TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examReconsBody TO eqa_user
go
GRANT EXECUTE ON dbo.w_count_final_prov_results TO eqa_user
go
GRANT EXECUTE ON dbo.QC_QualCheckDriverProc TO eqa_user
go
GRANT EXECUTE ON dbo.DpResultRankingSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getAdditionalComponentVolumeNotExtracted TO eqa_user
go
GRANT EXECUTE ON dbo.DpProviderStatusIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_check_roa_charge TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERHeaderSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getRelatedRoles TO eqa_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_stats_entries TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_prod TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_set_accred TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleCreate TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_comps_for_rpt_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_cop_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_check_mod_reports TO eqa_user
go
GRANT EXECUTE ON dbo.proc_exam_distributor_validate TO eqa_user
go
GRANT EXECUTE ON dbo.emod409_moderation_report TO eqa_user
go
GRANT EXECUTE ON dbo.w_del_entry_assistance TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocGTGen TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getAdditionalProductionVolumeNotExtractedForId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetTransAssigns TO eqa_user
go
GRANT EXECUTE ON dbo.DpProviderStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_check_srs_charge TO eqa_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_stats_ext_entries_variance TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_recon_run TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_set_accred_status TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_Create_NZQA_Qual_Tab TO eqa_user
go
GRANT EXECUTE ON dbo.proc_gp_paging TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_by_num TO eqa_user
go
GRANT EXECUTE ON dbo.proc_finalVariationPckngList1 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examRegenReconPage TO eqa_user
go
GRANT EXECUTE ON dbo.w_ecm_employee_extract TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getAllExceptionsByFileId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPaginationRun TO eqa_user
go
GRANT EXECUTE ON dbo.DpProviderStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_del_courier_price TO eqa_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_stats_standards TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_add_payment_refund TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetEcwById TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_set_case_end_date TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_Create_Qual_Tab TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_contact_changes TO eqa_user
go
GRANT EXECUTE ON dbo.proc_rma_clear_web_results TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_stds TO eqa_user
go
GRANT EXECUTE ON dbo.proc_finalVariationPckngList2 TO eqa_user
go
GRANT EXECUTE ON dbo.w_exists_spec_assist_app TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getAssessmentSessionsFromYear TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAssCentreById TO eqa_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_oz_learner_std_result TO eqa_user
go
GRANT EXECUTE ON dbo.w_stats_verif_results TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingSchemeCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_add_paymt_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_declined_reasons TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_owners TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assessment_standard TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getOrgDetailsByPerorgRole TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSetReconRunIdOnPage TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentByMaterialCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAssessmentCentre TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_latest_version TO eqa_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_courier_price TO eqa_user
go
GRANT EXECUTE ON dbo.w_tert_prov_can_do_ass_plan TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_all_pymt_rec_run TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetLastApprovedEcm TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_comments TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_diary_events_mod TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assessment_standards TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getPerOrgRolByPerOrgAltID TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetEthnicity TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_assplan_systems TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsByCriteria TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSelectMarkers TO eqa_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodySel TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_courier_prices TO eqa_user
go
GRANT EXECUTE ON dbo.w_truncate_stats TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_last_recon_run TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_contact TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_latency_test TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_Registered_Extract TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_diary_events_prov TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_ver_qfns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assplan_summaries TO eqa_user
go
GRANT EXECUTE ON dbo.proc_resultComponentLayoutType TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetProviderList TO eqa_user
go
GRANT EXECUTE ON dbo.update_provider TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsBySessionAndExamCentre TO eqa_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeDel TO eqa_user
go
GRANT EXECUTE ON dbo.DpRecognitionBodyUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_courier_zone TO eqa_user
go
GRANT EXECUTE ON dbo.w_upd_amap_web_ver TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_payments TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertEcw TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_description TO eqa_user
go
GRANT EXECUTE ON dbo.DistVADeliveryLabels TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_Load_Qual_workTab TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_jdgmts_for_rpt_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_ver_stds TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_incomp_mod_rpts TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_cover_letr TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetResults4Provider TO eqa_user
go
GRANT EXECUTE ON dbo.DpFlushResultsSave TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getComponentsByStandard TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSubjectPnlsByPnlId TO eqa_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_delivery_type TO eqa_user
go
GRANT EXECUTE ON dbo.proc_conGetRelationships TO eqa_user
go
GRANT EXECUTE ON dbo.w_upd_codetable_vals TO eqa_user
go
GRANT EXECUTE ON dbo.DpStdGradingTypeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.RMAResetDateToDatamail TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_refunds TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_docs_posted TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_Load_NZQA_Qual_Tab TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_not_inv_reasons TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_course_versions TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_lnr_letter TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMarkerToSchoolLabel TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_compass_by_enrolment TO eqa_user
go
GRANT EXECUTE ON dbo.DpFlushResultsModify TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getExamCentreAddlPrePersVols TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetAssSessionComp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examSummStdTrans TO eqa_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_upd_ct_stds_web_ver TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_submit TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_QUAL_LEARNERS TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_rep_status_events TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_courses_by_name TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_resub TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_qc_lnrs_new TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFixAsmtSesCode TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_exam_session_stds TO eqa_user
go
GRANT EXECUTE ON dbo.DpFlushResults TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getExamCentreAddlPrePersVolsById TO eqa_user
go
GRANT EXECUTE ON dbo.QC_Adhoc_QualCheckDriverProc TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUndoAllocationRun TO eqa_user
go
GRANT EXECUTE ON dbo.DpExamMaterialsCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_upd_qual_web_ver TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_products TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_app_withdraw TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Learners_race TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_report_statii TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_crs_ver_id TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerCategorySel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_prov_mod_plan TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_qc_lnrs_orig TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFixAsmtSesTitle TO eqa_user
go
GRANT EXECUTE ON dbo.dmproc_add_perorg_alt_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_forbidden_learners TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_contact_list TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalDistributionRequests TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetCntxForSubjects TO eqa_user
go
GRANT EXECUTE ON dbo.DpDiaryEventReasonUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_complete_date TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_learner TO eqa_user
go
GRANT EXECUTE ON dbo.w_upd_stats_expired_ia_stds TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_processed_recon_run TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_course_details TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_NZQA_QUAL_LEARNERS TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_report_types TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_crs_ver_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerCategoryUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_app_required_letter TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMPLResultTransfer TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalProductionRequests TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetContactStatus TO eqa_user
go
GRANT EXECUTE ON dbo.p_appGrp_NQF_status_count TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_lodgement_details TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsDeletePerorgRole TO eqa_user
go
GRANT EXECUTE ON dbo.w_upd_stats_sess_other_sch TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_upd_payment TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Learn_race TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_report_years TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_delivery_modes TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelMemberStatusSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_WDRes_list TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_learner_examsessions TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCandidate TO eqa_user
go
GRANT EXECUTE ON dbo.p_cec_get_grading_types TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_risk_issues TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalProductionRequestsDateList TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateEcw TO eqa_user
go
GRANT EXECUTE ON dbo.proc_PanelLeadersPackDetails TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_datamail_date_update TO eqa_user
go
GRANT EXECUTE ON dbo.w_update_stats TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_upd_reconciliation_run TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_deliver_mode_exp TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Framework TO eqa_user
go
GRANT EXECUTE ON dbo.DpCountryCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_group TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_case TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelMemberStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_info_WDRes TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_learner_peers TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_spec_assist_providers TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examCentreSession TO eqa_user
go
GRANT EXECUTE ON dbo.p_cfn_search TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getExtractAdditionalRequestsDateList TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateEntry TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_payment_status TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_qualification TO eqa_user
go
GRANT EXECUTE ON dbo.p_tmp_update_prescr_ver TO eqa_user
go
GRANT EXECUTE ON dbo.w_verif_data_entry_status TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examValidateSchool TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_eer_qa_notes TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Framework_race TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_add_applicant TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ext_entries_no_rslts TO eqa_user
go
GRANT EXECUTE ON dbo.proc_exam_ins_ex_mrkr_batch TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_learners TO eqa_user
go
GRANT EXECUTE ON dbo.p_check_component_name TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getGlobalGrowthAllowanceParams TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_payment_type TO eqa_user
go
GRANT EXECUTE ON dbo.proc_move_quals_to_expiring TO eqa_user
go
GRANT EXECUTE ON dbo.p_com_get_recent_es_history TO eqa_user
go
GRANT EXECUTE ON dbo.w_verif_std_levels TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getPersonRoleTypesByPerorg TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_eer_schedule TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Framework TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_std TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_eer_schedule TO eqa_user
go
GRANT EXECUTE ON dbo.DpProviderUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_finance_invoice_info TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_learners_by_name TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_add_item_to_ctct TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getGlobalNonBufferParams TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_provider TO eqa_user
go
GRANT EXECUTE ON dbo.EMOD774STDGroupLinkDateCheck TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_results_for_SA_class TO eqa_user
go
GRANT EXECUTE ON dbo.proc_marker_code_from_result TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_external_support TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Frame_race TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_role_statii TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_add_institution TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_act_spec_assist TO eqa_user
go
GRANT EXECUTE ON dbo.proc_exam_ins_ex_mrkr_page TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_learners_by_nsn TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_activity_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getMaterialCodesWithTotalQtyOrder TO eqa_user
go
GRANT EXECUTE ON dbo.proc_exam_distributor_paging TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_qual_result TO eqa_user
go
GRANT EXECUTE ON dbo.p_com_upd_eqa_setting TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_reg_nqf_standards TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Provider TO eqa_user
go
GRANT EXECUTE ON dbo.DpMarkerPanelUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_roles TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_add_inst_qual TO eqa_user
go
GRANT EXECUTE ON dbo.DpCountryCodeDel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_prepaid_learners TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examAssignTranslator TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_learners_total TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_cc_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getOrderDatesAndAmounts TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_short_name TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_qfn_status_date TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_work_queue_counts TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_provider_by_moe_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_internal_support TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_Qual_Provider_race TO eqa_user
go
GRANT EXECUTE ON dbo.DpPanelRollover TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_rpt_years_for_mod TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsVASerialNbrGen TO eqa_user
go
GRANT EXECUTE ON dbo.DpCountryCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_get_unpaid_learners TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examComparisons TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examIsDuplicateAbsent TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_cl_status_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_getTotalQuantityOrderedByMaterialCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_exam_ins_ex_mrkr_line TO eqa_user
go
GRANT EXECUTE ON dbo.p_unique_short_name TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_status_date TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMaterialsReport TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_learner_category TO eqa_user
go
GRANT EXECUTE ON dbo.AddToMarkerPanel TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Provider TO eqa_user
go
GRANT EXECUTE ON dbo.DpPanelsToRolloverGet TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_focus TO eqa_user
go
GRANT EXECUTE ON dbo.DpCountryCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_hookon_learner_stas TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examDeleteAvlblRegions TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_nsn TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_contract TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_ins_courier_price TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMaterialsSummary TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocMethodLkp TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_Stats_NZQA_Qual_Prov_race TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_std_by_number TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_add_work_experience TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_gov_body_details TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_payment_cover_sheet TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCreateTables TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examDelTeReoIndications TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examResetLatestPers TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_mod_reports TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_contracts TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertAdditionalComponentVolume TO eqa_user
go
GRANT EXECUTE ON dbo.proc_flatten_rules TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_ins_lodgement_detail TO eqa_user
go
GRANT EXECUTE ON dbo.DpBkletRetrvlDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_note_issue TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupDel TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleInsert TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_std_groups_by_year TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_del_applicant TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_assignees TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_recons_result_letter TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFindTranslators TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPersonalisationMark TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_mod_roles TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_items TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertGlobalBufferParams TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getNzqaEmployeeList TO eqa_user
go
GRANT EXECUTE ON dbo.proc_expire_domain_class TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_notes TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleIndex TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_sys_for_mod TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_del_application TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_index_hist TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_upd_batch_error_code TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelAssigns TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examTidyLatestPers TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_moderators TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertGlobalGrowthAllowanceParams TO eqa_user
go
GRANT EXECUTE ON dbo.proc_expire_subfield_class TO eqa_user
go
GRANT EXECUTE ON dbo.proc_insert_enrolments TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_learner_loc TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_org_legal_status TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupSel TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleUpdEntry TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_checkmod TO eqa_user
go
GRANT EXECUTE ON dbo.proc_bufferPackingBase TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_del_qualification TO eqa_user
go
GRANT EXECUTE ON dbo.sp_close_off_entry_sec_course_hist TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetSessions TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_panel_stds TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_rate TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertGlobalNonBufferParams TO eqa_user
go
GRANT EXECUTE ON dbo.DpExamsResultsTransfer TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetGroupsForPanel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_entryPersonalisation TO eqa_user
go
GRANT EXECUTE ON dbo.proc_expire_field_class TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_upd_courier_price TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_org_stability TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupUpd TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsTbleUpdLrn TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_mod TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_issue_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_check_batch_status_old TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetTeReoCircular TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examPersonalisationRun TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_panels_by_standard TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claim_units TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertMaterialComponentFile TO eqa_user
go
GRANT EXECUTE ON dbo.DpExamsResultsTransferAll TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetKeyDate TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelMemberSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateLabelPrintDate TO eqa_user
go
GRANT EXECUTE ON dbo.proc_expire_classification TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_organisation_qms TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocationMethodLkp TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByResults TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_moderator_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_del_work_experience TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedDel TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_check_missing_triggers TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetTeReoIndications TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_people TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claims TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_insertSessionPrePersVolume TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getRoles TO eqa_user
go
GRANT EXECUTE ON dbo.proc_updatePergorgStatus TO eqa_user
go
GRANT EXECUTE ON dbo.proc_expire_amaps TO eqa_user
go
GRANT EXECUTE ON dbo.p_delete_learner_input_match_eqa TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_component TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsPanelLkp TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByCredits TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_moderator_rpt_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedIns TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_get_batch_processing_response TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetTransRegions TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_people_by_name TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claims_by_pid TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateAdditionalComponentVolume TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetLearnerContexts TO eqa_user
go
GRANT EXECUTE ON dbo.proc_getUsageReport TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsGTAllocGroupLkp TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_judgement TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_pro_condition TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsPanelRegionLkp TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByFramewrk TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_moderator_stats TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_monitor_cycles TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedSel TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetTransStatus TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_previous_mod_reports TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_claims_by_rid TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateAdditionalProductionVolume TO eqa_user
go
GRANT EXECUTE ON dbo.proc_qual_org_role TO eqa_user
go
GRANT EXECUTE ON dbo.DpSperBtchsWthDifPrvdrs TO eqa_user
go
GRANT EXECUTE ON dbo.proc_expire_standards TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_update_assessment_date TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_prov_ho_code TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptByLearners TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_moderator_years TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_promote_batch TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_monitor_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.DpAllocGroupExcludedUpd TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_reset_batch_profile_new TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_prov_lrnrs_by_batch TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_contract_item TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentBufferParams TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sperCompProcessInfo TO eqa_user
go
GRANT EXECUTE ON dbo.DpSperBtchsWthDifPrvdrsSmry TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_prov_ho_vetted TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAllocationGroupIns TO eqa_user
go
GRANT EXECUTE ON dbo.NQF_STATS_ResultsRptCall TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mods_alloc_to_sys_year TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_no_qfn_reasons TO eqa_user
go
GRANT EXECUTE ON dbo.transfer_erlpCandidate_subject TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertAvlblRegion TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_contract_items TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentGrowthAllowanceParams TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sperFindCompToProcess TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sel_archive_standards TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_assess_std TO eqa_user
go
GRANT EXECUTE ON dbo.p_ssb_by_perorgRoleId TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_cop TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mods_allocated_to_sys TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_com_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_assplan_systems_original TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInsertTeReoCircular TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examInitP13nReport TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_providers_by_moe_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_contract_roles TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateComponentNonBufferParams TO eqa_user
go
GRANT EXECUTE ON dbo.DpExamsMpmStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerHistory TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_advce_NSN TO eqa_user
go
GRANT EXECUTE ON dbo.proc_notify_dereg_teo TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_assess_subj TO eqa_user
go
GRANT EXECUTE ON dbo.p_ssb_by_resmanClientId TO eqa_user
go
GRANT EXECUTE ON dbo.p_qual_amap_cov_detail TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_learner_by_name_or_dob TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCandidatesGradeAvgExrct TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examVariP13nReport TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_contractor TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateExtractAdditionalProductionRequests TO eqa_user
go
GRANT EXECUTE ON dbo.DpMpmStatusLkp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerIdForCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_byLrnrId TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_del_payment TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_assess_plan TO eqa_user
go
GRANT EXECUTE ON dbo.p_qual_amap_cov_scope TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mods_for_check_mod TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_name TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCandidatesExtract TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMteeGetMarkerPanels TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examFinalP13nReport TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_sa_lrnr_by_nsn TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_element_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateExtractAdditionalRequests TO eqa_user
go
GRANT EXECUTE ON dbo.OidInitialise TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_perorg_role TO eqa_user
go
GRANT EXECUTE ON dbo.p_qual_amap_cov_summ TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_focus TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsMarkerPanelUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mods_for_nat_mod TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_moderator_provider_addresses TO eqa_user
go
GRANT EXECUTE ON dbo.IRNCohortsExtract TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_learner_sec_quals TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_sample_stds TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateNonBufferComponentRates TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkingPage TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_finance TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_cancel_batch TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_name_non_mark TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_non_check_mod_roles TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_app_id_for_payment TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_prov_lrnrs_by_name_dob TO eqa_user
go
GRANT EXECUTE ON dbo.IRNHeldStd_load TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_sec_quals TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_sample_stds_std TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_export_elements TO eqa_user
go
GRANT EXECUTE ON dbo.p_emm_updateSessionPrePersVolume TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkingPageLines TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_direct_payment_id TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_perorg_marker TO eqa_user
go
GRANT EXECUTE ON dbo.QU_Update_EQA_QMV TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_provider_rgcode TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_organisation_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_academic_years_for_prov TO eqa_user
go
GRANT EXECUTE ON dbo.IRNQualificationsExtract TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_sample_subjects TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries1 TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_export_persons TO eqa_user
go
GRANT EXECUTE ON dbo.p_find_latst_assessble_stdver TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_results TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_input_batch_error_insert TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineNZQASel TO eqa_user
go
GRANT EXECUTE ON dbo.SU_Update_EQA_SMV TO eqa_user
go
GRANT EXECUTE ON dbo.DpBatchErrorCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_qa_activity TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_secondary_quals TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_panel_members TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsDeleteMarkerRole TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_assessment_standard_by_assess_subj_and_std_num TO eqa_user
go
GRANT EXECUTE ON dbo.IRNResultsExtract TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries2 TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_emergency_broadcast_contact_list TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMkrStsByMkrCode TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_NZDipBus_transcpt TO eqa_user
go
GRANT EXECUTE ON dbo.DpBatchErrorCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_exam TO eqa_user
go
GRANT EXECUTE ON dbo.ITI_Adhoc_Create_Y13_Tbls TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_panel_standards TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_cmod_rpt_years_for_cmod TO eqa_user
go
GRANT EXECUTE ON dbo.IRNSchoolExcludesExtract TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdateTeReoCircular TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_standard_keywords TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries3 TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkrLine4EntryId TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_ce_enrl TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineStdSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_list_of_receipts TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_registration_app TO eqa_user
go
GRANT EXECUTE ON dbo.sp_dba_check_arch_table_column TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_sec_quals_past TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_peers_by_compentry TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_contact TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_note_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrol_years_for_provider TO eqa_user
go
GRANT EXECUTE ON dbo.IRNStandardsExtract TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examUpdTransUnassigDt TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_standard_levels TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_gl_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_check_non_standard_param_charge TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkrsForTransfer TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_alloc_sec_qc_lnrs TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_risk_issue TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_people_for_provider TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_contacts TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_notes TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_standards TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_ir330 TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_application_system TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMrkSheets TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_risk_summary TO eqa_user
go
GRANT EXECUTE ON dbo.p_get_proposed_assess_stds TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_past_sec_quals TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_person_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_contactInfo TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id_all TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examValidateStandard TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_absent_script_report TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_ir330s TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_last_status_updated TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppWebSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_sfp_arrangement TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_person_by_userid TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_doc_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrolments_with_results TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_item_types TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_outst_fee_lodgement TO eqa_user
go
GRANT EXECUTE ON dbo.dm_proc_insert_perorg_alt_id TO eqa_user
go
GRANT EXECUTE ON dbo.Adhoc_QualCheck_and_ITI_Driver TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_by_ref TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_export_dates TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_srq_secondary_quals TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_person_roles TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_for_app TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_active_mod_reports TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_latest_ir330 TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_get_work_queue_item_list TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgAltIdTypeLkp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPageLinesByExam TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_amount_paid TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineMarkerSel TO eqa_user
go
GRANT EXECUTE ON dbo.ExamsAddMarkerAllocationGroup TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERRecordCounts TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetMarkerPage TO eqa_user
go
GRANT EXECUTE ON dbo.MOEProviderLocChange TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_upd_export_claims TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_preferred_com_method TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_num_applications TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_org_legal_status TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_crse TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_active_mod_roles TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_mrk_pages_count TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_ins_outst_fee_lodgement TO eqa_user
go
GRANT EXECUTE ON dbo.DpSSBLkp TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelForGroup TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_details TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERMarkerCounts TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineCompleteSel TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilestoSPERStdValidate TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_stag_app TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_course_endorsement TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_principal_nominees TO eqa_user
go
GRANT EXECUTE ON dbo.w_find_spec_assist_lrnrs TO eqa_user
go
GRANT EXECUTE ON dbo.DpQualVrfctnBatchesSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_grouped TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_admission_learners TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_person_bank_acc TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_set_certificate_print_status TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetPanelInfo TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_learner_info TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_Get_Marker_Record TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineNotComplSel TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERStdCounts TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_statuses TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_subject_area_exp TO eqa_user
go
GRANT EXECUTE ON dbo.sp_reset_qual_248 TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_owners_by_names TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_exam_centre_worker_prov TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_countries TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_person_claim TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderation_subject TO eqa_user
go
GRANT EXECUTE ON dbo.p_leap_upd_outst_fee_lodgement TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_get_marker_name TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppNZQASel TO eqa_user
go
GRANT EXECUTE ON dbo.RMAMarkerCheckSheets TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_types TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_existing_assess_stds_tm TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_del_course_version TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_gender_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_portfolio_count TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_AL_PH_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_learner_api_service_get_standards TO eqa_user
go
GRANT EXECUTE ON dbo.RMAFilesToSPERLineSuppUnallSel TO eqa_user
go
GRANT EXECUTE ON dbo.RMAMarkerSubmStatusUpd TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_pmts_by_sett_date TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_qrs_country_codes TO eqa_user
go
GRANT EXECUTE ON dbo.p_delete_learner_input_eqa TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_provider_enrolments TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_perorg_stag_apps TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_learner_by_enrolment_id TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_mod_std_groups TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_rates_for_item TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_appl_payment_products TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_LINE_WEB TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_info_res TO eqa_user
go
GRANT EXECUTE ON dbo.p_delete_input_batch_error_eqa TO eqa_user
go
GRANT EXECUTE ON dbo.RMA_GetMarkerPanelMemberShips TO eqa_user
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocInsert TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examManualAllocate TO eqa_user
go
GRANT EXECUTE ON dbo.DpAsmntCntrPaymentGradeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_provider_property TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_get_unsubmitted_apps TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_learners_examcode_report TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_moderators TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_result_count TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_AD_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_payment_status_hist TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_EX_MARKER_PAGE_WEB TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_batch_lnr_res_list TO eqa_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data1 TO eqa_user
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_product_type TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_for_app_by_cfn TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_upd_version_details TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_providers TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prof_bodies TO eqa_user
go
GRANT EXECUTE ON dbo.p_update_payment_amount TO eqa_user
go
GRANT EXECUTE ON dbo.DF_UpdateLearner_Enrolment TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_learners_for_billingfile TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_regions TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_rg_codes TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_EM_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.w_ito_report_result_pop_stds TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examGetProviderName TO eqa_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data2 TO eqa_user
go
GRANT EXECUTE ON dbo.RMASuppResultUnallocValidate TO eqa_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_delete_mark_input_eqa TO eqa_user
go
GRANT EXECUTE ON dbo.MOE_Provider_Loc_Change TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_provs_for_mod_alloc TO eqa_user
go
GRANT EXECUTE ON dbo.proc_rma_web_supp_allocated TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_provSite_ho_ref TO eqa_user
go
GRANT EXECUTE ON dbo.p_update_payment_status TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries TO eqa_user
go
GRANT EXECUTE ON dbo.proc_bufferPackPackingLabel TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_role_contract TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_FX_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_refunds_by_payment_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_ALLOC_WEB TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_ce_find_start TO eqa_user
go
GRANT EXECUTE ON dbo.p_fix_first_assess_date TO eqa_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data3 TO eqa_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.dmproc_AuditTransactionAdd TO eqa_user
go
GRANT EXECUTE ON dbo.proc_examMaterials TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_pinkies TO eqa_user
go
GRANT EXECUTE ON dbo.proc_bufferPackPackingList_A TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_sacs TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_schol_prt_count TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_get_refunds_by_settlement_date TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_cec_lrnr_enrlmts TO eqa_user
go
GRANT EXECUTE ON dbo.SU_Validate_Accred_Option_Code TO eqa_user
go
GRANT EXECUTE ON dbo.DpReviewReasonCodeUpd TO eqa_user
go
GRANT EXECUTE ON dbo.DpPerorgTypeSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_prv_accred_subs_by_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_institution TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_marker_panels_ad_region TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_all_salutations TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_stds_for_mrkr TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_HO_PH_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_add_supporting_document TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_SUPP_RESULT_UNALLOC_WEB TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_crse_endr_history TO eqa_user
go
GRANT EXECUTE ON dbo.eQA_MoE_CFN_Compare_changes_t TO eqa_user
go
GRANT EXECUTE ON dbo.p_pay_upd_payment_refund TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboDel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_prv_accreds_file TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_inst_qual TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_materials_url_submissions TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_aplan_diary_events TO eqa_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeDel TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_get_tax_codes TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_PO_AD_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_del_supporting_document TO eqa_user
go
GRANT EXECUTE ON dbo.checkLearnerNCEAL2Awarded TO eqa_user
go
GRANT EXECUTE ON dbo.proc_sper_domain_standards TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_individual_course_endorsement TO eqa_user
go
GRANT EXECUTE ON dbo.ROLUpdateRunDate TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboIns TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_prv_name_by_moe_id TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_key_contact TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_contact_change_dets TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_for_prov TO eqa_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeIns TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_contract TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_AD_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_upd_supporting_document TO eqa_user
go
GRANT EXECUTE ON dbo.p_arch_web_read_write TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_learner_sec_miss_quals TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_add_application TO eqa_user
go
GRANT EXECUTE ON dbo.AddToMarkerPanelAllocGrp TO eqa_user
go
GRANT EXECUTE ON dbo.DpRelationshipComboSel TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_qualification TO eqa_user
go
GRANT EXECUTE ON dbo.p_edorg_get_prov_note_issues TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_mod_rpts_for_auto_alloc TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_ass_plan_statii TO eqa_user
go
GRANT EXECUTE ON dbo.DpExAssistCodeSel TO eqa_user
go
GRANT EXECUTE ON dbo.p_claims_ins_claim_item TO eqa_user
go
GRANT EXECUTE ON dbo.tmp_moderat_WO_EM_non_marker TO eqa_user
go
GRANT EXECUTE ON dbo.p_search_non_compliant_qualifications TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_historical_mod_results TO eqa_user
go
GRANT EXECUTE ON dbo.p_award_learner_secondary_quals TO eqa_user
go
GRANT EXECUTE ON dbo.UpdateNSN TO eqa_user
go
GRANT EXECUTE ON dbo.p_qrs_add_qualification TO eqa_user
go
GRANT EXECUTE ON dbo.p_patch_qfn_version_cfn TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCH_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RISK_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DIARY_EVENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SECTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LANGUAGE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EQA_SETTING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ROLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STREET_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_CERT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ETHNICITY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_PANEL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.IWI_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_CONDITION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.IWI TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COMPASSIONATE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BUILD_TAG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NZQA_POSITION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_COURSE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LVL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CASE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CASE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FILE_LOCATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARK_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENDORSEMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RULES_GROUP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.database_backup_date TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JMS_USERS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JMS_ROLES TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.GENDER_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.TIMERS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.KEY_LOG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RELATIONSHIP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_test_rep TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOE_NUMBER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JOINING_WORDS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DEBTOR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_CASE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GROUP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_RULE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_RATE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SALUTATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATOR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.rs_dbversion TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.rs_lastcommit TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NZPOST_HUB TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.TAX_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.rs_threads TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SRS_REQUEST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REPORT_ROLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.latency_test TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REGION_GROUP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SQR_EVENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.TEC_COURSE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.IR330 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FEE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RETURN_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SSB_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_DUAL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AWARD_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SEVERITY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CURRENCY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_MSG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.REGION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_TX TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NAME_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.KEY_DATE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COM_METHOD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_COUNTER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CODE_TABLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_ITEM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORDER_NOTE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NEXT_ID TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAID_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.text_events TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_USER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_UPDATES TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.JBM_ROLE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COM_COMBO TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COM_MEDIUM TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.LEAVING_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NAME TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.COND_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.RESULT_RANKING TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCH_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RISK_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DIARY_EVENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SECTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LANGUAGE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EQA_SETTING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ROLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STREET_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_CERT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ETHNICITY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_PANEL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.IWI_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_CONDITION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.IWI TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COMPASSIONATE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BUILD_TAG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NZQA_POSITION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_COURSE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LVL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CASE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CASE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FILE_LOCATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARK_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENDORSEMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RULES_GROUP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.database_backup_date TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JMS_USERS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JMS_ROLES TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.GENDER_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.TIMERS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.KEY_LOG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RELATIONSHIP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_test_rep TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOE_NUMBER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JOINING_WORDS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DEBTOR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_CASE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GROUP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_RULE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_RATE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SALUTATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATOR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.rs_dbversion TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.rs_lastcommit TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NZPOST_HUB TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.TAX_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.rs_threads TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SRS_REQUEST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REPORT_ROLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.latency_test TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REGION_GROUP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SQR_EVENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.TEC_COURSE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.IR330 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FEE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RETURN_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SSB_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_DUAL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AWARD_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SEVERITY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CURRENCY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_MSG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.REGION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_TX TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NAME_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.KEY_DATE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COM_METHOD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_COUNTER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CODE_TABLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_ITEM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORDER_NOTE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NEXT_ID TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAID_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.text_events TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_USER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_UPDATES TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.JBM_ROLE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COM_COMBO TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COM_MEDIUM TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.LEAVING_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NAME TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.COND_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.RESULT_RANKING TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCH_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RISK_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DIARY_EVENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SECTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LANGUAGE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EQA_SETTING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ROLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STREET_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_CERT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ETHNICITY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_PANEL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.IWI_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_CONDITION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.IWI TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COMPASSIONATE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BUILD_TAG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NZQA_POSITION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_COURSE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LVL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CASE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CASE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FILE_LOCATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARK_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENDORSEMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RULES_GROUP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.database_backup_date TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JMS_USERS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JMS_ROLES TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.GENDER_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.TIMERS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.KEY_LOG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RELATIONSHIP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_test_rep TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOE_NUMBER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JOINING_WORDS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DEBTOR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_CASE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GROUP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_RULE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_RATE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SALUTATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATOR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.rs_dbversion TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.rs_lastcommit TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NZPOST_HUB TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.TAX_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.rs_threads TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SRS_REQUEST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REPORT_ROLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.latency_test TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REGION_GROUP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SQR_EVENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.TEC_COURSE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.IR330 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FEE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RETURN_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SSB_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_DUAL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AWARD_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SEVERITY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CURRENCY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_MSG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.REGION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_TX TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NAME_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.KEY_DATE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COM_METHOD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_COUNTER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CODE_TABLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_ITEM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORDER_NOTE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NEXT_ID TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAID_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.text_events TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_USER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_UPDATES TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.JBM_ROLE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COM_COMBO TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COM_MEDIUM TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.LEAVING_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NAME TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.COND_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.RESULT_RANKING TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ORG_EVALUATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AWARD_EXTERNAL_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_TEC_QUAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCH_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ORGANISATION_ROLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DIGITAL_ENTRY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SCENARIO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_SOP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_PROFILE_NOTE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_EXEMPTION_TABLE_SUB_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AWARD_NZQA_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GRAD_TYPE_ASSMNT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERS_VOL_COUNT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CYCLE_CONTEXT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_ISSUE_SEVERITY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SFP_ARGMT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_COP_ACCOM_OPTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_ERROR_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DEAD_MESSAGE_QUEUE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCH_SUB_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_PLUGIN_RULE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_EXEMPTION_TABLE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERSONALISATION_RUN_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DOUBLE_DIP_STD_MAPPING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_EVALUATION_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RISK_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_SUMMARY_EXCLUSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DIARY_EVENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SOP_MILESTONE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QA_ACTIVITY_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_PROFILE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AWARD_RECIPIENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERSONALISATION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_QUAL_COMPLETION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCH_GENDER_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SECTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LANGUAGE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_CHK_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EQA_SETTING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SFP_ARGMT_SUB_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_COMPONENT_PEP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCHOOL_ASSISTANCE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXCEPTION_ORN_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DIARY_EVENT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ALLOCATION_GROUP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PICKUP_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ADDRESS_EXCLUSION_WORD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_FOCUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ROLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SECTION_ACHIEVED TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BOOKLET_PROCESS_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QA_OUTCOME_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_TEC_NZQA_QUAL_MAPPING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STREET_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENROLMENT_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STANDARD_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ALLOCATION_METHOD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROV_SFP_ARGMT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENROLMENT_FEE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCHOOL_ASSISTANCE_CODE_DTL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PRODUCT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_VERSION_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_CODE_SUFFIX TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BOOKLET_RETRIEVAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_ALLOCATION_GROUP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ETHNICITY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EQA_SETTING_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_CERT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QRS_INSTITUTION_QFN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROV_LRNR_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BOOKLET_ACTION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ETHNICITY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AWARD_DETAIL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SPECIAL_ASSISTANCE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAPPING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SCENARIO_STRAND TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ALLOCATION_RUN_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_EXEMPTION_TABLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_ISSUE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_PANEL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SFP_EXEMPTION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESS_SESS_CMPT_CUT_SCORE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NZQA_ORG_UNIT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_TEC_NZQA_QUAL_NSN_MAP_QFN_ACHIEVED TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_SESSION_REL_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROV_SFP_EXEMPTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.IWI_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COMPASSIONATE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_COND_OPERATOR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_ISSUE_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FINANCE_TRANSACTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_CONDITION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESS_SESSION_RELATIONSHIP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.IWI TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_REBATE_RATE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COMPASSIONATE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GROUP_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_PERSONALISATION_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_COMPONENT_QN_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONDITION_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BUILD_TAG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NZQA_POSITION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_TEC_NZQA_QUAL_SUGGESTED_MAPPING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_ISSUE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_COMPONENT_LAYOUT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SCENARIO_STD_COMPONENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_SESSION_COMPONENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONDITION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITED_ITEM_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_APPLICATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOE_YEAR_LEVEL_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_COMPONENT_QUESTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MATERIALS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ROLE_AVLBL_REGION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_ISSUE_RESP_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_SERIAL_NUMBER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_CONDITION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITED_ITEM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COMPASSIONATE_ENTRY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_COURSE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LVL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NZQA_POSITION_TITLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STUDENT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ROLE_PANEL_MMBR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MATERIAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ALT_ID_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SOFTWARE_ID_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CASE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_GRADING_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FINANCIAL_DETAIL_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STATUS_REASON_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MATERIAL_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NZQA_ORG_UNIT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_APPLN_CONTACT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_CONTEXT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CASE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SCENARIO_QFN_COMPONENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COMPASSIONATE_PEER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.TE_REO_CIRCULAR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RISK_ISSUE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVISIONAL_QUALCHECK_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CASE_TYPE_STATUS_COMBO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_EVALUATION_CATG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_MAT_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACRD_INHERITANCE_MAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.TE_REO_INDICATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FILE_LOCATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_CAA_APP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACADEMIC_YEAR_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROV_QUALCHECK_RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LINE_ORIGIN_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JMS_MESSAGES TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RECONSIDERATION_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_REPORT_COMPONENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RECONSIDERATION_OPTION_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MATERIAL_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FIN_ASSIST_APPROVED TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROV_RISK_ISSUE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_PERFORMANCE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUALCHECK_RUN_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_MONITORING_CYCLE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LINE_SORT_ORDER_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARK_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ORG_ROLE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENDORSEMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JMS_TRANSACTIONS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_CRSE_QFN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MTL_CMPT_ADDL_VOL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERSONALISATION_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RULES_GROUP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.database_backup_date TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RECONSIDERATION_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_RELATIONSHIP_FROM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RECONSIDERATION_ENTRY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FIN_ASSIST_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACHIEVED_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PREREQUISITE_STRAND_NAME TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_VERSION_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROV_QUALCHECK_RESULT_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_MONITORING_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAGE_DISPLAY_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_CHECK_RESULT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_VER_ENDORSEMENT_VER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ROLE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JMS_USERS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_EVALUATION_COMBO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_REPORT_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_MAINTENANCE_RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FORBIDDEN_LEARNER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_ERROR_TOTAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCHOOL_QUALCHECK_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAGE_INPUT_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JMS_ROLES TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SESSION_PRE_PERS_ADDL_VOL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_SERIAL_NUMBER_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_SCOPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FORBIDDEN_PROVIDER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SCENARIO_COMP_STRAND TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RULES_GROUP_OPT_STD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CHECK_MOD_SELECT_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ECA_GENDER_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SPER_YTD_RECON_LEARNER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NZQA_EMPLOYEE_INFO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ROLE_COMBO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RISK_ISSUE_INDEX_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_RELATIONSHIP_TO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.GENDER_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ACHVD_COMP_PROGRESS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_UNIT_QUANTITY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JMS_SUBSCRIPTIONS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_CENTRE_ALLOC_RULE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_VERSION_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONTACT_MERGE_RUN_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITED_ITEM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURIER_PRICE_LIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ACHVD_COMP_PROG_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENDORSEMENT_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REVIEW_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.TIMERS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_CENTRE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RISK_ISSUE_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_VERSION_STD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_REPORT_JUDGEMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_COVERAGE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_audit_trans_dr TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONTACT_MERGE_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PSE_ELEMENT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.KEY_LOG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QRS_STG_APPLICATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ACHVD_COMP_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ROLE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REVIEW_REASON_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RELATIONSHIP_COMBO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_SESSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RELATIONSHIP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_ITEM_TYPE_RULE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.INPUT_BATCH_ERROR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DELIVERY_MODE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_RULE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_VERSION_PUB_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PSE_ACTIVITY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONTACT_MERGE_DETAIL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.tmp_delete_standard_input TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DELIVERY_SITE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_audit_trans_pdrpt2 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_FOCUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_PREQ_EXEMPTION_STRAND TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_SESSION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_test_rep TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_LEGAL_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DIGITAL_RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RELATIONSHIP_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_CLASS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITATION_EXTENSION_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GROUP_OWNER_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOE_NUMBER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JOINING_WORDS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_CONTRACT_ITEM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_ASSESSMENT_CENTRE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DEBTOR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_CONTEXT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RISK_CASE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ELECTRONIC_DOC_ORDER_ITEM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_CASE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SECTION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_REQUEST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_audit_trans_pdtec2 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STATS_ENTRY_PROVIDER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROCESS_TYPE_USED_BY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXT_TASK_PROV_CRIT_WORK_TABLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GROUP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STATS_KEY_INDICATOR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MARKER_PAGE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_ITEM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_FIELD_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_REG_APP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_CAPACITY_REASON_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXT_TASK_PROV_EXTN_WORK_TABLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ELECTRONIC_DOC_ORDER_REQUEST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QRS_STG_APPLN_QFN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_ITEM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSMT_SESS_COMP_MATERIAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_RULE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_SUBMISSION_DATE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_REASON_NOT_INV_BACK TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ACHIEVED TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_INSTANCE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ALLOCATION_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_REG_EXEMPTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GROUP_STD_MAPPING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_QUANTITY_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DIARY_EVENT_REASON TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ELECTRONIC_ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_PERSONALISATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RECOGNITION_BODY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_ROLE_STATUS_REASON TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STATS_ENTRY_PROVIDER_RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_WITHDRAWN_COURSE_WORK_TABLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_RATE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_audit_trans_web11 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AUDIT_TRANSACTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_INSTANCE_PARAMETER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_IA_RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_VERSION_QFN_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MARKER_PAGE_LINE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_ROLE_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DIARY_EVENT_UPDATE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_VERSION_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_REG_FOCUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ELECTRONIC_ORDER_ITEM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GROUP_CFN_MAPPING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_PREREQUISITE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SALUTATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_COUNT_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_ITERATION_MODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SUPP_RESULT_ALLOCATED TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CERTIFICATE_PRINT_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_DEREG_REASON_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_ASSESS_PLAN_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.HOOKFEE_OVERRIDE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_STATISTIC_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATOR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ZIM_PERSONALISATION_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DATABASE_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_RULE_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PSE_COST_CENTRE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_audit_trans_web12 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_PARAMETER_CONFIG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QA_APRV_RATING_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITED_ITEM_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_ASSESS_SUBJ_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_STATISTIC TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_HEAD_OFFICE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GROUP_COVERAGE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PSE_GL_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_ASSISTANCE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_TRANSFER_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURSE_VERSION_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.rs_dbversion TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_ASSESS_STD_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MEMO_OF_AGREEMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_MINOR_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_ATTENDANCE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERSON_CLAIM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_dba_test_rep_dr TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_ERROR_SEVERITY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DBA_REPL_CONTROL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_SYSTEM_FRAMEWORK TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.rs_lastcommit TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_MAT_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REFUND_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_RULE_STD_VER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FIN_TRANSACTION_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_PANEL_MEMBER_ST_REASON TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PSE_RESOURCE_GROUP_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_SPEC_ASSIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_ITEM_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SECONDARY_COURSE_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REGISTER_COMPLIANT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NZPOST_HUB TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FIN_TRANSACTION_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_PANEL_MEMBER_ST_R_COMBO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.TAX_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ACHIEVED_ENDORSEMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_ERROR_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FEE_STRUCTURE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_ASSESSMENT_STD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.rs_threads TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_REPORT_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_dba_test_rep_pdrpt2 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_ITEM_CATEGORY_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RUN_DIFFERENTIAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_CENTRE_WORKER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_STD_CONTEXT_MAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT_RECONCILIATION_RUN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RECONSIDERATION_RUN_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SRS_REQUEST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_ABSENT_SCRIPT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_REPORT_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QRS_APPLICANT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.OUTSTANDING_FEE_LODGEMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONTEXT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MATERIAL_CMPT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_REPORT_COMP_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_PANEL_ALLOCATION_GRP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESS_SESS_CATG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ALLOCATION_WORKTABLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QRS_INSTITUTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_ASSESSMENT_PLAN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_dba_test_rep_pdtec2 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_ITEM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MISCONDUCT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SECONDARY_COURSE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MRKR_BATCH_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_ENROLMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_PANEL_MEMBER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_STATUS_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_CHECK_RESULT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MISCONDUCT_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REPORT_ROLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.latency_test TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MRKR_PAGE_LINE_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LODGEMENT_DETAIL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.APPLICATION_SYSTEM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RECONSIDERATION_PAGE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REGION_GROUP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_SUMMARY_TOTAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_SEC_COURSE_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RES_STAT_VERIFICATION_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_CATEGORY_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_PANEL_MEMBER_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_dba_test_rep_web11 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MRKR_PAGE_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_CONTEXT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SQR_EVENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_SUMMARY_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MATCHING_RESULT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATOR_CAPACITY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COURIER_ZONE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SUPP_RESULT_UNALLOCATED TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_RQMT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.TEC_COURSE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MTL_CMPT_CHG_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MOD_FORBIDDEN_PROVIDER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MERGE_REQUEST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_SCOPE_ACTION_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.IR330 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_INPUT_MATCH TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SECONDARY_COURSE_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QRS_STG_APPLN_WORK_EXPERNCE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSISTANCE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_dba_test_rep_web12 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_CREDIT_CATG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_VERSION_CLASSIFICATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MERGE_REQUEST_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATOR_ROLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MTL_EVENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FEE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MARKER_PAGE_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RETURN_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MARKER_PAGE_RUN_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.DELIVERY_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_VERSION_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FINANCE_TRANSACTION_NSN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CE_CREDIT_ALLOCATION_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_CATEGORY_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SEC_COURSE_STD_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RUN_AFTER_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_VER_QA_EVENT_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MESSAGE_LISTENER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_dr_sysobjects TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONTEXT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_CENTRE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_COMMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERSONALISATION_RUN_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_RULE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ATTAINMENT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SSB_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_CONTEXT_MAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCHEDULE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_UNIT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MESSAGE_PROPS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QES_INSTITUTE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.GLBL_GROWTH_ALW_PRM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_DUAL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AWARD_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_DEPTH_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CLAIM_CONTRACT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SEVERITY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_ASSESSMENT_SUBJ TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MESSAGE_QUEUE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QES_INSTITUTE_SECTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COST_ALLOCATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.HOLD_STATE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_APPLICATION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_STATUS_MAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_next_id_dr TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.GLOBAL_BUFFER_PRM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ZERO_TO_99 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SEARCH_CONTEXT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORGANISATION_LOGO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.FINANCIAL_DETAIL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ALLOCATION_GROUP_EXCLUDED TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_MSG_REF TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MESSAGE_ROLES TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT_METHOD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MODERATION_REPORT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_ITEM_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_RELATIONSHIP_HEADER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_EXEMPTION_ROW TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXCLUDED_SEARCH_WORDS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_APP_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_DETAIL_SNAPSHOT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MESSAGE_SELECTOR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CURRENCY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.GLOBAL_NON_BUFFER_PRM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_next_id_pdrpt2 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_RELATIONSHIP_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_APP_DOC_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_MSG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_ITEM_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QES_INSTITUTE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_APP_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CUT_SCORE_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.REGION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NAME_DOB_VER_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_EXEMPTION_ITEM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NQAF_STG_CONTACT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_COP_APPRVL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_TX TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_next_id_web11 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_PROFILE_DOCUMENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.KEY_DATE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AWARDING_PROVIDER_MAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_ENROL_SPEC_ASSIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CERTIFICATE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NAME_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT_PRODUCT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKING_SCHEME_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QA_EVENT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_METHOD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.KEY_DATE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COM_METHOD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.OUTPUT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_COUNTER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EVALUATION_REASON_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PANEL_AD_REGION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCHEDULE_RESULT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_next_id_web12 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_APP_STD_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CODE_TABLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_ITEM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROXIMITY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_TYPE_OUTPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_REVIEW TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NSI_INSTRUCTION_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COP_APPRVL_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASS_SESS_COMP_ASSESS_METHOD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCH_PROG_LEVEL_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT_REFUND TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SAC_FILE_UPLOAD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_ID_CACHE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BREACH_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_MINOR_VERSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_APP_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CODE_TABLE_CATG TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NSI_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORDER_NOTE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SIZE_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_sqr_event_dr TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NEXT_ID TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CONTENT_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CODE_TABLE_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_POSTOFFICE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAID_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXCLUDED_ASSISTANCE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_COP_APPRVL_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MERGE_REQUEST_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.MARKER_SUBMISSION_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.text_events TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_SORT_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_EXEMPTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_SUBJECT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROV_NOTE_ISSUE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ASSESSMENT_SESSION_OVERRIDE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_USER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_SYSTEM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_APP_STATUS_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_RULE_STD_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RISK_ISS_IND_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_COMPONENT_LINK TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.dba_pxy_sqr_event_web1 TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MTL_FILE_INPUT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COP_SIGNATORY_STATUS_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_UPDATES TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_EXEMPTION_ITEM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_COM_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.JBM_ROLE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEARNER_SORT_CODE_UNALLOC TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_KVP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COUNTRY_RISK_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT_STATUS TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GRADING_SCHEME_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EXAM_MTL_CMPT_CHG_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COM_COMBO TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_APP_APP_MAPPING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_EVALUATION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.EX_MARKER_PAGE_LINE_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SMS_DIST_LIST_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GRAD_SCHEME_STD_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ADDL_VOLUME_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COM_MEDIUM TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCH_AUTHORITY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_EXCLUSION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_EXEMPTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COP_ACCOM_ARRANGED_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.WITHDRAWN_METHOD TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PAYMENT_STATUS_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_PUBLICATION_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_COMPONENT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.LEAVING_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NAME TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QRS_STG_APPLN_OTHER_DOC TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERSONALISATION_EXCEPTION TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SCH_DECILE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_QA_ACTIVITY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COP_ACCOM_OPTION_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ITEMS_LIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NZQA_BUSINESS_UNIT TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_GRADING_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NO_QFN_REASON_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COUNTRY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.STD_VERSION_PUB_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ITEMS_STD_VERSION_MAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.SDR_PROVIDER TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.COND_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_LOCALITY_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENDR_RESULT_DETAIL TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CRSE_ENDR_ACHV_STA_HIST TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ENTRY_PERSONALISATION_SET TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROVIDER_COP_ACCOM_ARRANGED_BY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.RESULT_RANKING TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.AMAP_VERSION_PUB_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PROCESS_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.NOTE_ISSUE_SUB_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QUAL_CHECK_STATUS_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_ITEMS_CFN_MAP TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.BATCH_FILE_TYPE_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ALT_ID TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.QFN_CHECK_RESULT_TYPE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.PERORG_ROLE_HISTORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ORG_EVALUATION TO eqa_user
go
EXEC sp_adduser 'eqa_vp_user','eqa_vp_user','read_only'
go
IF USER_ID('eqa_vp_user') IS NOT NULL
    PRINT '<<< CREATED USER eqa_vp_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER eqa_vp_user >>>'
go
GRANT INSERT ON dbo.AUDIT_TRANSACTION TO eqa_vp_user
go
GRANT INSERT ON dbo.NEXT_ID TO eqa_vp_user
go
GRANT DELETE ON dbo.AUDIT_TRANSACTION TO eqa_vp_user
go
GRANT DELETE ON dbo.NEXT_ID TO eqa_vp_user
go
GRANT UPDATE ON dbo.AUDIT_TRANSACTION TO eqa_vp_user
go
GRANT UPDATE ON dbo.NEXT_ID TO eqa_vp_user
go
EXEC sp_adduser 'eve_user','eve_user','read_only'
go
IF USER_ID('eve_user') IS NOT NULL
    PRINT '<<< CREATED USER eve_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER eve_user >>>'
go
GRANT INSERT ON dbo.QFN_ORGANISATION_ROLE TO eve_user
go
GRANT INSERT ON dbo.PERORG_ROLE TO eve_user
go
GRANT INSERT ON dbo.QFN_VERSION TO eve_user
go
GRANT INSERT ON dbo.AUDIT_TRANSACTION TO eve_user
go
GRANT INSERT ON dbo.QFN_MINOR_VERSION TO eve_user
go
GRANT INSERT ON dbo.SQR_EVENT TO eve_user
go
GRANT INSERT ON dbo.QFN_STATUS_HISTORY TO eve_user
go
GRANT INSERT ON dbo.QFN_VERSION_CLASSIFICATION TO eve_user
go
GRANT INSERT ON dbo.QFN_VERSION_STATUS_HISTORY TO eve_user
go
GRANT INSERT ON dbo.QFN TO eve_user
go
GRANT DELETE ON dbo.QFN_ORGANISATION_ROLE TO eve_user
go
GRANT DELETE ON dbo.PERORG_ROLE TO eve_user
go
GRANT DELETE ON dbo.QFN_VERSION TO eve_user
go
GRANT DELETE ON dbo.AUDIT_TRANSACTION TO eve_user
go
GRANT DELETE ON dbo.QFN_MINOR_VERSION TO eve_user
go
GRANT DELETE ON dbo.SQR_EVENT TO eve_user
go
GRANT DELETE ON dbo.QFN_STATUS_HISTORY TO eve_user
go
GRANT DELETE ON dbo.QFN_VERSION_CLASSIFICATION TO eve_user
go
GRANT DELETE ON dbo.QFN_VERSION_STATUS_HISTORY TO eve_user
go
GRANT DELETE ON dbo.QFN TO eve_user
go
GRANT UPDATE ON dbo.QFN_ORGANISATION_ROLE TO eve_user
go
GRANT UPDATE ON dbo.PERORG_ROLE TO eve_user
go
GRANT UPDATE ON dbo.QFN_VERSION TO eve_user
go
GRANT UPDATE ON dbo.AUDIT_TRANSACTION TO eve_user
go
GRANT UPDATE ON dbo.QFN_MINOR_VERSION TO eve_user
go
GRANT UPDATE ON dbo.SQR_EVENT TO eve_user
go
GRANT UPDATE ON dbo.QFN_STATUS_HISTORY TO eve_user
go
GRANT UPDATE ON dbo.QFN_VERSION_CLASSIFICATION TO eve_user
go
GRANT UPDATE ON dbo.QFN_VERSION_STATUS_HISTORY TO eve_user
go
GRANT UPDATE ON dbo.QFN TO eve_user
go
EXEC sp_adduser 'fim_macro_user','fim_macro_user','read_only'
go
IF USER_ID('fim_macro_user') IS NOT NULL
    PRINT '<<< CREATED USER fim_macro_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER fim_macro_user >>>'
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data TO fim_macro_user
go
GRANT EXECUTE ON dbo.SU_Check_Exist_Std_Version TO fim_macro_user
go
GRANT EXECUTE ON dbo.SU_Clear_Temp_Table TO fim_macro_user
go
GRANT EXECUTE ON dbo.QU_Check_Exist_Qual_Version TO fim_macro_user
go
GRANT EXECUTE ON dbo.QU_Clear_Qual_Update_Data TO fim_macro_user
go
GRANT EXECUTE ON dbo.QU_Load_Qual_Update_Data2 TO fim_macro_user
go
GRANT EXECUTE ON dbo.QU_Update_EQA_QMV TO fim_macro_user
go
GRANT EXECUTE ON dbo.SU_Update_EQA_SMV TO fim_macro_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data1 TO fim_macro_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data2 TO fim_macro_user
go
GRANT EXECUTE ON dbo.SU_Load_Standard_Update_Data3 TO fim_macro_user
go
GRANT EXECUTE ON dbo.SU_Validate_Accred_Option_Code TO fim_macro_user
go
EXEC sp_adduser 'gen_db_user','gen_db_user','public'
go
IF USER_ID('gen_db_user') IS NOT NULL
    PRINT '<<< CREATED USER gen_db_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER gen_db_user >>>'
go
EXEC sp_adduser 'rma_user','rma_user','rma_users'
go
IF USER_ID('rma_user') IS NOT NULL
    PRINT '<<< CREATED USER rma_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER rma_user >>>'
go
EXEC sp_adduser 'sitescope','sitescope','public'
go
IF USER_ID('sitescope') IS NOT NULL
    PRINT '<<< CREATED USER sitescope >>>'
ELSE
    PRINT '<<< FAILED CREATING USER sitescope >>>'
go
EXEC sp_adduser 'sqr_eqa_sync_user','sqr_eqa_sync_user','read_only'
go
IF USER_ID('sqr_eqa_sync_user') IS NOT NULL
    PRINT '<<< CREATED USER sqr_eqa_sync_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER sqr_eqa_sync_user >>>'
go
GRANT REFERENCES ON dbo.SQR_EVENT TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.QFN_ORGANISATION_ROLE TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.QFN_VERSION TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.QFN_MINOR_VERSION TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.SQR_EVENT TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.QFN_STATUS_HISTORY TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.QFN_VERSION_CLASSIFICATION TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.QFN_VERSION_STATUS_HISTORY TO sqr_eqa_sync_user
go
GRANT INSERT ON dbo.QFN TO sqr_eqa_sync_user
go
GRANT DELETE ON dbo.SQR_EVENT TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.QFN_ORGANISATION_ROLE TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.QFN_VERSION TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.QFN_MINOR_VERSION TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.SQR_EVENT TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.QFN_STATUS_HISTORY TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.QFN_VERSION_CLASSIFICATION TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.QFN_VERSION_STATUS_HISTORY TO sqr_eqa_sync_user
go
GRANT UPDATE ON dbo.QFN TO sqr_eqa_sync_user
go
GRANT DELETE STATISTICS ON dbo.SQR_EVENT TO sqr_eqa_sync_user
go
GRANT TRUNCATE TABLE ON dbo.SQR_EVENT TO sqr_eqa_sync_user
go
GRANT UPDATE STATISTICS ON dbo.SQR_EVENT TO sqr_eqa_sync_user
go
EXEC sp_adduser 'sqr_eqa_user','sqr_eqa_user','read_only'
go
IF USER_ID('sqr_eqa_user') IS NOT NULL
    PRINT '<<< CREATED USER sqr_eqa_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER sqr_eqa_user >>>'
go
GRANT INSERT ON dbo.QFN_ORGANISATION_ROLE TO sqr_eqa_user
go
GRANT INSERT ON dbo.PERORG_ROLE TO sqr_eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION TO sqr_eqa_user
go
GRANT INSERT ON dbo.AUDIT_TRANSACTION TO sqr_eqa_user
go
GRANT INSERT ON dbo.QFN_MINOR_VERSION TO sqr_eqa_user
go
GRANT INSERT ON dbo.SQR_EVENT TO sqr_eqa_user
go
GRANT INSERT ON dbo.QFN_STATUS_HISTORY TO sqr_eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION_CLASSIFICATION TO sqr_eqa_user
go
GRANT INSERT ON dbo.QFN_VERSION_STATUS_HISTORY TO sqr_eqa_user
go
GRANT INSERT ON dbo.QFN TO sqr_eqa_user
go
GRANT DELETE ON dbo.QFN_ORGANISATION_ROLE TO sqr_eqa_user
go
GRANT DELETE ON dbo.PERORG_ROLE TO sqr_eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION TO sqr_eqa_user
go
GRANT DELETE ON dbo.QFN_MINOR_VERSION TO sqr_eqa_user
go
GRANT DELETE ON dbo.SQR_EVENT TO sqr_eqa_user
go
GRANT DELETE ON dbo.QFN_STATUS_HISTORY TO sqr_eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION_CLASSIFICATION TO sqr_eqa_user
go
GRANT DELETE ON dbo.QFN_VERSION_STATUS_HISTORY TO sqr_eqa_user
go
GRANT DELETE ON dbo.QFN TO sqr_eqa_user
go
GRANT UPDATE ON dbo.QFN_ORGANISATION_ROLE TO sqr_eqa_user
go
GRANT UPDATE ON dbo.PERORG_ROLE TO sqr_eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION TO sqr_eqa_user
go
GRANT UPDATE ON dbo.AUDIT_TRANSACTION TO sqr_eqa_user
go
GRANT UPDATE ON dbo.QFN_MINOR_VERSION TO sqr_eqa_user
go
GRANT UPDATE ON dbo.SQR_EVENT TO sqr_eqa_user
go
GRANT UPDATE ON dbo.QFN_STATUS_HISTORY TO sqr_eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION_CLASSIFICATION TO sqr_eqa_user
go
GRANT UPDATE ON dbo.QFN_VERSION_STATUS_HISTORY TO sqr_eqa_user
go
GRANT UPDATE ON dbo.NEXT_ID TO sqr_eqa_user
go
GRANT UPDATE ON dbo.QFN TO sqr_eqa_user
go
GRANT EXECUTE ON dbo.get_next_id TO sqr_eqa_user
go
EXEC sp_adduser 'web_appserver_intranet','web_appserver_intranet','public'
go
IF USER_ID('web_appserver_intranet') IS NOT NULL
    PRINT '<<< CREATED USER web_appserver_intranet >>>'
ELSE
    PRINT '<<< FAILED CREATING USER web_appserver_intranet >>>'
go
GRANT SELECT ON dbo.w_markers TO web_appserver_intranet
go
GRANT SELECT ON dbo.w_providers TO web_appserver_intranet
go
GRANT SELECT ON dbo.w_all_moderation_standards TO web_appserver_intranet
go
GRANT SELECT ON dbo.w_providers_all_names TO web_appserver_intranet
go
GRANT SELECT ON dbo.WEB_STANDARDS TO web_appserver_intranet
go
GRANT SELECT ON dbo.w_all_providers TO web_appserver_intranet
go
GRANT SELECT ON dbo.w_all_standards TO web_appserver_intranet
go
GRANT SELECT ON dbo.w_people TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_region_by_code TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mods_assned_to_checkmod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_find_applicants TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_registered_quals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_prv_accred_domains_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_ass_plan_years TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_find_apps TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_related_perorg_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_rol_credits_achvd_in_yr TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_ass_subj_by_group_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_applcnts_agent TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_results_by_entry_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_rol_learner_by_name_dob TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assessment_plan TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_applcnts_web_user TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_sac_exam_processing_report_data TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_application TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps_by_year TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_results_for_class TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_application_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_std_subject_catorg_names TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_getall_lrnr_results_verif TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_applications TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_rol_learner_by_nsn TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_lrnrs_for_studyprov_by_name TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assessment_subject TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_apps_failed_sub TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_rol_quals_achvd TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_mod_is_allocated_for_period TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assigned_marker_codes TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_freq_qual_names TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_rol_stds_achvd TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assplan_legacy_notes TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_chkmod_rpts_for_chkmod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_qual TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_role_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_quals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_roles_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assplan_years_for_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_quals_by_name TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_sac_approvals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_check_mod_report_years TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_institution TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_sacs_for_entry TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_check_mod_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_institutions TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_secondary_providers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_checkmods_for_year TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_session_codes TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_chkmods_mod_id_by_yr TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_qualifications TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_classfn_by_number TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_supporting_docs TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_spec_assist_by_app_num TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_codetable_audit TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_work_experience TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_codetable_cols TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_standard TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_codetable_fk_vals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_standard_by_number TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_codetable_history TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_std_category_names TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_codetable_vals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_std_entry_cts_by_subj TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_codetables TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_std_entry_cts_by_type TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_com_combo TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_std_result_spread TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_communication_methods TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_com_get_all_eqa_settings TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ito_report_quals_pop_qual TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_compentry_by_comp TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_std_subject_names TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_country_by_code TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_edorg_accred_ext_extend TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_subj_entry_cts_by_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_course TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_edorg_accred_ext_select TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_subject TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_submission_dates TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_unaccredited_std TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_unallocated_providers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_db_ver_history TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_uninv_mod_group_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_empty_aplan_summaries TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_valid_sacs_for_std TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_vendors_customers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_verification_states TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrolment_yrs_for_lrnr TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_versions_of_standard TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_edorg_get_per_role_by_names TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_has_enrolment_for_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_has_enrolments TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrols_for_prov_by_std TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_has_role TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ins_audit_transaction TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ins_codetable_hist TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_exam_centre_police_vet TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ins_codetable_vals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_entry_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_insert_sac_upload_hist TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_ethnicities_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.proc_examInsertAllocationRule TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_is_marker TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_is_mod_role_in_use TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.proc_examGetAllocationRules TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_is_panel_std TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_exam_session TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_is_std_accredited_for_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_is_va_assistant TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_fees_by_enrolment_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ito_report_providers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_fin_assist_apps TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ito_report_quals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_groups_mod_stats TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ito_report_results TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_key_performance_report TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_list_all_exclusion_sac TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_list_all_status TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_iwis_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_enr_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_judgement_types TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_assplan_providers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_studyprov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_lrnrs_for_studyprov_by_nsn TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_marker_has_verif_entries TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_learners_for_course TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_marker_verif_entries TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_learners_for_nsifile TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_count_assess_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_marker_verif_providers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_learners_unpaid_fees TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_marker_verif_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_rpts_for_moderator TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_mod_has_capacity TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_lrnr_res_by_prov_std TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_mod_has_te_reo_reports TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.get_next_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_panel_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_moderation_subjects TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_mod_is_allocated_to_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_panels_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_ass_plan_subject_stats TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_panels_region TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_default_plan TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_prov_is_forbidden_for_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_reallocations TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.proc_examUpdateAllocationRule TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_report_compassionate TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_result_spread TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_ins_relationship TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_schedules TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_mods_for_check_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_scripts_alloc TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_existing_assess_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_materials_url_years TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_select_sac_upload_hist TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_emergency_broadcast_ecm_contact_list TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_allocation_stats TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_by_mod_role_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_capacity_reasons TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_count_final_prov_results TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_comps_for_rpt_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_check_mod_reports TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_del_entry_assistance TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_contact_changes TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_ass_plan_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_exists_spec_assist_app TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_oz_learner_std_result TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_declined_reasons TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assessment_standard TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_tert_prov_can_do_ass_plan TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_diary_events_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assessment_standards TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_assplan_systems TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_diary_events_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assplan_summaries TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_jdgmts_for_rpt_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_incomp_mod_rpts TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_upd_codetable_vals TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_not_inv_reasons TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_compass_by_enrolment TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_rep_status_events TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_resub TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_exam_session_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_report_statii TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_prov_mod_plan TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_forbidden_learners TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_report_types TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_report_years TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_learner_examsessions TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_group TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_learner_peers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_spec_assist_providers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_verif_data_entry_status TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_learners TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_verif_std_levels TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_std TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_learners_by_name TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_results_for_SA_class TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_role_statii TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_learners_by_nsn TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_com_upd_eqa_setting TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_reg_nqf_standards TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_learners_total TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_provider_by_moe_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_rpt_years_for_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_nsn TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_std_by_number TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_mod_reports TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_std_groups_by_year TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_mod_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_sys_for_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_moderators TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_checkmod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_panel_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_panels_by_standard TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_moderator_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_people TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_moderator_rpt_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_people_by_name TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_moderator_stats TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_previous_mod_reports TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_moderator_years TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_prov_lrnrs_by_batch TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mods_alloc_to_sys_year TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mods_allocated_to_sys TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_providers_by_moe_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_learner_by_name_or_dob TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mods_for_check_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_name TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_sa_lrnr_by_nsn TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mods_for_nat_mod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_moderator_provider_addresses TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_sample_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_non_check_mod_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_prov_lrnrs_by_name_dob TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_sample_stds_std TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_organisation_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_academic_years_for_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_sample_subjects TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries1 TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_panel_members TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_assessment_standard_by_assess_subj_and_std_num TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries2 TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_emergency_broadcast_contact_list TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_panel_standards TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_cmod_rpt_years_for_cmod TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_standard_keywords TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries3 TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_peers_by_compentry TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_contact TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrol_years_for_provider TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_standard_levels TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_people_for_provider TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_inst_contacts TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_standards TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.ExamsExamCentreAlloc TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_get_proposed_assess_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_person_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id_all TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_absent_script_report TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.ExamsExamCentreAllocMaster TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_person_by_userid TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrolments_with_results TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_person_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_active_mod_reports TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_preferred_com_method TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_num_applications TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_crse TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_active_mod_roles TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_principal_nominees TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_find_spec_assist_lrnrs TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_grouped TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_admission_learners TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_exam_centre_worker_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_countries TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_existing_assess_stds_tm TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_gender_codes TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_learner_api_service_get_standards TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_qrs_country_codes TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_provider_enrolments TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_learner_by_enrolment_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_mod_std_groups TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_provider_property TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_get_unsubmitted_apps TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_learners_examcode_report TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_moderators TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_providers TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_learners_for_billingfile TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_regions TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_ito_report_result_pop_stds TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_provs_for_mod_alloc TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_pinkies TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_sacs TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_prv_accred_subs_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_upd_institution TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_marker_panels_ad_region TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_all_salutations TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_prv_accreds_file TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.p_qrs_upd_inst_qual TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_materials_url_submissions TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_aplan_diary_events TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_prv_name_by_moe_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_contact_change_dets TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_ass_plan_for_prov TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_qualification TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_mod_rpts_for_auto_alloc TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_ass_plan_statii TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_historical_mod_results TO web_appserver_intranet
go
EXEC sp_adduser 'web_appserver_secure','web_appserver_secure','read_only'
go
IF USER_ID('web_appserver_secure') IS NOT NULL
    PRINT '<<< CREATED USER web_appserver_secure >>>'
ELSE
    PRINT '<<< FAILED CREATING USER web_appserver_secure >>>'
go
GRANT EXECUTE ON dbo.w_get_registered_quals TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_ass_plan_years TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_sac_exam_processing_report_data TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps_by_year TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_results_for_class TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_getall_lrnr_results_verif TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_get_chkmod_rpts_for_chkmod TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_role_by_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_sec_learn_data_other_achieve_detail TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_roles_by_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_seclearndata_ncea_detail_wdentries TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_assplan_years_for_prov TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_check_mod_report_years TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_sacs_for_entry TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_secondary_providers TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_spec_assist_by_app_num TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_standard TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_std_result_spread TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_com_get_all_eqa_settings TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_course TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_verification_states TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_versions_of_standard TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_edorg_get_per_role_by_names TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_exam_centre_police_vet TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_entry_by_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_insert_sac_upload_hist TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_sec_learn_data_qual_detail TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_key_performance_report TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_list_all_exclusion_sac TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_list_all_status TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_enr_prov TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_judgement_types TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_assplan_providers TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_lrnr_examsess_by_studyprov TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_learners_for_course TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_count_assess_stds TO web_appserver_secure
go
GRANT EXECUTE ON dbo.proc_sper_srs_ce_res TO web_appserver_secure
go
GRANT EXECUTE ON dbo.proc_sper_srs_ce_summ TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_all_rpts_for_moderator TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_get_moderation_subjects TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_get_ass_plan_subject_stats TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_get_default_plan TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_report_compassionate TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_marker_result_spread TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_ins_relationship TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_get_mods_for_check_mod TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_seclearndata_ncea_detail TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_get_existing_assess_stds TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_materials_url_years TO web_appserver_secure
go
GRANT EXECUTE ON dbo.proc_teo_mod_plan TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mod_comps_for_rpt_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_check_mod_reports TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_del_entry_assistance TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_ass_plan_stds TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_oz_learner_std_result TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_assessment_standard TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_tert_prov_can_do_ass_plan TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_assessment_standards TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mod_diary_events_prov TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_assplan_summaries TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_incomp_mod_rpts TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_compass_by_enrolment TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_exam_session_stds TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_prov_mod_plan TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mod_report_years TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_learner_examsessions TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_spec_assist_apps TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_spec_assist_providers TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mod_reports_for_std TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_com_upd_eqa_setting TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_reg_nqf_standards TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_provider_by_moe_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mod_rpt_years_for_mod TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_nsn TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_mod_reports TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_checkmod TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mod_years_for_mod TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_moderator_rpt_by_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_people_by_name TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_previous_mod_reports TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_moderator_years TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_providers_by_moe_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_mods_for_check_mod TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_lrnrs_for_prov_by_name TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_moderator_provider_addresses TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_find_sample_stds_std TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries1 TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_assessment_standard_by_assess_subj_and_std_num TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries2 TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries3 TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_people_for_provider TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.p_get_proposed_assess_stds TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_enrolments_by_learner_id_all TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_person_roles TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_crse TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_principal_nominees TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_entries_by_enrolment_id_grouped TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_qrs_country_codes TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_provider_property TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_entries TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_lrnr_attendance_pinkies TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_all_sacs TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_materials_url_submissions TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_prv_name_by_moe_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_qualification TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_historical_mod_results TO web_appserver_secure
go
EXEC sp_adduser 'web_transfer','web_transfer','read_only'
go
IF USER_ID('web_transfer') IS NOT NULL
    PRINT '<<< CREATED USER web_transfer >>>'
ELSE
    PRINT '<<< FAILED CREATING USER web_transfer >>>'
go
GRANT EXECUTE ON dbo.proc_rma_web_supp_unallocated TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_role_by_id TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_roles_by_id TO web_transfer
go
GRANT EXECUTE ON dbo.p_com_get_all_eqa_settings TO web_transfer
go
GRANT EXECUTE ON dbo.w_ito_report_quals_pop_qual TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_ct_amap_web_ver TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_ct_qual_web_ver TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_ct_stds_web_ver TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_unallocated_providers TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_vendors_customers TO web_transfer
go
GRANT EXECUTE ON dbo.w_ins_audit_transaction TO web_transfer
go
GRANT EXECUTE ON dbo.proc_examInsertAllocationRule TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_exam_nonclashes TO web_transfer
go
GRANT EXECUTE ON dbo.proc_examGetAllocationRules TO web_transfer
go
GRANT EXECUTE ON dbo.w_ito_report_providers TO web_transfer
go
GRANT EXECUTE ON dbo.w_ito_report_quals TO web_transfer
go
GRANT EXECUTE ON dbo.w_ito_report_results TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_itos TO web_transfer
go
GRANT EXECUTE ON dbo.proc_rma_web_store_and_forward TO web_transfer
go
GRANT EXECUTE ON dbo.get_next_id TO web_transfer
go
GRANT EXECUTE ON dbo.proc_examUpdateAllocationRule TO web_transfer
go
GRANT EXECUTE ON dbo.w_stats_assessment_sessions TO web_transfer
go
GRANT EXECUTE ON dbo.w_stats_enrolments TO web_transfer
go
GRANT EXECUTE ON dbo.w_stats_entries TO web_transfer
go
GRANT EXECUTE ON dbo.w_stats_ext_entries_variance TO web_transfer
go
GRANT EXECUTE ON dbo.w_stats_standards TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_mod_contact_changes TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_oz_learner_std_result TO web_transfer
go
GRANT EXECUTE ON dbo.w_stats_verif_results TO web_transfer
go
GRANT EXECUTE ON dbo.w_truncate_stats TO web_transfer
go
GRANT EXECUTE ON dbo.w_upd_amap_web_ver TO web_transfer
go
GRANT EXECUTE ON dbo.w_upd_ct_stds_web_ver TO web_transfer
go
GRANT EXECUTE ON dbo.w_upd_qual_web_ver TO web_transfer
go
GRANT EXECUTE ON dbo.w_upd_stats_expired_ia_stds TO web_transfer
go
GRANT EXECUTE ON dbo.w_upd_stats_sess_other_sch TO web_transfer
go
GRANT EXECUTE ON dbo.w_update_stats TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_provider_by_moe_id TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_mod_sys_for_mod TO web_transfer
go
GRANT EXECUTE ON dbo.transfer_erlpCandidate_subject TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_preferred_com_method TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_active_mod_roles TO web_transfer
go
GRANT EXECUTE ON dbo.p_learner_api_service_get_standards TO web_transfer
go
GRANT EXECUTE ON dbo.w_ito_report_result_pop_stds TO web_transfer
go
GRANT EXECUTE ON dbo.proc_rma_web_supp_allocated TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_prv_name_by_moe_id TO web_transfer
go
GRANT EXECUTE ON dbo.w_get_mod_contact_change_dets TO web_transfer
go
EXEC sp_adduser 'zim_user','zim_user','public'
go
IF USER_ID('zim_user') IS NOT NULL
    PRINT '<<< CREATED USER zim_user >>>'
ELSE
    PRINT '<<< FAILED CREATING USER zim_user >>>'
go
GRANT REFERENCES ON dbo.NEXT_ID TO zim_user
go
GRANT SELECT ON dbo.NEXT_ID TO zim_user
go
GRANT INSERT ON dbo.NEXT_ID TO zim_user
go
GRANT DELETE ON dbo.NEXT_ID TO zim_user
go
GRANT UPDATE ON dbo.NEXT_ID TO zim_user
go
GRANT DELETE STATISTICS ON dbo.NEXT_ID TO zim_user
go
GRANT TRUNCATE TABLE ON dbo.NEXT_ID TO zim_user
go
GRANT UPDATE STATISTICS ON dbo.NEXT_ID TO zim_user
go
GRANT TRANSFER TABLE ON dbo.NEXT_ID TO zim_user
go
