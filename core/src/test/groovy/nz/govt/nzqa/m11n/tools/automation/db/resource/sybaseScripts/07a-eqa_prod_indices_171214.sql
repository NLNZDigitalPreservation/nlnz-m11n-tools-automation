USE eqa_prod
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.latency_test') AND name='idx_primary_update_date')
BEGIN
    DROP INDEX latency_test.idx_primary_update_date
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.latency_test') AND name='idx_primary_update_date')
        PRINT '<<< FAILED DROPPING INDEX dbo.latency_test.idx_primary_update_date >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.latency_test.idx_primary_update_date >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_sqr_event_web1') AND name='idx_sqr_event_date')
BEGIN
    DROP INDEX dba_pxy_sqr_event_web1.idx_sqr_event_date
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_sqr_event_web1') AND name='idx_sqr_event_date')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_sqr_event_web1.idx_sqr_event_date >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_sqr_event_web1.idx_sqr_event_date >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_sqr_event_dr') AND name='idx_sqr_event_date')
BEGIN
    DROP INDEX dba_pxy_sqr_event_dr.idx_sqr_event_date
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_sqr_event_dr') AND name='idx_sqr_event_date')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_sqr_event_dr.idx_sqr_event_date >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_sqr_event_dr.idx_sqr_event_date >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='idx_audit_transaction_02')
BEGIN
    DROP INDEX dba_pxy_audit_trans_pdtec2.idx_audit_transaction_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='idx_audit_transaction_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='idx_audit_transaction_01')
BEGIN
    DROP INDEX dba_pxy_audit_trans_pdtec2.idx_audit_transaction_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='idx_audit_transaction_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROL_SPEC_ASSIST') AND name='repl_1739891726_250')
BEGIN
    DROP INDEX LEARNER_ENROL_SPEC_ASSIST.repl_1739891726_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROL_SPEC_ASSIST') AND name='repl_1739891726_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.repl_1739891726_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.repl_1739891726_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_local_id')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_local_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_local_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_local_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_local_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_fin_assist_approved_code')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_fin_assist_approved_code
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_fin_assist_approved_code')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_fin_assist_approved_code >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_fin_assist_approved_code >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_14')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_14
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_14')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_14 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_14 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_13')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_13
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_13')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_13 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_13 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_12')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_12
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_12')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_12 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_12 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_11')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_11
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_11')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_11 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_11 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_06')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_06
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_06')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_06 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_06 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_05')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_02')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_01')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_10')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_10
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_10')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_10 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_10 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_09')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_09
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_09')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_09 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_09 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_08')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_08
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_08')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_08 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_08 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='idx_learner_assess_centre_02')
BEGIN
    DROP INDEX LEARNER_ASSESSMENT_CENTRE.idx_learner_assess_centre_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='idx_learner_assess_centre_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_learner_assess_centre_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_learner_assess_centre_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='idx_lac_01')
BEGIN
    DROP INDEX LEARNER_ASSESSMENT_CENTRE.idx_lac_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='idx_lac_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_lac_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_lac_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_06')
BEGIN
    DROP INDEX LEARNER.idx_learner_06
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_06')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER.idx_learner_06 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER.idx_learner_06 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_05')
BEGIN
    DROP INDEX LEARNER.idx_learner_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER.idx_learner_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER.idx_learner_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_04')
BEGIN
    DROP INDEX LEARNER.idx_learner_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER.idx_learner_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER.idx_learner_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_03')
BEGIN
    DROP INDEX LEARNER.idx_learner_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER.idx_learner_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER.idx_learner_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JMS_MESSAGES') AND name='IDX_JMS_MESSAGES_02')
BEGIN
    DROP INDEX JMS_MESSAGES.IDX_JMS_MESSAGES_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JMS_MESSAGES') AND name='IDX_JMS_MESSAGES_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JMS_MESSAGES') AND name='IDX_JMS_MESSAGES_01')
BEGIN
    DROP INDEX JMS_MESSAGES.IDX_JMS_MESSAGES_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JMS_MESSAGES') AND name='IDX_JMS_MESSAGES_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG_REF') AND name='JBM_MSG_REF_TX')
BEGIN
    DROP INDEX JBM_MSG_REF.JBM_MSG_REF_TX
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG_REF') AND name='JBM_MSG_REF_TX')
        PRINT '<<< FAILED DROPPING INDEX dbo.JBM_MSG_REF.JBM_MSG_REF_TX >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.JBM_MSG_REF.JBM_MSG_REF_TX >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG') AND name='repl_1676295192_250')
BEGIN
    DROP INDEX JBM_MSG.repl_1676295192_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG') AND name='repl_1676295192_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.JBM_MSG.repl_1676295192_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.JBM_MSG.repl_1676295192_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG') AND name='repl_1676295192_249')
BEGIN
    DROP INDEX JBM_MSG.repl_1676295192_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG') AND name='repl_1676295192_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.JBM_MSG.repl_1676295192_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.JBM_MSG.repl_1676295192_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.IWI') AND name='IDX_IWI_01')
BEGIN
    DROP INDEX IWI.IDX_IWI_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.IWI') AND name='IDX_IWI_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.IWI.IDX_IWI_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.IWI.IDX_IWI_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_input_batch_error_03')
BEGIN
    DROP INDEX INPUT_BATCH_ERROR.idx_input_batch_error_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_input_batch_error_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_INPUT_BATCH_ERROR_05')
BEGIN
    DROP INDEX INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_INPUT_BATCH_ERROR_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_INPUT_BATCH_ERROR_04')
BEGIN
    DROP INDEX INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_INPUT_BATCH_ERROR_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_LEARNER_INPUT_ID')
BEGIN
    DROP INDEX INPUT_BATCH_ERROR.IDX_LEARNER_INPUT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_LEARNER_INPUT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.INPUT_BATCH_ERROR.IDX_LEARNER_INPUT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.INPUT_BATCH_ERROR.IDX_LEARNER_INPUT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_BATCH_REF')
BEGIN
    DROP INDEX INPUT_BATCH_ERROR.IDX_BATCH_REF
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_BATCH_REF')
        PRINT '<<< FAILED DROPPING INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_REF >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_REF >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_BATCH_INPUT_ID')
BEGIN
    DROP INDEX INPUT_BATCH_ERROR.IDX_BATCH_INPUT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_BATCH_INPUT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_INPUT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_INPUT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FORBIDDEN_PROVIDER') AND name='idx_forbidden_provider_01')
BEGIN
    DROP INDEX FORBIDDEN_PROVIDER.idx_forbidden_provider_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FORBIDDEN_PROVIDER') AND name='idx_forbidden_provider_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.FORBIDDEN_PROVIDER.idx_forbidden_provider_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FORBIDDEN_PROVIDER.idx_forbidden_provider_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCIAL_DETAIL') AND name='idx_FINANCIAL_DETAIL_01')
BEGIN
    DROP INDEX FINANCIAL_DETAIL.idx_FINANCIAL_DETAIL_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCIAL_DETAIL') AND name='idx_FINANCIAL_DETAIL_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCIAL_DETAIL.idx_FINANCIAL_DETAIL_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCIAL_DETAIL.idx_FINANCIAL_DETAIL_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='tix_aud_FINANCE_TRANSACTION')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.tix_aud_FINANCE_TRANSACTION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='tix_aud_FINANCE_TRANSACTION')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.tix_aud_FINANCE_TRANSACTION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.tix_aud_FINANCE_TRANSACTION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_finance_transaction_07')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.idx_finance_transaction_07
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_finance_transaction_07')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_07 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_07 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_finance_transaction_02')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.idx_finance_transaction_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_finance_transaction_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_06')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_06
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_06')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_06 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_06 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_05')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_03')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_01')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='IDX_FINANCE_TRANSACTION_04')
BEGIN
    DROP INDEX FINANCE_TRANSACTION.IDX_FINANCE_TRANSACTION_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='IDX_FINANCE_TRANSACTION_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION.IDX_FINANCE_TRANSACTION_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION.IDX_FINANCE_TRANSACTION_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_LINE_INPUT') AND name='idx_ex_mrkr_page_line_input_02')
BEGIN
    DROP INDEX EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_LINE_INPUT') AND name='idx_ex_mrkr_page_line_input_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_LINE_INPUT') AND name='idx_ex_mrkr_page_line_input_01')
BEGIN
    DROP INDEX EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_LINE_INPUT') AND name='idx_ex_mrkr_page_line_input_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_INPUT') AND name='idx_ex_mrkr_page_input_02')
BEGIN
    DROP INDEX EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_INPUT') AND name='idx_ex_mrkr_page_input_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_INPUT') AND name='idx_ex_mrkr_page_input_01')
BEGIN
    DROP INDEX EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_INPUT') AND name='idx_ex_mrkr_page_input_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE_HISTORY') AND name='idx_EX_MARKER_PAGE_LINE_HIST_2')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_2
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE_HISTORY') AND name='idx_EX_MARKER_PAGE_LINE_HIST_2')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_2 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_2 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE_HISTORY') AND name='idx_EX_MARKER_PAGE_LINE_HIST_1')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_1
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE_HISTORY') AND name='idx_EX_MARKER_PAGE_LINE_HIST_1')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_1 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_1 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_08')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_08
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_08')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_08 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_08 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_07')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_07
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_07')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_07 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_07 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_06')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_06
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_06')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_06 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_06 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_05')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_04')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_03')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_02')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_01')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_03')
BEGIN
    DROP INDEX EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_02')
BEGIN
    DROP INDEX EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_01')
BEGIN
    DROP INDEX EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_06')
BEGIN
    DROP INDEX EX_MARKER_PAGE.idx_ex_marker_page_06
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_06')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_06 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_06 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_05')
BEGIN
    DROP INDEX EX_MARKER_PAGE.idx_ex_marker_page_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_04')
BEGIN
    DROP INDEX EX_MARKER_PAGE.idx_ex_marker_page_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_03')
BEGIN
    DROP INDEX EX_MARKER_PAGE.idx_ex_marker_page_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_02')
BEGIN
    DROP INDEX EX_MARKER_PAGE.idx_ex_marker_page_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_FILE_INPUT') AND name='idx_exam_mtl_file_input_02')
BEGIN
    DROP INDEX EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_FILE_INPUT') AND name='idx_exam_mtl_file_input_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_FILE_INPUT') AND name='idx_exam_mtl_file_input_01')
BEGIN
    DROP INDEX EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_FILE_INPUT') AND name='idx_exam_mtl_file_input_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_CMPT_ADDL_VOL') AND name='idx_exam_mtl_cmpt_addl_vol_centre_id')
BEGIN
    DROP INDEX EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_centre_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_CMPT_ADDL_VOL') AND name='idx_exam_mtl_cmpt_addl_vol_centre_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_centre_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_centre_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_CMPT_ADDL_VOL') AND name='idx_exam_mtl_cmpt_addl_vol_01')
BEGIN
    DROP INDEX EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_CMPT_ADDL_VOL') AND name='idx_exam_mtl_cmpt_addl_vol_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL_CMPT') AND name='idx_exam_material_cmpt_01')
BEGIN
    DROP INDEX EXAM_MATERIAL_CMPT.idx_exam_material_cmpt_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL_CMPT') AND name='idx_exam_material_cmpt_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MATERIAL_CMPT.idx_exam_material_cmpt_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MATERIAL_CMPT.idx_exam_material_cmpt_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL_CMPT') AND name='idx_EXAM_MATERIAL_CMPT_02')
BEGIN
    DROP INDEX EXAM_MATERIAL_CMPT.idx_EXAM_MATERIAL_CMPT_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL_CMPT') AND name='idx_EXAM_MATERIAL_CMPT_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MATERIAL_CMPT.idx_EXAM_MATERIAL_CMPT_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MATERIAL_CMPT.idx_EXAM_MATERIAL_CMPT_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIALS_CODE') AND name='idx_EXAM_MATERIALS_CODE_01')
BEGIN
    DROP INDEX EXAM_MATERIALS_CODE.idx_EXAM_MATERIALS_CODE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIALS_CODE') AND name='idx_EXAM_MATERIALS_CODE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MATERIALS_CODE.idx_EXAM_MATERIALS_CODE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MATERIALS_CODE.idx_EXAM_MATERIALS_CODE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_CENTRE_ALLOC_RULE') AND name='idx_exam_centre_alloc_rule_prev_centre_id')
BEGIN
    DROP INDEX EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_prev_centre_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_CENTRE_ALLOC_RULE') AND name='idx_exam_centre_alloc_rule_prev_centre_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_prev_centre_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_prev_centre_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_CENTRE_ALLOC_RULE') AND name='idx_exam_centre_alloc_rule_centre_id')
BEGIN
    DROP INDEX EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_centre_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_CENTRE_ALLOC_RULE') AND name='idx_exam_centre_alloc_rule_centre_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_centre_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_centre_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_04')
BEGIN
    DROP INDEX EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_03')
BEGIN
    DROP INDEX EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_02')
BEGIN
    DROP INDEX EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_01')
BEGIN
    DROP INDEX EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ABSENT_SCRIPT') AND name='IDX_EXAM_ABSENT_SCRIPT_02')
BEGIN
    DROP INDEX EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ABSENT_SCRIPT') AND name='IDX_EXAM_ABSENT_SCRIPT_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ABSENT_SCRIPT') AND name='IDX_EXAM_ABSENT_SCRIPT_01')
BEGIN
    DROP INDEX EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ABSENT_SCRIPT') AND name='IDX_EXAM_ABSENT_SCRIPT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ETHNICITY') AND name='IDX_ETHNICITY_01')
BEGIN
    DROP INDEX ETHNICITY.IDX_ETHNICITY_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ETHNICITY') AND name='IDX_ETHNICITY_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ETHNICITY.IDX_ETHNICITY_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ETHNICITY.IDX_ETHNICITY_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EQA_SETTING_HISTORY') AND name='idx_eqa_setting_history_01')
BEGIN
    DROP INDEX EQA_SETTING_HISTORY.idx_eqa_setting_history_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EQA_SETTING_HISTORY') AND name='idx_eqa_setting_history_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EQA_SETTING_HISTORY.idx_eqa_setting_history_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EQA_SETTING_HISTORY.idx_eqa_setting_history_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SPEC_ASSIST') AND name='idx_ENTRY_SPEC_ASSIST_status_code')
BEGIN
    DROP INDEX ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_status_code
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SPEC_ASSIST') AND name='idx_ENTRY_SPEC_ASSIST_status_code')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_status_code >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_status_code >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SPEC_ASSIST') AND name='idx_ENTRY_SPEC_ASSIST_01')
BEGIN
    DROP INDEX ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SPEC_ASSIST') AND name='idx_ENTRY_SPEC_ASSIST_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SEC_COURSE_HIST') AND name='idx_entry_sec_course_hist_03')
BEGIN
    DROP INDEX ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SEC_COURSE_HIST') AND name='idx_entry_sec_course_hist_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SEC_COURSE_HIST') AND name='idx_entry_sec_course_hist_01')
BEGIN
    DROP INDEX ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SEC_COURSE_HIST') AND name='idx_entry_sec_course_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_REVIEW') AND name='idx_entry_review_01')
BEGIN
    DROP INDEX ENTRY_REVIEW.idx_entry_review_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_REVIEW') AND name='idx_entry_review_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_REVIEW.idx_entry_review_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_REVIEW.idx_entry_review_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_04')
BEGIN
    DROP INDEX ENTRY_PERSONALISATION.idx_ep_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_03')
BEGIN
    DROP INDEX ENTRY_PERSONALISATION.idx_ep_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_02')
BEGIN
    DROP INDEX ENTRY_PERSONALISATION.idx_ep_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_01')
BEGIN
    DROP INDEX ENTRY_PERSONALISATION.idx_ep_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_recons_entry_01')
BEGIN
    DROP INDEX ENTRY.idx_recons_entry_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_recons_entry_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_recons_entry_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_recons_entry_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_scourse_id')
BEGIN
    DROP INDEX ENTRY.idx_entry_scourse_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_scourse_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_scourse_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_scourse_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_12')
BEGIN
    DROP INDEX ENTRY.idx_entry_12
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_12')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_12 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_12 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_11')
BEGIN
    DROP INDEX ENTRY.idx_entry_11
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_11')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_11 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_11 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_10')
BEGIN
    DROP INDEX ENTRY.idx_entry_10
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_10')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_10 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_10 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_09')
BEGIN
    DROP INDEX ENTRY.idx_entry_09
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_09')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_09 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_09 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_08')
BEGIN
    DROP INDEX ENTRY.idx_entry_08
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_08')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_08 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_08 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_07')
BEGIN
    DROP INDEX ENTRY.idx_entry_07
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_07')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_07 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_07 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_05')
BEGIN
    DROP INDEX ENTRY.idx_entry_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_04')
BEGIN
    DROP INDEX ENTRY.idx_entry_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_03')
BEGIN
    DROP INDEX ENTRY.idx_entry_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_01')
BEGIN
    DROP INDEX ENTRY.idx_entry_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENROLMENT_FEE') AND name='idx_enrolment_fee_01')
BEGIN
    DROP INDEX ENROLMENT_FEE.idx_enrolment_fee_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENROLMENT_FEE') AND name='idx_enrolment_fee_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENROLMENT_FEE.idx_enrolment_fee_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENROLMENT_FEE.idx_enrolment_fee_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENDR_RESULT_DETAIL') AND name='idx_endr_result_detail_01')
BEGIN
    DROP INDEX ENDR_RESULT_DETAIL.idx_endr_result_detail_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENDR_RESULT_DETAIL') AND name='idx_endr_result_detail_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENDR_RESULT_DETAIL.idx_endr_result_detail_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENDR_RESULT_DETAIL.idx_endr_result_detail_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DOUBLE_DIP_STD_MAPPING') AND name='idx_DOUBLE_DIP_STD_MAPPING_01')
BEGIN
    DROP INDEX DOUBLE_DIP_STD_MAPPING.idx_DOUBLE_DIP_STD_MAPPING_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DOUBLE_DIP_STD_MAPPING') AND name='idx_DOUBLE_DIP_STD_MAPPING_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.DOUBLE_DIP_STD_MAPPING.idx_DOUBLE_DIP_STD_MAPPING_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DOUBLE_DIP_STD_MAPPING.idx_DOUBLE_DIP_STD_MAPPING_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_std_number')
BEGIN
    DROP INDEX DIGITAL_RESULT.idx_digital_result_std_number
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_std_number')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIGITAL_RESULT.idx_digital_result_std_number >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIGITAL_RESULT.idx_digital_result_std_number >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_moe')
BEGIN
    DROP INDEX DIGITAL_RESULT.idx_digital_result_moe
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_moe')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIGITAL_RESULT.idx_digital_result_moe >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIGITAL_RESULT.idx_digital_result_moe >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_learner_nsn')
BEGIN
    DROP INDEX DIGITAL_RESULT.idx_digital_result_learner_nsn
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_learner_nsn')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIGITAL_RESULT.idx_digital_result_learner_nsn >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIGITAL_RESULT.idx_digital_result_learner_nsn >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_entry')
BEGIN
    DROP INDEX DIGITAL_RESULT.idx_digital_result_entry
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_entry')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIGITAL_RESULT.idx_digital_result_entry >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIGITAL_RESULT.idx_digital_result_entry >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_ENTRY') AND name='idx_digital_entry_result_id')
BEGIN
    DROP INDEX DIGITAL_ENTRY.idx_digital_entry_result_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_ENTRY') AND name='idx_digital_entry_result_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIGITAL_ENTRY.idx_digital_entry_result_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIGITAL_ENTRY.idx_digital_entry_result_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_05')
BEGIN
    DROP INDEX DIARY_EVENT.idx_diary_event_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIARY_EVENT.idx_diary_event_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIARY_EVENT.idx_diary_event_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_03')
BEGIN
    DROP INDEX DIARY_EVENT.idx_diary_event_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIARY_EVENT.idx_diary_event_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIARY_EVENT.idx_diary_event_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_02')
BEGIN
    DROP INDEX DIARY_EVENT.idx_diary_event_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIARY_EVENT.idx_diary_event_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIARY_EVENT.idx_diary_event_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='IDX_DIARY_EVENT_04')
BEGIN
    DROP INDEX DIARY_EVENT.IDX_DIARY_EVENT_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='IDX_DIARY_EVENT_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIARY_EVENT.IDX_DIARY_EVENT_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIARY_EVENT.IDX_DIARY_EVENT_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DEAD_MESSAGE_QUEUE') AND name='repl_60524218_250')
BEGIN
    DROP INDEX DEAD_MESSAGE_QUEUE.repl_60524218_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DEAD_MESSAGE_QUEUE') AND name='repl_60524218_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.DEAD_MESSAGE_QUEUE.repl_60524218_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DEAD_MESSAGE_QUEUE.repl_60524218_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_SOP') AND name='idx_crse_endr_sop_01')
BEGIN
    DROP INDEX CRSE_ENDR_SOP.idx_crse_endr_sop_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_SOP') AND name='idx_crse_endr_sop_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CRSE_ENDR_SOP.idx_crse_endr_sop_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CRSE_ENDR_SOP.idx_crse_endr_sop_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RESULT') AND name='idx_crse_endr_result_02')
BEGIN
    DROP INDEX CRSE_ENDR_RESULT.idx_crse_endr_result_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RESULT') AND name='idx_crse_endr_result_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RESULT') AND name='idx_crse_endr_result_01')
BEGIN
    DROP INDEX CRSE_ENDR_RESULT.idx_crse_endr_result_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RESULT') AND name='idx_crse_endr_result_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_EXEMPTION') AND name='idx_crse_endr_exemption_01')
BEGIN
    DROP INDEX CRSE_ENDR_EXEMPTION.idx_crse_endr_exemption_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_EXEMPTION') AND name='idx_crse_endr_exemption_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CRSE_ENDR_EXEMPTION.idx_crse_endr_exemption_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CRSE_ENDR_EXEMPTION.idx_crse_endr_exemption_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_ACHV_STA_HIST') AND name='idx_crse_endr_achv_sta_hist_01')
BEGIN
    DROP INDEX CRSE_ENDR_ACHV_STA_HIST.idx_crse_endr_achv_sta_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_ACHV_STA_HIST') AND name='idx_crse_endr_achv_sta_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CRSE_ENDR_ACHV_STA_HIST.idx_crse_endr_achv_sta_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CRSE_ENDR_ACHV_STA_HIST.idx_crse_endr_achv_sta_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_STD') AND name='IDX_COURSE_VER_STD_CRSE_VER_ID')
BEGIN
    DROP INDEX COURSE_VERSION_STD.IDX_COURSE_VER_STD_CRSE_VER_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_STD') AND name='IDX_COURSE_VER_STD_CRSE_VER_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION_STD.IDX_COURSE_VER_STD_CRSE_VER_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION_STD.IDX_COURSE_VER_STD_CRSE_VER_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_STATUS_HIST') AND name='idx_course_ver_status_hist_01')
BEGIN
    DROP INDEX COURSE_VERSION_STATUS_HIST.idx_course_ver_status_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_STATUS_HIST') AND name='idx_course_ver_status_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION_STATUS_HIST.idx_course_ver_status_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION_STATUS_HIST.idx_course_ver_status_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_QFN_VERSION') AND name='idx1_COURSE_VERSION_QFN_VER_02')
BEGIN
    DROP INDEX COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_QFN_VERSION') AND name='idx1_COURSE_VERSION_QFN_VER_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_QFN_VERSION') AND name='idx1_COURSE_VERSION_QFN_VER_01')
BEGIN
    DROP INDEX COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_QFN_VERSION') AND name='idx1_COURSE_VERSION_QFN_VER_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_250')
BEGIN
    DROP INDEX COURSE_VERSION.repl_946684731_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.repl_946684731_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.repl_946684731_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_249')
BEGIN
    DROP INDEX COURSE_VERSION.repl_946684731_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.repl_946684731_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.repl_946684731_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_248')
BEGIN
    DROP INDEX COURSE_VERSION.repl_946684731_248
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_248')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.repl_946684731_248 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.repl_946684731_248 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_247')
BEGIN
    DROP INDEX COURSE_VERSION.repl_946684731_247
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_247')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.repl_946684731_247 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.repl_946684731_247 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_246')
BEGIN
    DROP INDEX COURSE_VERSION.repl_946684731_246
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_246')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.repl_946684731_246 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.repl_946684731_246 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='idx_course_version_03')
BEGIN
    DROP INDEX COURSE_VERSION.idx_course_version_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='idx_course_version_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.idx_course_version_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.idx_course_version_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='idx_course_version_01')
BEGIN
    DROP INDEX COURSE_VERSION.idx_course_version_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='idx_course_version_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.idx_course_version_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.idx_course_version_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='Idx_course_version_02')
BEGIN
    DROP INDEX COURSE_VERSION.Idx_course_version_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='Idx_course_version_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE_VERSION.Idx_course_version_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE_VERSION.Idx_course_version_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COST_ALLOCATION') AND name='idx_cost_allocation_01')
BEGIN
    DROP INDEX COST_ALLOCATION.idx_cost_allocation_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COST_ALLOCATION') AND name='idx_cost_allocation_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COST_ALLOCATION.idx_cost_allocation_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COST_ALLOCATION.idx_cost_allocation_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='idx_COM_METHOD_03')
BEGIN
    DROP INDEX COM_METHOD.idx_COM_METHOD_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='idx_COM_METHOD_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.COM_METHOD.idx_COM_METHOD_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COM_METHOD.idx_COM_METHOD_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_ADDR1')
BEGIN
    DROP INDEX COM_METHOD.IDX_COM_METHOD_ADDR1
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_ADDR1')
        PRINT '<<< FAILED DROPPING INDEX dbo.COM_METHOD.IDX_COM_METHOD_ADDR1 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COM_METHOD.IDX_COM_METHOD_ADDR1 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_04')
BEGIN
    DROP INDEX COM_METHOD.IDX_COM_METHOD_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.COM_METHOD.IDX_COM_METHOD_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COM_METHOD.IDX_COM_METHOD_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_02')
BEGIN
    DROP INDEX COM_METHOD.IDX_COM_METHOD_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.COM_METHOD.IDX_COM_METHOD_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COM_METHOD.IDX_COM_METHOD_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_PEER') AND name='idx_compassionate_peer_02')
BEGIN
    DROP INDEX COMPASSIONATE_PEER.idx_compassionate_peer_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_PEER') AND name='idx_compassionate_peer_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE_PEER.idx_compassionate_peer_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE_PEER.idx_compassionate_peer_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_PEER') AND name='idx_COMPASSIONATE_PEER_01')
BEGIN
    DROP INDEX COMPASSIONATE_PEER.idx_COMPASSIONATE_PEER_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_PEER') AND name='idx_COMPASSIONATE_PEER_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE_PEER.idx_COMPASSIONATE_PEER_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE_PEER.idx_COMPASSIONATE_PEER_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_compassionate_entry_03')
BEGIN
    DROP INDEX COMPASSIONATE_ENTRY.idx_compassionate_entry_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_compassionate_entry_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_compassionate_entry_02')
BEGIN
    DROP INDEX COMPASSIONATE_ENTRY.idx_compassionate_entry_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_compassionate_entry_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_COMPASSIONATE_ENTRY_01')
BEGIN
    DROP INDEX COMPASSIONATE_ENTRY.idx_COMPASSIONATE_ENTRY_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_COMPASSIONATE_ENTRY_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE_ENTRY.idx_COMPASSIONATE_ENTRY_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE_ENTRY.idx_COMPASSIONATE_ENTRY_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='repl_328437263_250')
BEGIN
    DROP INDEX COMPASSIONATE.repl_328437263_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='repl_328437263_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE.repl_328437263_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE.repl_328437263_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='idx_compassionate_02')
BEGIN
    DROP INDEX COMPASSIONATE.idx_compassionate_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='idx_compassionate_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE.idx_compassionate_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE.idx_compassionate_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='idx_COMPASSIONATE_01')
BEGIN
    DROP INDEX COMPASSIONATE.idx_COMPASSIONATE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='idx_COMPASSIONATE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COMPASSIONATE.idx_COMPASSIONATE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COMPASSIONATE.idx_COMPASSIONATE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_UNIT_QUANTITY') AND name='idx_claim_unit_quantity_01')
BEGIN
    DROP INDEX CLAIM_UNIT_QUANTITY.idx_claim_unit_quantity_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_UNIT_QUANTITY') AND name='idx_claim_unit_quantity_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CLAIM_UNIT_QUANTITY.idx_claim_unit_quantity_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CLAIM_UNIT_QUANTITY.idx_claim_unit_quantity_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_UNIT') AND name='idx_claim_unit_claim_id')
BEGIN
    DROP INDEX CLAIM_UNIT.idx_claim_unit_claim_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_UNIT') AND name='idx_claim_unit_claim_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.CLAIM_UNIT.idx_claim_unit_claim_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CLAIM_UNIT.idx_claim_unit_claim_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_RATE') AND name='idx_claim_rate_item_type_contract_id')
BEGIN
    DROP INDEX CLAIM_RATE.idx_claim_rate_item_type_contract_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_RATE') AND name='idx_claim_rate_item_type_contract_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.CLAIM_RATE.idx_claim_rate_item_type_contract_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CLAIM_RATE.idx_claim_rate_item_type_contract_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_ITEM') AND name='idx_claim_item_01')
BEGIN
    DROP INDEX CLAIM_ITEM.idx_claim_item_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_ITEM') AND name='idx_claim_item_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CLAIM_ITEM.idx_claim_item_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CLAIM_ITEM.idx_claim_item_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_UPDATES') AND name='idx_CFN_UPDATES_01')
BEGIN
    DROP INDEX CFN_UPDATES.idx_CFN_UPDATES_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_UPDATES') AND name='idx_CFN_UPDATES_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CFN_UPDATES.idx_CFN_UPDATES_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CFN_UPDATES.idx_CFN_UPDATES_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_RELATIONSHIP_TO') AND name='IDX_CFN_REL_TO_REL')
BEGIN
    DROP INDEX CFN_RELATIONSHIP_TO.IDX_CFN_REL_TO_REL
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_RELATIONSHIP_TO') AND name='IDX_CFN_REL_TO_REL')
        PRINT '<<< FAILED DROPPING INDEX dbo.CFN_RELATIONSHIP_TO.IDX_CFN_REL_TO_REL >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CFN_RELATIONSHIP_TO.IDX_CFN_REL_TO_REL >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_RELATIONSHIP_FROM') AND name='IDX_CFN_REL_FROM_REL')
BEGIN
    DROP INDEX CFN_RELATIONSHIP_FROM.IDX_CFN_REL_FROM_REL
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_RELATIONSHIP_FROM') AND name='IDX_CFN_REL_FROM_REL')
        PRINT '<<< FAILED DROPPING INDEX dbo.CFN_RELATIONSHIP_FROM.IDX_CFN_REL_FROM_REL >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CFN_RELATIONSHIP_FROM.IDX_CFN_REL_FROM_REL >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='repl_1505346042_250')
BEGIN
    DROP INDEX CFN_CATEGORY.repl_1505346042_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='repl_1505346042_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.CFN_CATEGORY.repl_1505346042_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CFN_CATEGORY.repl_1505346042_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='idx_CFN_CATEGORY_cfn_catg_num')
BEGIN
    DROP INDEX CFN_CATEGORY.idx_CFN_CATEGORY_cfn_catg_num
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='idx_CFN_CATEGORY_cfn_catg_num')
        PRINT '<<< FAILED DROPPING INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_cfn_catg_num >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_cfn_catg_num >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='idx_CFN_CATEGORY_01')
BEGIN
    DROP INDEX CFN_CATEGORY.idx_CFN_CATEGORY_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='idx_CFN_CATEGORY_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_SUMMARY_TOTAL') AND name='IDX_BATCH_INPUT_ID')
BEGIN
    DROP INDEX BATCH_SUMMARY_TOTAL.IDX_BATCH_INPUT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_SUMMARY_TOTAL') AND name='IDX_BATCH_INPUT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_SUMMARY_TOTAL.IDX_BATCH_INPUT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_SUMMARY_TOTAL.IDX_BATCH_INPUT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_date_type')
BEGIN
    DROP INDEX BATCH_STATUS.idx_date_type
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_date_type')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_STATUS.idx_date_type >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_STATUS.idx_date_type >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_batch_status_date')
BEGIN
    DROP INDEX BATCH_STATUS.idx_batch_status_date
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_batch_status_date')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_STATUS.idx_batch_status_date >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_STATUS.idx_batch_status_date >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_batch_status_01')
BEGIN
    DROP INDEX BATCH_STATUS.idx_batch_status_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_batch_status_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_STATUS.idx_batch_status_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_STATUS.idx_batch_status_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='IDX_BATCH_STATUS_02')
BEGIN
    DROP INDEX BATCH_STATUS.IDX_BATCH_STATUS_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='IDX_BATCH_STATUS_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_STATUS.IDX_BATCH_STATUS_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_STATUS.IDX_BATCH_STATUS_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_PROVIDER_ID')
BEGIN
    DROP INDEX BATCH_INPUT.IDX_PROVIDER_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_PROVIDER_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_INPUT.IDX_PROVIDER_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_INPUT.IDX_PROVIDER_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_03')
BEGIN
    DROP INDEX BATCH_INPUT.IDX_BATCH_INPUT_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_01')
BEGIN
    DROP INDEX BATCH_INPUT.IDX_BATCH_INPUT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_ERROR_TOTAL') AND name='IDX_BATCH_INPUT_ID')
BEGIN
    DROP INDEX BATCH_ERROR_TOTAL.IDX_BATCH_INPUT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_ERROR_TOTAL') AND name='IDX_BATCH_INPUT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_ERROR_TOTAL.IDX_BATCH_INPUT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_ERROR_TOTAL.IDX_BATCH_INPUT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_ERROR_CODE') AND name='idx_batch_error_code_01')
BEGIN
    DROP INDEX BATCH_ERROR_CODE.idx_batch_error_code_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_ERROR_CODE') AND name='idx_batch_error_code_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_ERROR_CODE.idx_batch_error_code_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_ERROR_CODE.idx_batch_error_code_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_RECIPIENT') AND name='idx_award_recipient_02')
BEGIN
    DROP INDEX AWARD_RECIPIENT.idx_award_recipient_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_RECIPIENT') AND name='idx_award_recipient_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.AWARD_RECIPIENT.idx_award_recipient_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AWARD_RECIPIENT.idx_award_recipient_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_RECIPIENT') AND name='idx_AWARD_RECIPIENT_01')
BEGIN
    DROP INDEX AWARD_RECIPIENT.idx_AWARD_RECIPIENT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_RECIPIENT') AND name='idx_AWARD_RECIPIENT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AWARD_RECIPIENT.idx_AWARD_RECIPIENT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AWARD_RECIPIENT.idx_AWARD_RECIPIENT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_DETAIL') AND name='idx_AWARD_DETAIL_01')
BEGIN
    DROP INDEX AWARD_DETAIL.idx_AWARD_DETAIL_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_DETAIL') AND name='idx_AWARD_DETAIL_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AWARD_DETAIL.idx_AWARD_DETAIL_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AWARD_DETAIL.idx_AWARD_DETAIL_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARDING_PROVIDER_MAP') AND name='idx_awarding_provider_map_02')
BEGIN
    DROP INDEX AWARDING_PROVIDER_MAP.idx_awarding_provider_map_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARDING_PROVIDER_MAP') AND name='idx_awarding_provider_map_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.AWARDING_PROVIDER_MAP.idx_awarding_provider_map_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AWARDING_PROVIDER_MAP.idx_awarding_provider_map_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSMT_SESS_COMP_MATERIAL') AND name='idx_assmt_sess_comp_mat_01')
BEGIN
    DROP INDEX ASSMT_SESS_COMP_MATERIAL.idx_assmt_sess_comp_mat_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSMT_SESS_COMP_MATERIAL') AND name='idx_assmt_sess_comp_mat_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSMT_SESS_COMP_MATERIAL.idx_assmt_sess_comp_mat_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSMT_SESS_COMP_MATERIAL.idx_assmt_sess_comp_mat_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESS_SESS_CMPT_CUT_SCORE') AND name='idx_assess_sess_cmpt_score_01')
BEGIN
    DROP INDEX ASSESS_SESS_CMPT_CUT_SCORE.idx_assess_sess_cmpt_score_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESS_SESS_CMPT_CUT_SCORE') AND name='idx_assess_sess_cmpt_score_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESS_SESS_CMPT_CUT_SCORE.idx_assess_sess_cmpt_score_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESS_SESS_CMPT_CUT_SCORE.idx_assess_sess_cmpt_score_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION_COMPONENT') AND name='idx_assessment_session_comp_03')
BEGIN
    DROP INDEX ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION_COMPONENT') AND name='idx_assessment_session_comp_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION') AND name='idx_assessment_session_01')
BEGIN
    DROP INDEX ASSESSMENT_SESSION.idx_assessment_session_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION') AND name='idx_assessment_session_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESSMENT_SESSION.idx_assessment_session_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESSMENT_SESSION.idx_assessment_session_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dr_sysobjects') AND name='ncsysobjects')
BEGIN
    DROP INDEX dba_pxy_dr_sysobjects.ncsysobjects
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dr_sysobjects') AND name='ncsysobjects')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_dr_sysobjects.ncsysobjects >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_dr_sysobjects.ncsysobjects >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_web12') AND name='pk_dba_test_rep')
BEGIN
    DROP INDEX dba_pxy_dba_test_rep_web12.pk_dba_test_rep
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_web12') AND name='pk_dba_test_rep')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_dba_test_rep_web12.pk_dba_test_rep >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_dba_test_rep_web12.pk_dba_test_rep >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_web11') AND name='pk_dba_test_rep')
BEGIN
    DROP INDEX dba_pxy_dba_test_rep_web11.pk_dba_test_rep
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_web11') AND name='pk_dba_test_rep')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_dba_test_rep_web11.pk_dba_test_rep >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_dba_test_rep_web11.pk_dba_test_rep >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_pdtec2') AND name='pk_dba_test_rep')
BEGIN
    DROP INDEX dba_pxy_dba_test_rep_pdtec2.pk_dba_test_rep
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_pdtec2') AND name='pk_dba_test_rep')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_dba_test_rep_pdtec2.pk_dba_test_rep >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_dba_test_rep_pdtec2.pk_dba_test_rep >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_pdrpt2') AND name='pk_dba_test_rep')
BEGIN
    DROP INDEX dba_pxy_dba_test_rep_pdrpt2.pk_dba_test_rep
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_pdrpt2') AND name='pk_dba_test_rep')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_dba_test_rep_pdrpt2.pk_dba_test_rep >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_dba_test_rep_pdrpt2.pk_dba_test_rep >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_dr') AND name='pk_dba_test_rep')
BEGIN
    DROP INDEX dba_pxy_dba_test_rep_dr.pk_dba_test_rep
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_dr') AND name='pk_dba_test_rep')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_dba_test_rep_dr.pk_dba_test_rep >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_dba_test_rep_dr.pk_dba_test_rep >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='PK_AUDIT_TRANSACTION')
BEGIN
    DROP INDEX dba_pxy_audit_trans_pdtec2.PK_AUDIT_TRANSACTION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='PK_AUDIT_TRANSACTION')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_audit_trans_pdtec2.PK_AUDIT_TRANSACTION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_audit_trans_pdtec2.PK_AUDIT_TRANSACTION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_07')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_07
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_07')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_07 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_07 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='ind_provider_exam_code')
BEGIN
    DROP INDEX LEARNER_ASSESSMENT_CENTRE.ind_provider_exam_code
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='ind_provider_exam_code')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ASSESSMENT_CENTRE.ind_provider_exam_code >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ASSESSMENT_CENTRE.ind_provider_exam_code >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_02')
BEGIN
    DROP INDEX LEARNER.idx_learner_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER.idx_learner_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER.idx_learner_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_01')
BEGIN
    DROP INDEX LEARNER.idx_learner_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER.idx_learner_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER.idx_learner_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='IDX_LEARNER_NSN')
BEGIN
    DROP INDEX LEARNER.IDX_LEARNER_NSN
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='IDX_LEARNER_NSN')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER.IDX_LEARNER_NSN >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER.IDX_LEARNER_NSN >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCIAL_DETAIL') AND name='uidx_FINANCIAL_DETAIL_02')
BEGIN
    DROP INDEX FINANCIAL_DETAIL.uidx_FINANCIAL_DETAIL_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCIAL_DETAIL') AND name='uidx_FINANCIAL_DETAIL_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCIAL_DETAIL.uidx_FINANCIAL_DETAIL_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCIAL_DETAIL.uidx_FINANCIAL_DETAIL_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='IDX_AC_YEAR_PAGE')
BEGIN
    DROP INDEX EX_MARKER_PAGE_LINE.IDX_AC_YEAR_PAGE
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='IDX_AC_YEAR_PAGE')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE_LINE.IDX_AC_YEAR_PAGE >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE_LINE.IDX_AC_YEAR_PAGE >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='IDX_AC_YEAR_PAGE')
BEGIN
    DROP INDEX EX_MARKER_PAGE.IDX_AC_YEAR_PAGE
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='IDX_AC_YEAR_PAGE')
        PRINT '<<< FAILED DROPPING INDEX dbo.EX_MARKER_PAGE.IDX_AC_YEAR_PAGE >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EX_MARKER_PAGE.IDX_AC_YEAR_PAGE >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL') AND name='AK_AK_EXAM_MATERIAL_EXAM_MAT')
BEGIN
    DROP INDEX EXAM_MATERIAL.AK_AK_EXAM_MATERIAL_EXAM_MAT
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL') AND name='AK_AK_EXAM_MATERIAL_EXAM_MAT')
        PRINT '<<< FAILED DROPPING INDEX dbo.EXAM_MATERIAL.AK_AK_EXAM_MATERIAL_EXAM_MAT >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EXAM_MATERIAL.AK_AK_EXAM_MATERIAL_EXAM_MAT >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EQA_SETTING') AND name='AK_EQA_SETTING_01')
BEGIN
    DROP INDEX EQA_SETTING.AK_EQA_SETTING_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EQA_SETTING') AND name='AK_EQA_SETTING_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.EQA_SETTING.AK_EQA_SETTING_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.EQA_SETTING.AK_EQA_SETTING_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_ASSISTANCE') AND name='idx_ENTRY_ASSISTANCE_01')
BEGIN
    DROP INDEX ENTRY_ASSISTANCE.idx_ENTRY_ASSISTANCE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_ASSISTANCE') AND name='idx_ENTRY_ASSISTANCE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_ASSISTANCE.idx_ENTRY_ASSISTANCE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_ASSISTANCE.idx_ENTRY_ASSISTANCE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENDORSEMENT') AND name='AK_ENDORSEMENT_DESC')
BEGIN
    DROP INDEX ENDORSEMENT.AK_ENDORSEMENT_DESC
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENDORSEMENT') AND name='AK_ENDORSEMENT_DESC')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENDORSEMENT.AK_ENDORSEMENT_DESC >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENDORSEMENT.AK_ENDORSEMENT_DESC >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DEBTOR') AND name='uidx_debtor_01')
BEGIN
    DROP INDEX DEBTOR.uidx_debtor_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DEBTOR') AND name='uidx_debtor_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.DEBTOR.uidx_debtor_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DEBTOR.uidx_debtor_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RULE_STD_TYPE') AND name='uidx_crse_endr_rule_std')
BEGIN
    DROP INDEX CRSE_ENDR_RULE_STD_TYPE.uidx_crse_endr_rule_std
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RULE_STD_TYPE') AND name='uidx_crse_endr_rule_std')
        PRINT '<<< FAILED DROPPING INDEX dbo.CRSE_ENDR_RULE_STD_TYPE.uidx_crse_endr_rule_std >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CRSE_ENDR_RULE_STD_TYPE.uidx_crse_endr_rule_std >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE') AND name='AK_COURSE')
BEGIN
    DROP INDEX COURSE.AK_COURSE
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE') AND name='AK_COURSE')
        PRINT '<<< FAILED DROPPING INDEX dbo.COURSE.AK_COURSE >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COURSE.AK_COURSE >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_CONTRACT') AND name='AK_CLAIM_CONTRACT')
BEGIN
    DROP INDEX CLAIM_CONTRACT.AK_CLAIM_CONTRACT
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_CONTRACT') AND name='AK_CLAIM_CONTRACT')
        PRINT '<<< FAILED DROPPING INDEX dbo.CLAIM_CONTRACT.AK_CLAIM_CONTRACT >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.CLAIM_CONTRACT.AK_CLAIM_CONTRACT >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BOOKLET_RETRIEVAL') AND name='uidx_booklet_retrieval_01')
BEGIN
    DROP INDEX BOOKLET_RETRIEVAL.uidx_booklet_retrieval_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BOOKLET_RETRIEVAL') AND name='uidx_booklet_retrieval_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.BOOKLET_RETRIEVAL.uidx_booklet_retrieval_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BOOKLET_RETRIEVAL.uidx_booklet_retrieval_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS_MAP') AND name='BAT_STAT_MAP_UQ_CNST')
BEGIN
    DROP INDEX BATCH_STATUS_MAP.BAT_STAT_MAP_UQ_CNST
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS_MAP') AND name='BAT_STAT_MAP_UQ_CNST')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_STATUS_MAP.BAT_STAT_MAP_UQ_CNST >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_STATUS_MAP.BAT_STAT_MAP_UQ_CNST >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_02')
BEGIN
    DROP INDEX BATCH_INPUT.IDX_BATCH_INPUT_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARDING_PROVIDER_MAP') AND name='UIDX_AWARDING_PROVIDER_MAP_01')
BEGIN
    DROP INDEX AWARDING_PROVIDER_MAP.UIDX_AWARDING_PROVIDER_MAP_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARDING_PROVIDER_MAP') AND name='UIDX_AWARDING_PROVIDER_MAP_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AWARDING_PROVIDER_MAP.UIDX_AWARDING_PROVIDER_MAP_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AWARDING_PROVIDER_MAP.UIDX_AWARDING_PROVIDER_MAP_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION') AND name='uidx_assessment_session_02')
BEGIN
    DROP INDEX ASSESSMENT_SESSION.uidx_assessment_session_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION') AND name='uidx_assessment_session_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESSMENT_SESSION.uidx_assessment_session_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESSMENT_SESSION.uidx_assessment_session_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_04')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.idx_learner_enrolment_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_input_batch_error_02')
BEGIN
    DROP INDEX INPUT_BATCH_ERROR.idx_input_batch_error_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_input_batch_error_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION_NSN') AND name='idx_fin_transaction_nsn_01')
BEGIN
    DROP INDEX FINANCE_TRANSACTION_NSN.idx_fin_transaction_nsn_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION_NSN') AND name='idx_fin_transaction_nsn_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.FINANCE_TRANSACTION_NSN.idx_fin_transaction_nsn_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.FINANCE_TRANSACTION_NSN.idx_fin_transaction_nsn_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SERIAL_NUMBER') AND name='idx_entry_serial_number_01')
BEGIN
    DROP INDEX ENTRY_SERIAL_NUMBER.idx_entry_serial_number_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SERIAL_NUMBER') AND name='idx_entry_serial_number_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_SERIAL_NUMBER.idx_entry_serial_number_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_SERIAL_NUMBER.idx_entry_serial_number_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_02')
BEGIN
    DROP INDEX ENTRY.idx_entry_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY.idx_entry_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY.idx_entry_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_DIARY_EVENT_01')
BEGIN
    DROP INDEX DIARY_EVENT.idx_DIARY_EVENT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_DIARY_EVENT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.DIARY_EVENT.idx_DIARY_EVENT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DIARY_EVENT.idx_DIARY_EVENT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DATABASE_VERSION') AND name='idx_database_version_01')
BEGIN
    DROP INDEX DATABASE_VERSION.idx_database_version_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DATABASE_VERSION') AND name='idx_database_version_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.DATABASE_VERSION.idx_database_version_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DATABASE_VERSION.idx_database_version_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DATABASE_BATCH_VERSION') AND name='idx_database_batch_version_01')
BEGIN
    DROP INDEX DATABASE_BATCH_VERSION.idx_database_batch_version_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DATABASE_BATCH_VERSION') AND name='idx_database_batch_version_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.DATABASE_BATCH_VERSION.idx_database_batch_version_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.DATABASE_BATCH_VERSION.idx_database_batch_version_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='idx_com_method_01')
BEGIN
    DROP INDEX COM_METHOD.idx_com_method_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='idx_com_method_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.COM_METHOD.idx_com_method_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.COM_METHOD.idx_com_method_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_COMMENT') AND name='IDX_BATCH_COMMENT_01')
BEGIN
    DROP INDEX BATCH_COMMENT.IDX_BATCH_COMMENT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_COMMENT') AND name='IDX_BATCH_COMMENT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.BATCH_COMMENT.IDX_BATCH_COMMENT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.BATCH_COMMENT.IDX_BATCH_COMMENT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSMT_SESS_COMP_MATERIAL') AND name='IDX_ASCM_SESSION')
BEGIN
    DROP INDEX ASSMT_SESS_COMP_MATERIAL.IDX_ASCM_SESSION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSMT_SESS_COMP_MATERIAL') AND name='IDX_ASCM_SESSION')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSMT_SESS_COMP_MATERIAL.IDX_ASCM_SESSION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSMT_SESS_COMP_MATERIAL.IDX_ASCM_SESSION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION_COMPONENT') AND name='idx_assessment_session_comp_02')
BEGIN
    DROP INDEX ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION_COMPONENT') AND name='idx_assessment_session_comp_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_web12') AND name='PK_NEXT_ID')
BEGIN
    DROP INDEX dba_pxy_next_id_web12.PK_NEXT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_web12') AND name='PK_NEXT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_next_id_web12.PK_NEXT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_next_id_web12.PK_NEXT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_web11') AND name='PK_NEXT_ID')
BEGIN
    DROP INDEX dba_pxy_next_id_web11.PK_NEXT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_web11') AND name='PK_NEXT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_next_id_web11.PK_NEXT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_next_id_web11.PK_NEXT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_pdrpt2') AND name='PK_NEXT_ID')
BEGIN
    DROP INDEX dba_pxy_next_id_pdrpt2.PK_NEXT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_pdrpt2') AND name='PK_NEXT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_next_id_pdrpt2.PK_NEXT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_next_id_pdrpt2.PK_NEXT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_dr') AND name='PK_NEXT_ID')
BEGIN
    DROP INDEX dba_pxy_next_id_dr.PK_NEXT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_dr') AND name='PK_NEXT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_next_id_dr.PK_NEXT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_next_id_dr.PK_NEXT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dr_sysobjects') AND name='csysobjects')
BEGIN
    DROP INDEX dba_pxy_dr_sysobjects.csysobjects
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dr_sysobjects') AND name='csysobjects')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_dr_sysobjects.csysobjects >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_dr_sysobjects.csysobjects >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_web12') AND name='PK_AUDIT_TRANSACTION')
BEGIN
    DROP INDEX dba_pxy_audit_trans_web12.PK_AUDIT_TRANSACTION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_web12') AND name='PK_AUDIT_TRANSACTION')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_audit_trans_web12.PK_AUDIT_TRANSACTION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_audit_trans_web12.PK_AUDIT_TRANSACTION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_web11') AND name='PK_AUDIT_TRANSACTION')
BEGIN
    DROP INDEX dba_pxy_audit_trans_web11.PK_AUDIT_TRANSACTION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_web11') AND name='PK_AUDIT_TRANSACTION')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_audit_trans_web11.PK_AUDIT_TRANSACTION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_audit_trans_web11.PK_AUDIT_TRANSACTION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdrpt2') AND name='PK_AUDIT_TRANSACTION')
BEGIN
    DROP INDEX dba_pxy_audit_trans_pdrpt2.PK_AUDIT_TRANSACTION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdrpt2') AND name='PK_AUDIT_TRANSACTION')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_audit_trans_pdrpt2.PK_AUDIT_TRANSACTION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_audit_trans_pdrpt2.PK_AUDIT_TRANSACTION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_dr') AND name='PK_AUDIT_TRANSACTION')
BEGIN
    DROP INDEX dba_pxy_audit_trans_dr.PK_AUDIT_TRANSACTION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_dr') AND name='PK_AUDIT_TRANSACTION')
        PRINT '<<< FAILED DROPPING INDEX dbo.dba_pxy_audit_trans_dr.PK_AUDIT_TRANSACTION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.dba_pxy_audit_trans_dr.PK_AUDIT_TRANSACTION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROL_SPEC_ASSIST') AND name='AK_LEARNER_ENROL_SPEC_ASSIST')
BEGIN
    DROP INDEX LEARNER_ENROL_SPEC_ASSIST.AK_LEARNER_ENROL_SPEC_ASSIST
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROL_SPEC_ASSIST') AND name='AK_LEARNER_ENROL_SPEC_ASSIST')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.AK_LEARNER_ENROL_SPEC_ASSIST >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.AK_LEARNER_ENROL_SPEC_ASSIST >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_CONTEXT') AND name='uidx_entry_context_01')
BEGIN
    DROP INDEX ENTRY_CONTEXT.uidx_entry_context_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_CONTEXT') AND name='uidx_entry_context_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ENTRY_CONTEXT.uidx_entry_context_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ENTRY_CONTEXT.uidx_entry_context_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_COMPONENT_PEP') AND name='AK_ASSESSMENT_COMPONENT_PEP')
BEGIN
    DROP INDEX ASSESSMENT_COMPONENT_PEP.AK_ASSESSMENT_COMPONENT_PEP
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_COMPONENT_PEP') AND name='AK_ASSESSMENT_COMPONENT_PEP')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESSMENT_COMPONENT_PEP.AK_ASSESSMENT_COMPONENT_PEP >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESSMENT_COMPONENT_PEP.AK_ASSESSMENT_COMPONENT_PEP >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_CENTRE') AND name='idx_assessment_centre_02')
BEGIN
    DROP INDEX ASSESSMENT_CENTRE.idx_assessment_centre_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_CENTRE') AND name='idx_assessment_centre_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESSMENT_CENTRE.idx_assessment_centre_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESSMENT_CENTRE.idx_assessment_centre_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VER_QA_EVENT_HISTORY') AND name='idx_amap_ver_qa_event_hist_01')
BEGIN
    DROP INDEX AMAP_VER_QA_EVENT_HISTORY.idx_amap_ver_qa_event_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VER_QA_EVENT_HISTORY') AND name='idx_amap_ver_qa_event_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_VER_QA_EVENT_HISTORY.idx_amap_ver_qa_event_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_VER_QA_EVENT_HISTORY.idx_amap_ver_qa_event_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION_STATUS_HISTORY') AND name='idx_AMAP_VER_STATUS_HIST_01')
BEGIN
    DROP INDEX AMAP_VERSION_STATUS_HISTORY.idx_AMAP_VER_STATUS_HIST_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION_STATUS_HISTORY') AND name='idx_AMAP_VER_STATUS_HIST_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_VERSION_STATUS_HISTORY.idx_AMAP_VER_STATUS_HIST_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_VERSION_STATUS_HISTORY.idx_AMAP_VER_STATUS_HIST_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='idx_AMAP_VERSION_02')
BEGIN
    DROP INDEX AMAP_VERSION.idx_AMAP_VERSION_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='idx_AMAP_VERSION_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='idx_AMAP_VERSION_01')
BEGIN
    DROP INDEX AMAP_VERSION.idx_AMAP_VERSION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='idx_AMAP_VERSION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_STATUS_HISTORY') AND name='idx_AMAP_STATUS_HIST_01')
BEGIN
    DROP INDEX AMAP_STATUS_HISTORY.idx_AMAP_STATUS_HIST_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_STATUS_HISTORY') AND name='idx_AMAP_STATUS_HIST_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_STATUS_HISTORY.idx_AMAP_STATUS_HIST_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_STATUS_HISTORY.idx_AMAP_STATUS_HIST_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_SCOPE') AND name='tix_aud_AMAP_SCOPE')
BEGIN
    DROP INDEX AMAP_SCOPE.tix_aud_AMAP_SCOPE
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_SCOPE') AND name='tix_aud_AMAP_SCOPE')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_SCOPE.tix_aud_AMAP_SCOPE >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_SCOPE.tix_aud_AMAP_SCOPE >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_COVERAGE') AND name='idx_amap_coverage_01')
BEGIN
    DROP INDEX AMAP_COVERAGE.idx_amap_coverage_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_COVERAGE') AND name='idx_amap_coverage_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_COVERAGE.idx_amap_coverage_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_COVERAGE.idx_amap_coverage_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_WORKTABLE') AND name='idx_allocation_worktable_02')
BEGIN
    DROP INDEX ALLOCATION_WORKTABLE.idx_allocation_worktable_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_WORKTABLE') AND name='idx_allocation_worktable_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_WORKTABLE') AND name='idx_allocation_worktable_01')
BEGIN
    DROP INDEX ALLOCATION_WORKTABLE.idx_allocation_worktable_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_WORKTABLE') AND name='idx_allocation_worktable_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_RUN') AND name='repl_944211583_250')
BEGIN
    DROP INDEX ALLOCATION_RUN.repl_944211583_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_RUN') AND name='repl_944211583_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.ALLOCATION_RUN.repl_944211583_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ALLOCATION_RUN.repl_944211583_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_RUN') AND name='idx_ALLOCATION_RUN_01')
BEGIN
    DROP INDEX ALLOCATION_RUN.idx_ALLOCATION_RUN_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_RUN') AND name='idx_ALLOCATION_RUN_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ALLOCATION_RUN.idx_ALLOCATION_RUN_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ALLOCATION_RUN.idx_ALLOCATION_RUN_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_GROUP') AND name='idx_ALLOCATION_GROUP_01')
BEGIN
    DROP INDEX ALLOCATION_GROUP.idx_ALLOCATION_GROUP_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_GROUP') AND name='idx_ALLOCATION_GROUP_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ALLOCATION_GROUP.idx_ALLOCATION_GROUP_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ALLOCATION_GROUP.idx_ALLOCATION_GROUP_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM_STATUS_HIST') AND name='idx_accrd_item_status_hist_01')
BEGIN
    DROP INDEX ACCREDITED_ITEM_STATUS_HIST.idx_accrd_item_status_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM_STATUS_HIST') AND name='idx_accrd_item_status_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITED_ITEM_STATUS_HIST.idx_accrd_item_status_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITED_ITEM_STATUS_HIST.idx_accrd_item_status_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='repl_719455452_250')
BEGIN
    DROP INDEX ACCREDITED_ITEM.repl_719455452_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='repl_719455452_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITED_ITEM.repl_719455452_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITED_ITEM.repl_719455452_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_04')
BEGIN
    DROP INDEX ACCREDITED_ITEM.idx_accredited_item_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_03')
BEGIN
    DROP INDEX ACCREDITED_ITEM.idx_accredited_item_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_01')
BEGIN
    DROP INDEX ACCREDITED_ITEM.idx_accredited_item_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='IDX_ACRD_ITEM_LST_UPD_PCASE_ID')
BEGIN
    DROP INDEX ACCREDITED_ITEM.IDX_ACRD_ITEM_LST_UPD_PCASE_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='IDX_ACRD_ITEM_LST_UPD_PCASE_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITED_ITEM.IDX_ACRD_ITEM_LST_UPD_PCASE_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITED_ITEM.IDX_ACRD_ITEM_LST_UPD_PCASE_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION_EXTENSION_RUN') AND name='idx_ACCRED_EXTENSION_RUN_01')
BEGIN
    DROP INDEX ACCREDITATION_EXTENSION_RUN.idx_ACCRED_EXTENSION_RUN_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION_EXTENSION_RUN') AND name='idx_ACCRED_EXTENSION_RUN_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITATION_EXTENSION_RUN.idx_ACCRED_EXTENSION_RUN_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITATION_EXTENSION_RUN.idx_ACCRED_EXTENSION_RUN_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION') AND name='idx_accreditation_02')
BEGIN
    DROP INDEX ACCREDITATION.idx_accreditation_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION') AND name='idx_accreditation_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITATION.idx_accreditation_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITATION.idx_accreditation_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION') AND name='idx_accreditation_01')
BEGIN
    DROP INDEX ACCREDITATION.idx_accreditation_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION') AND name='idx_accreditation_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITATION.idx_accreditation_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITATION.idx_accreditation_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_CENTRE') AND name='AK_ASSESSMENT_CENTRE_ASSESSME')
BEGIN
    DROP INDEX ASSESSMENT_CENTRE.AK_ASSESSMENT_CENTRE_ASSESSME
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_CENTRE') AND name='AK_ASSESSMENT_CENTRE_ASSESSME')
        PRINT '<<< FAILED DROPPING INDEX dbo.ASSESSMENT_CENTRE.AK_ASSESSMENT_CENTRE_ASSESSME >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ASSESSMENT_CENTRE.AK_ASSESSMENT_CENTRE_ASSESSME >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='AK_AMAP_VERSION')
BEGIN
    DROP INDEX AMAP_VERSION.AK_AMAP_VERSION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='AK_AMAP_VERSION')
        PRINT '<<< FAILED DROPPING INDEX dbo.AMAP_VERSION.AK_AMAP_VERSION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.AMAP_VERSION.AK_AMAP_VERSION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='uidx_accredited_item_02')
BEGIN
    DROP INDEX ACCREDITED_ITEM.uidx_accredited_item_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='uidx_accredited_item_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACCREDITED_ITEM.uidx_accredited_item_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACCREDITED_ITEM.uidx_accredited_item_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACADEMIC_YEAR') AND name='idx_academic_year_01')
BEGIN
    DROP INDEX ACADEMIC_YEAR.idx_academic_year_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACADEMIC_YEAR') AND name='idx_academic_year_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ACADEMIC_YEAR.idx_academic_year_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ACADEMIC_YEAR.idx_academic_year_01 >>>'
END
go
CREATE UNIQUE NONCLUSTERED INDEX idx_academic_year_01
    ON dbo.ACADEMIC_YEAR(academic_year_type,academic_year_sort_order)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACADEMIC_YEAR') AND name='idx_academic_year_01')
    PRINT '<<< CREATED INDEX dbo.ACADEMIC_YEAR.idx_academic_year_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACADEMIC_YEAR.idx_academic_year_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_accredited_item_02
    ON dbo.ACCREDITED_ITEM(provider_id,accredited_item_type,std_id,cfn_catg_id,level_code,course_version_id,delivery_site_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='uidx_accredited_item_02')
    PRINT '<<< CREATED INDEX dbo.ACCREDITED_ITEM.uidx_accredited_item_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITED_ITEM.uidx_accredited_item_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_AMAP_VERSION
    ON dbo.AMAP_VERSION(amap_number,amap_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='AK_AMAP_VERSION')
    PRINT '<<< CREATED INDEX dbo.AMAP_VERSION.AK_AMAP_VERSION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_VERSION.AK_AMAP_VERSION >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_ASSESSMENT_CENTRE_ASSESSME
    ON dbo.ASSESSMENT_CENTRE(moe_provider_id,location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_CENTRE') AND name='AK_ASSESSMENT_CENTRE_ASSESSME')
    PRINT '<<< CREATED INDEX dbo.ASSESSMENT_CENTRE.AK_ASSESSMENT_CENTRE_ASSESSME >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESSMENT_CENTRE.AK_ASSESSMENT_CENTRE_ASSESSME >>>'
go
CREATE NONCLUSTERED INDEX idx_accreditation_01
    ON dbo.ACCREDITATION(std_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION') AND name='idx_accreditation_01')
    PRINT '<<< CREATED INDEX dbo.ACCREDITATION.idx_accreditation_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITATION.idx_accreditation_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_accreditation_02
    ON dbo.ACCREDITATION(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION') AND name='idx_accreditation_02')
    PRINT '<<< CREATED INDEX dbo.ACCREDITATION.idx_accreditation_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITATION.idx_accreditation_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_ACCRED_EXTENSION_RUN_01
    ON dbo.ACCREDITATION_EXTENSION_RUN(config_file_name)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITATION_EXTENSION_RUN') AND name='idx_ACCRED_EXTENSION_RUN_01')
    PRINT '<<< CREATED INDEX dbo.ACCREDITATION_EXTENSION_RUN.idx_ACCRED_EXTENSION_RUN_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITATION_EXTENSION_RUN.idx_ACCRED_EXTENSION_RUN_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_ACRD_ITEM_LST_UPD_PCASE_ID
    ON dbo.ACCREDITED_ITEM(last_updated_perorg_case_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='IDX_ACRD_ITEM_LST_UPD_PCASE_ID')
    PRINT '<<< CREATED INDEX dbo.ACCREDITED_ITEM.IDX_ACRD_ITEM_LST_UPD_PCASE_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITED_ITEM.IDX_ACRD_ITEM_LST_UPD_PCASE_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_accredited_item_01
    ON dbo.ACCREDITED_ITEM(std_id,accredited_item_type)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_01')
    PRINT '<<< CREATED INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_accredited_item_03
    ON dbo.ACCREDITED_ITEM(accredited_item_type,cfn_catg_id,level_code,accredited_item_status)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_03')
    PRINT '<<< CREATED INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_accredited_item_04
    ON dbo.ACCREDITED_ITEM(accredited_item_type,course_version_id,accredited_item_status)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='idx_accredited_item_04')
    PRINT '<<< CREATED INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITED_ITEM.idx_accredited_item_04 >>>'
go
CREATE NONCLUSTERED INDEX repl_719455452_250
    ON dbo.ACCREDITED_ITEM(assessment_method)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM') AND name='repl_719455452_250')
    PRINT '<<< CREATED INDEX dbo.ACCREDITED_ITEM.repl_719455452_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITED_ITEM.repl_719455452_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_accrd_item_status_hist_01
    ON dbo.ACCREDITED_ITEM_STATUS_HIST(accredited_item_id,accredited_item_status,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ACCREDITED_ITEM_STATUS_HIST') AND name='idx_accrd_item_status_hist_01')
    PRINT '<<< CREATED INDEX dbo.ACCREDITED_ITEM_STATUS_HIST.idx_accrd_item_status_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ACCREDITED_ITEM_STATUS_HIST.idx_accrd_item_status_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ALLOCATION_GROUP_01
    ON dbo.ALLOCATION_GROUP(allocation_method)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_GROUP') AND name='idx_ALLOCATION_GROUP_01')
    PRINT '<<< CREATED INDEX dbo.ALLOCATION_GROUP.idx_ALLOCATION_GROUP_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ALLOCATION_GROUP.idx_ALLOCATION_GROUP_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ALLOCATION_RUN_01
    ON dbo.ALLOCATION_RUN(allocation_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_RUN') AND name='idx_ALLOCATION_RUN_01')
    PRINT '<<< CREATED INDEX dbo.ALLOCATION_RUN.idx_ALLOCATION_RUN_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ALLOCATION_RUN.idx_ALLOCATION_RUN_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_944211583_250
    ON dbo.ALLOCATION_RUN(failure_message)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_RUN') AND name='repl_944211583_250')
    PRINT '<<< CREATED INDEX dbo.ALLOCATION_RUN.repl_944211583_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ALLOCATION_RUN.repl_944211583_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_allocation_worktable_01
    ON dbo.ALLOCATION_WORKTABLE(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_WORKTABLE') AND name='idx_allocation_worktable_01')
    PRINT '<<< CREATED INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_allocation_worktable_02
    ON dbo.ALLOCATION_WORKTABLE(allocation_run_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ALLOCATION_WORKTABLE') AND name='idx_allocation_worktable_02')
    PRINT '<<< CREATED INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ALLOCATION_WORKTABLE.idx_allocation_worktable_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_amap_coverage_01
    ON dbo.AMAP_COVERAGE(std_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_COVERAGE') AND name='idx_amap_coverage_01')
    PRINT '<<< CREATED INDEX dbo.AMAP_COVERAGE.idx_amap_coverage_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_COVERAGE.idx_amap_coverage_01 >>>'
go
CREATE NONCLUSTERED INDEX tix_aud_AMAP_SCOPE
    ON dbo.AMAP_SCOPE(audit_tran_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_SCOPE') AND name='tix_aud_AMAP_SCOPE')
    PRINT '<<< CREATED INDEX dbo.AMAP_SCOPE.tix_aud_AMAP_SCOPE >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_SCOPE.tix_aud_AMAP_SCOPE >>>'
go
CREATE NONCLUSTERED INDEX idx_AMAP_STATUS_HIST_01
    ON dbo.AMAP_STATUS_HISTORY(amap_id,amap_status_code,amap_status_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_STATUS_HISTORY') AND name='idx_AMAP_STATUS_HIST_01')
    PRINT '<<< CREATED INDEX dbo.AMAP_STATUS_HISTORY.idx_AMAP_STATUS_HIST_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_STATUS_HISTORY.idx_AMAP_STATUS_HIST_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_AMAP_VERSION_01
    ON dbo.AMAP_VERSION(ssb_perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='idx_AMAP_VERSION_01')
    PRINT '<<< CREATED INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_AMAP_VERSION_02
    ON dbo.AMAP_VERSION(amap_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION') AND name='idx_AMAP_VERSION_02')
    PRINT '<<< CREATED INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_VERSION.idx_AMAP_VERSION_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_AMAP_VER_STATUS_HIST_01
    ON dbo.AMAP_VERSION_STATUS_HISTORY(amap_version_id,amap_version_status_code,amap_version_status_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VERSION_STATUS_HISTORY') AND name='idx_AMAP_VER_STATUS_HIST_01')
    PRINT '<<< CREATED INDEX dbo.AMAP_VERSION_STATUS_HISTORY.idx_AMAP_VER_STATUS_HIST_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_VERSION_STATUS_HISTORY.idx_AMAP_VER_STATUS_HIST_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_amap_ver_qa_event_hist_01
    ON dbo.AMAP_VER_QA_EVENT_HISTORY(amap_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AMAP_VER_QA_EVENT_HISTORY') AND name='idx_amap_ver_qa_event_hist_01')
    PRINT '<<< CREATED INDEX dbo.AMAP_VER_QA_EVENT_HISTORY.idx_amap_ver_qa_event_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AMAP_VER_QA_EVENT_HISTORY.idx_amap_ver_qa_event_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_assessment_centre_02
    ON dbo.ASSESSMENT_CENTRE(assessment_centre_type,moe_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_CENTRE') AND name='idx_assessment_centre_02')
    PRINT '<<< CREATED INDEX dbo.ASSESSMENT_CENTRE.idx_assessment_centre_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESSMENT_CENTRE.idx_assessment_centre_02 >>>'
go
CREATE UNIQUE CLUSTERED INDEX AK_ASSESSMENT_COMPONENT_PEP
    ON dbo.ASSESSMENT_COMPONENT_PEP(assessment_session_comp_id,result_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_COMPONENT_PEP') AND name='AK_ASSESSMENT_COMPONENT_PEP')
    PRINT '<<< CREATED INDEX dbo.ASSESSMENT_COMPONENT_PEP.AK_ASSESSMENT_COMPONENT_PEP >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESSMENT_COMPONENT_PEP.AK_ASSESSMENT_COMPONENT_PEP >>>'
go
CREATE UNIQUE CLUSTERED INDEX uidx_entry_context_01
    ON dbo.ENTRY_CONTEXT(entry_id,std_context_map_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_CONTEXT') AND name='uidx_entry_context_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY_CONTEXT.uidx_entry_context_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_CONTEXT.uidx_entry_context_01 >>>'
go
CREATE UNIQUE CLUSTERED INDEX AK_LEARNER_ENROL_SPEC_ASSIST
    ON dbo.LEARNER_ENROL_SPEC_ASSIST(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROL_SPEC_ASSIST') AND name='AK_LEARNER_ENROL_SPEC_ASSIST')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.AK_LEARNER_ENROL_SPEC_ASSIST >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.AK_LEARNER_ENROL_SPEC_ASSIST >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_AUDIT_TRANSACTION
    ON dbo.dba_pxy_audit_trans_dr(audit_tran_oid)
LOCAL INDEX PK_AUDIT_TRANSACTION_750036264
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_dr') AND name='PK_AUDIT_TRANSACTION')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_audit_trans_dr.PK_AUDIT_TRANSACTION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_audit_trans_dr.PK_AUDIT_TRANSACTION >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_AUDIT_TRANSACTION
    ON dbo.dba_pxy_audit_trans_pdrpt2(audit_tran_oid)
LOCAL INDEX PK_AUDIT_TRANSACTION_814036492
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdrpt2') AND name='PK_AUDIT_TRANSACTION')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_audit_trans_pdrpt2.PK_AUDIT_TRANSACTION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_audit_trans_pdrpt2.PK_AUDIT_TRANSACTION >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_AUDIT_TRANSACTION
    ON dbo.dba_pxy_audit_trans_web11(audit_tran_oid)
LOCAL INDEX PK_AUDIT_TRANSACTION_990037119
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_web11') AND name='PK_AUDIT_TRANSACTION')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_audit_trans_web11.PK_AUDIT_TRANSACTION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_audit_trans_web11.PK_AUDIT_TRANSACTION >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_AUDIT_TRANSACTION
    ON dbo.dba_pxy_audit_trans_web12(audit_tran_oid)
LOCAL INDEX PK_AUDIT_TRANSACTION_1054037347
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_web12') AND name='PK_AUDIT_TRANSACTION')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_audit_trans_web12.PK_AUDIT_TRANSACTION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_audit_trans_web12.PK_AUDIT_TRANSACTION >>>'
go
CREATE UNIQUE CLUSTERED INDEX csysobjects
    ON dbo.dba_pxy_dr_sysobjects(id)
LOCAL INDEX csysobjects_1518039000
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dr_sysobjects') AND name='csysobjects')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_dr_sysobjects.csysobjects >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_dr_sysobjects.csysobjects >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_NEXT_ID
    ON dbo.dba_pxy_next_id_dr(id_type)
LOCAL INDEX PK_NEXT_ID_1598039285
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_dr') AND name='PK_NEXT_ID')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_next_id_dr.PK_NEXT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_next_id_dr.PK_NEXT_ID >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_NEXT_ID
    ON dbo.dba_pxy_next_id_pdrpt2(id_type)
LOCAL INDEX PK_NEXT_ID_1662039513
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_pdrpt2') AND name='PK_NEXT_ID')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_next_id_pdrpt2.PK_NEXT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_next_id_pdrpt2.PK_NEXT_ID >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_NEXT_ID
    ON dbo.dba_pxy_next_id_web11(id_type)
LOCAL INDEX PK_NEXT_ID_1726039741
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_web11') AND name='PK_NEXT_ID')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_next_id_web11.PK_NEXT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_next_id_web11.PK_NEXT_ID >>>'
go
CREATE UNIQUE CLUSTERED INDEX PK_NEXT_ID
    ON dbo.dba_pxy_next_id_web12(id_type)
LOCAL INDEX PK_NEXT_ID_1790039969
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_next_id_web12') AND name='PK_NEXT_ID')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_next_id_web12.PK_NEXT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_next_id_web12.PK_NEXT_ID >>>'
go
CREATE CLUSTERED INDEX idx_assessment_session_comp_02
    ON dbo.ASSESSMENT_SESSION_COMPONENT(assessment_session_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION_COMPONENT') AND name='idx_assessment_session_comp_02')
    PRINT '<<< CREATED INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_02 >>>'
go
CREATE CLUSTERED INDEX IDX_ASCM_SESSION
    ON dbo.ASSMT_SESS_COMP_MATERIAL(assessment_session_comp_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSMT_SESS_COMP_MATERIAL') AND name='IDX_ASCM_SESSION')
    PRINT '<<< CREATED INDEX dbo.ASSMT_SESS_COMP_MATERIAL.IDX_ASCM_SESSION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSMT_SESS_COMP_MATERIAL.IDX_ASCM_SESSION >>>'
go
CREATE CLUSTERED INDEX IDX_BATCH_COMMENT_01
    ON dbo.BATCH_COMMENT(batch_input_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_COMMENT') AND name='IDX_BATCH_COMMENT_01')
    PRINT '<<< CREATED INDEX dbo.BATCH_COMMENT.IDX_BATCH_COMMENT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_COMMENT.IDX_BATCH_COMMENT_01 >>>'
go
CREATE CLUSTERED INDEX idx_com_method_01
    ON dbo.COM_METHOD(perorg_id,com_type_code,com_medium_code)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='idx_com_method_01')
    PRINT '<<< CREATED INDEX dbo.COM_METHOD.idx_com_method_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COM_METHOD.idx_com_method_01 >>>'
go
CREATE CLUSTERED INDEX idx_database_batch_version_01
    ON dbo.DATABASE_BATCH_VERSION(version_date,db)
LOCAL INDEX idx_database_batch_version_01_2079252077
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DATABASE_BATCH_VERSION') AND name='idx_database_batch_version_01')
    PRINT '<<< CREATED INDEX dbo.DATABASE_BATCH_VERSION.idx_database_batch_version_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DATABASE_BATCH_VERSION.idx_database_batch_version_01 >>>'
go
CREATE CLUSTERED INDEX idx_database_version_01
    ON dbo.DATABASE_VERSION(version_date,db)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DATABASE_VERSION') AND name='idx_database_version_01')
    PRINT '<<< CREATED INDEX dbo.DATABASE_VERSION.idx_database_version_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DATABASE_VERSION.idx_database_version_01 >>>'
go
CREATE CLUSTERED INDEX idx_DIARY_EVENT_01
    ON dbo.DIARY_EVENT(perorg_id,event_type)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_DIARY_EVENT_01')
    PRINT '<<< CREATED INDEX dbo.DIARY_EVENT.idx_DIARY_EVENT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIARY_EVENT.idx_DIARY_EVENT_01 >>>'
go
CREATE CLUSTERED INDEX idx_entry_02
    ON dbo.ENTRY(enrolment_id,entry_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_02')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_02 >>>'
go
CREATE CLUSTERED INDEX idx_entry_serial_number_01
    ON dbo.ENTRY_SERIAL_NUMBER(entry_id,entry_context_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SERIAL_NUMBER') AND name='idx_entry_serial_number_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY_SERIAL_NUMBER.idx_entry_serial_number_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_SERIAL_NUMBER.idx_entry_serial_number_01 >>>'
go
CREATE CLUSTERED INDEX idx_fin_transaction_nsn_01
    ON dbo.FINANCE_TRANSACTION_NSN(transaction_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION_NSN') AND name='idx_fin_transaction_nsn_01')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION_NSN.idx_fin_transaction_nsn_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION_NSN.idx_fin_transaction_nsn_01 >>>'
go
CREATE CLUSTERED INDEX idx_input_batch_error_02
    ON dbo.INPUT_BATCH_ERROR(standard_input_id,batch_error_code)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_input_batch_error_02')
    PRINT '<<< CREATED INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_02 >>>'
go
CREATE CLUSTERED INDEX idx_learner_enrolment_04
    ON dbo.LEARNER_ENROLMENT(learner_id,enrolment_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_04')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_04 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_assessment_session_02
    ON dbo.ASSESSMENT_SESSION(assessment_session_id,assessment_cycle_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION') AND name='uidx_assessment_session_02')
    PRINT '<<< CREATED INDEX dbo.ASSESSMENT_SESSION.uidx_assessment_session_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESSMENT_SESSION.uidx_assessment_session_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX UIDX_AWARDING_PROVIDER_MAP_01
    ON dbo.AWARDING_PROVIDER_MAP(submitting_provider_id,submitting_provider_location,awarding_provider_id,awarding_provider_location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARDING_PROVIDER_MAP') AND name='UIDX_AWARDING_PROVIDER_MAP_01')
    PRINT '<<< CREATED INDEX dbo.AWARDING_PROVIDER_MAP.UIDX_AWARDING_PROVIDER_MAP_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AWARDING_PROVIDER_MAP.UIDX_AWARDING_PROVIDER_MAP_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_BATCH_INPUT_02
    ON dbo.BATCH_INPUT(number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_02')
    PRINT '<<< CREATED INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX BAT_STAT_MAP_UQ_CNST
    ON dbo.BATCH_STATUS_MAP(provider_id,batch_type_code,from_status)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS_MAP') AND name='BAT_STAT_MAP_UQ_CNST')
    PRINT '<<< CREATED INDEX dbo.BATCH_STATUS_MAP.BAT_STAT_MAP_UQ_CNST >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_STATUS_MAP.BAT_STAT_MAP_UQ_CNST >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_booklet_retrieval_01
    ON dbo.BOOKLET_RETRIEVAL(entry_id,booklet_process_type,booklet_action_type)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BOOKLET_RETRIEVAL') AND name='uidx_booklet_retrieval_01')
    PRINT '<<< CREATED INDEX dbo.BOOKLET_RETRIEVAL.uidx_booklet_retrieval_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BOOKLET_RETRIEVAL.uidx_booklet_retrieval_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_CLAIM_CONTRACT
    ON dbo.CLAIM_CONTRACT(claim_contract_id,perorg_role_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_CONTRACT') AND name='AK_CLAIM_CONTRACT')
    PRINT '<<< CREATED INDEX dbo.CLAIM_CONTRACT.AK_CLAIM_CONTRACT >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CLAIM_CONTRACT.AK_CLAIM_CONTRACT >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_COURSE
    ON dbo.COURSE(course_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE') AND name='AK_COURSE')
    PRINT '<<< CREATED INDEX dbo.COURSE.AK_COURSE >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE.AK_COURSE >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_crse_endr_rule_std
    ON dbo.CRSE_ENDR_RULE_STD_TYPE(crse_endr_rule_id,std_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RULE_STD_TYPE') AND name='uidx_crse_endr_rule_std')
    PRINT '<<< CREATED INDEX dbo.CRSE_ENDR_RULE_STD_TYPE.uidx_crse_endr_rule_std >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CRSE_ENDR_RULE_STD_TYPE.uidx_crse_endr_rule_std >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_debtor_01
    ON dbo.DEBTOR(provider_id,location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DEBTOR') AND name='uidx_debtor_01')
    PRINT '<<< CREATED INDEX dbo.DEBTOR.uidx_debtor_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DEBTOR.uidx_debtor_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_ENDORSEMENT_DESC
    ON dbo.ENDORSEMENT(short_desc)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENDORSEMENT') AND name='AK_ENDORSEMENT_DESC')
    PRINT '<<< CREATED INDEX dbo.ENDORSEMENT.AK_ENDORSEMENT_DESC >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENDORSEMENT.AK_ENDORSEMENT_DESC >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_ENTRY_ASSISTANCE_01
    ON dbo.ENTRY_ASSISTANCE(entry_spec_assist_id,assistance_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_ASSISTANCE') AND name='idx_ENTRY_ASSISTANCE_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY_ASSISTANCE.idx_ENTRY_ASSISTANCE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_ASSISTANCE.idx_ENTRY_ASSISTANCE_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_EQA_SETTING_01
    ON dbo.EQA_SETTING(area,name)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EQA_SETTING') AND name='AK_EQA_SETTING_01')
    PRINT '<<< CREATED INDEX dbo.EQA_SETTING.AK_EQA_SETTING_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EQA_SETTING.AK_EQA_SETTING_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_AK_EXAM_MATERIAL_EXAM_MAT
    ON dbo.EXAM_MATERIAL(booklet_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL') AND name='AK_AK_EXAM_MATERIAL_EXAM_MAT')
    PRINT '<<< CREATED INDEX dbo.EXAM_MATERIAL.AK_AK_EXAM_MATERIAL_EXAM_MAT >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MATERIAL.AK_AK_EXAM_MATERIAL_EXAM_MAT >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_AC_YEAR_PAGE
    ON dbo.EX_MARKER_PAGE(academic_year,marker_page)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='IDX_AC_YEAR_PAGE')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE.IDX_AC_YEAR_PAGE >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE.IDX_AC_YEAR_PAGE >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_AC_YEAR_PAGE
    ON dbo.EX_MARKER_PAGE_LINE(ex_marker_page_id,line_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='IDX_AC_YEAR_PAGE')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.IDX_AC_YEAR_PAGE >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.IDX_AC_YEAR_PAGE >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_FINANCIAL_DETAIL_02
    ON dbo.FINANCIAL_DETAIL(financial_detail_id,perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCIAL_DETAIL') AND name='uidx_FINANCIAL_DETAIL_02')
    PRINT '<<< CREATED INDEX dbo.FINANCIAL_DETAIL.uidx_FINANCIAL_DETAIL_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCIAL_DETAIL.uidx_FINANCIAL_DETAIL_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_LEARNER_NSN
    ON dbo.LEARNER(learner_id,nsn)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='IDX_LEARNER_NSN')
    PRINT '<<< CREATED INDEX dbo.LEARNER.IDX_LEARNER_NSN >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER.IDX_LEARNER_NSN >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_learner_01
    ON dbo.LEARNER(nsn)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER.idx_learner_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER.idx_learner_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_learner_02
    ON dbo.LEARNER(perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_02')
    PRINT '<<< CREATED INDEX dbo.LEARNER.idx_learner_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER.idx_learner_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX ind_provider_exam_code
    ON dbo.LEARNER_ASSESSMENT_CENTRE(provider_id,location,academic_year,exam_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='ind_provider_exam_code')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ASSESSMENT_CENTRE.ind_provider_exam_code >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ASSESSMENT_CENTRE.ind_provider_exam_code >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_LEARNER_ENROLMENT_07
    ON dbo.LEARNER_ENROLMENT(enrolment_id,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_07')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_07 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_07 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX PK_AUDIT_TRANSACTION
    ON dbo.dba_pxy_audit_trans_pdtec2(audit_tran_oid)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='PK_AUDIT_TRANSACTION')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_audit_trans_pdtec2.PK_AUDIT_TRANSACTION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_audit_trans_pdtec2.PK_AUDIT_TRANSACTION >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX pk_dba_test_rep
    ON dbo.dba_pxy_dba_test_rep_dr(rep_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_dr') AND name='pk_dba_test_rep')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_dba_test_rep_dr.pk_dba_test_rep >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_dba_test_rep_dr.pk_dba_test_rep >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX pk_dba_test_rep
    ON dbo.dba_pxy_dba_test_rep_pdrpt2(rep_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_pdrpt2') AND name='pk_dba_test_rep')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_dba_test_rep_pdrpt2.pk_dba_test_rep >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_dba_test_rep_pdrpt2.pk_dba_test_rep >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX pk_dba_test_rep
    ON dbo.dba_pxy_dba_test_rep_pdtec2(rep_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_pdtec2') AND name='pk_dba_test_rep')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_dba_test_rep_pdtec2.pk_dba_test_rep >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_dba_test_rep_pdtec2.pk_dba_test_rep >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX pk_dba_test_rep
    ON dbo.dba_pxy_dba_test_rep_web11(rep_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_web11') AND name='pk_dba_test_rep')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_dba_test_rep_web11.pk_dba_test_rep >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_dba_test_rep_web11.pk_dba_test_rep >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX pk_dba_test_rep
    ON dbo.dba_pxy_dba_test_rep_web12(rep_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dba_test_rep_web12') AND name='pk_dba_test_rep')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_dba_test_rep_web12.pk_dba_test_rep >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_dba_test_rep_web12.pk_dba_test_rep >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX ncsysobjects
    ON dbo.dba_pxy_dr_sysobjects(name,uid)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_dr_sysobjects') AND name='ncsysobjects')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_dr_sysobjects.ncsysobjects >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_dr_sysobjects.ncsysobjects >>>'
go
CREATE NONCLUSTERED INDEX idx_assessment_session_01
    ON dbo.ASSESSMENT_SESSION(assessment_cycle_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION') AND name='idx_assessment_session_01')
    PRINT '<<< CREATED INDEX dbo.ASSESSMENT_SESSION.idx_assessment_session_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESSMENT_SESSION.idx_assessment_session_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_assessment_session_comp_03
    ON dbo.ASSESSMENT_SESSION_COMPONENT(allocation_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESSMENT_SESSION_COMPONENT') AND name='idx_assessment_session_comp_03')
    PRINT '<<< CREATED INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESSMENT_SESSION_COMPONENT.idx_assessment_session_comp_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_assess_sess_cmpt_score_01
    ON dbo.ASSESS_SESS_CMPT_CUT_SCORE(assessment_session_comp_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSESS_SESS_CMPT_CUT_SCORE') AND name='idx_assess_sess_cmpt_score_01')
    PRINT '<<< CREATED INDEX dbo.ASSESS_SESS_CMPT_CUT_SCORE.idx_assess_sess_cmpt_score_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSESS_SESS_CMPT_CUT_SCORE.idx_assess_sess_cmpt_score_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_assmt_sess_comp_mat_01
    ON dbo.ASSMT_SESS_COMP_MATERIAL(exam_material_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ASSMT_SESS_COMP_MATERIAL') AND name='idx_assmt_sess_comp_mat_01')
    PRINT '<<< CREATED INDEX dbo.ASSMT_SESS_COMP_MATERIAL.idx_assmt_sess_comp_mat_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ASSMT_SESS_COMP_MATERIAL.idx_assmt_sess_comp_mat_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_awarding_provider_map_02
    ON dbo.AWARDING_PROVIDER_MAP(awarding_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARDING_PROVIDER_MAP') AND name='idx_awarding_provider_map_02')
    PRINT '<<< CREATED INDEX dbo.AWARDING_PROVIDER_MAP.idx_awarding_provider_map_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AWARDING_PROVIDER_MAP.idx_awarding_provider_map_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_AWARD_DETAIL_01
    ON dbo.AWARD_DETAIL(award_recipient_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_DETAIL') AND name='idx_AWARD_DETAIL_01')
    PRINT '<<< CREATED INDEX dbo.AWARD_DETAIL.idx_AWARD_DETAIL_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AWARD_DETAIL.idx_AWARD_DETAIL_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_AWARD_RECIPIENT_01
    ON dbo.AWARD_RECIPIENT(learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_RECIPIENT') AND name='idx_AWARD_RECIPIENT_01')
    PRINT '<<< CREATED INDEX dbo.AWARD_RECIPIENT.idx_AWARD_RECIPIENT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AWARD_RECIPIENT.idx_AWARD_RECIPIENT_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_award_recipient_02
    ON dbo.AWARD_RECIPIENT(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.AWARD_RECIPIENT') AND name='idx_award_recipient_02')
    PRINT '<<< CREATED INDEX dbo.AWARD_RECIPIENT.idx_award_recipient_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AWARD_RECIPIENT.idx_award_recipient_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_batch_error_code_01
    ON dbo.BATCH_ERROR_CODE(batch_error_code,batch_error_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_ERROR_CODE') AND name='idx_batch_error_code_01')
    PRINT '<<< CREATED INDEX dbo.BATCH_ERROR_CODE.idx_batch_error_code_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_ERROR_CODE.idx_batch_error_code_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_INPUT_ID
    ON dbo.BATCH_ERROR_TOTAL(batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_ERROR_TOTAL') AND name='IDX_BATCH_INPUT_ID')
    PRINT '<<< CREATED INDEX dbo.BATCH_ERROR_TOTAL.IDX_BATCH_INPUT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_ERROR_TOTAL.IDX_BATCH_INPUT_ID >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_INPUT_01
    ON dbo.BATCH_INPUT(batch_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_01')
    PRINT '<<< CREATED INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_INPUT_03
    ON dbo.BATCH_INPUT(date_created)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_BATCH_INPUT_03')
    PRINT '<<< CREATED INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_INPUT.IDX_BATCH_INPUT_03 >>>'
go
CREATE NONCLUSTERED INDEX IDX_PROVIDER_ID
    ON dbo.BATCH_INPUT(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_INPUT') AND name='IDX_PROVIDER_ID')
    PRINT '<<< CREATED INDEX dbo.BATCH_INPUT.IDX_PROVIDER_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_INPUT.IDX_PROVIDER_ID >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_STATUS_02
    ON dbo.BATCH_STATUS(batch_status_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='IDX_BATCH_STATUS_02')
    PRINT '<<< CREATED INDEX dbo.BATCH_STATUS.IDX_BATCH_STATUS_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_STATUS.IDX_BATCH_STATUS_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_batch_status_01
    ON dbo.BATCH_STATUS(batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_batch_status_01')
    PRINT '<<< CREATED INDEX dbo.BATCH_STATUS.idx_batch_status_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_STATUS.idx_batch_status_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_batch_status_date
    ON dbo.BATCH_STATUS(date_created,batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_batch_status_date')
    PRINT '<<< CREATED INDEX dbo.BATCH_STATUS.idx_batch_status_date >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_STATUS.idx_batch_status_date >>>'
go
CREATE NONCLUSTERED INDEX idx_date_type
    ON dbo.BATCH_STATUS(date_created,batch_status_type_code,batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_STATUS') AND name='idx_date_type')
    PRINT '<<< CREATED INDEX dbo.BATCH_STATUS.idx_date_type >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_STATUS.idx_date_type >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_INPUT_ID
    ON dbo.BATCH_SUMMARY_TOTAL(batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.BATCH_SUMMARY_TOTAL') AND name='IDX_BATCH_INPUT_ID')
    PRINT '<<< CREATED INDEX dbo.BATCH_SUMMARY_TOTAL.IDX_BATCH_INPUT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.BATCH_SUMMARY_TOTAL.IDX_BATCH_INPUT_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_CFN_CATEGORY_01
    ON dbo.CFN_CATEGORY(parent_cfn_catg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='idx_CFN_CATEGORY_01')
    PRINT '<<< CREATED INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_CFN_CATEGORY_cfn_catg_num
    ON dbo.CFN_CATEGORY(cfn_catg_number,cfn_system_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='idx_CFN_CATEGORY_cfn_catg_num')
    PRINT '<<< CREATED INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_cfn_catg_num >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CFN_CATEGORY.idx_CFN_CATEGORY_cfn_catg_num >>>'
go
CREATE NONCLUSTERED INDEX repl_1505346042_250
    ON dbo.CFN_CATEGORY(cfn_catg_descr_text)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_CATEGORY') AND name='repl_1505346042_250')
    PRINT '<<< CREATED INDEX dbo.CFN_CATEGORY.repl_1505346042_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CFN_CATEGORY.repl_1505346042_250 >>>'
go
CREATE NONCLUSTERED INDEX IDX_CFN_REL_FROM_REL
    ON dbo.CFN_RELATIONSHIP_FROM(cfn_rel_header_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_RELATIONSHIP_FROM') AND name='IDX_CFN_REL_FROM_REL')
    PRINT '<<< CREATED INDEX dbo.CFN_RELATIONSHIP_FROM.IDX_CFN_REL_FROM_REL >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CFN_RELATIONSHIP_FROM.IDX_CFN_REL_FROM_REL >>>'
go
CREATE NONCLUSTERED INDEX IDX_CFN_REL_TO_REL
    ON dbo.CFN_RELATIONSHIP_TO(cfn_rel_header_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_RELATIONSHIP_TO') AND name='IDX_CFN_REL_TO_REL')
    PRINT '<<< CREATED INDEX dbo.CFN_RELATIONSHIP_TO.IDX_CFN_REL_TO_REL >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CFN_RELATIONSHIP_TO.IDX_CFN_REL_TO_REL >>>'
go
CREATE NONCLUSTERED INDEX idx_CFN_UPDATES_01
    ON dbo.CFN_UPDATES(update_time)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CFN_UPDATES') AND name='idx_CFN_UPDATES_01')
    PRINT '<<< CREATED INDEX dbo.CFN_UPDATES.idx_CFN_UPDATES_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CFN_UPDATES.idx_CFN_UPDATES_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_claim_item_01
    ON dbo.CLAIM_ITEM(person_claim_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_ITEM') AND name='idx_claim_item_01')
    PRINT '<<< CREATED INDEX dbo.CLAIM_ITEM.idx_claim_item_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CLAIM_ITEM.idx_claim_item_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_claim_rate_item_type_contract_id
    ON dbo.CLAIM_RATE(claim_item_type_id,claim_contract_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_RATE') AND name='idx_claim_rate_item_type_contract_id')
    PRINT '<<< CREATED INDEX dbo.CLAIM_RATE.idx_claim_rate_item_type_contract_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CLAIM_RATE.idx_claim_rate_item_type_contract_id >>>'
go
CREATE NONCLUSTERED INDEX idx_claim_unit_claim_id
    ON dbo.CLAIM_UNIT(person_claim_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_UNIT') AND name='idx_claim_unit_claim_id')
    PRINT '<<< CREATED INDEX dbo.CLAIM_UNIT.idx_claim_unit_claim_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CLAIM_UNIT.idx_claim_unit_claim_id >>>'
go
CREATE NONCLUSTERED INDEX idx_claim_unit_quantity_01
    ON dbo.CLAIM_UNIT_QUANTITY(claim_unit_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CLAIM_UNIT_QUANTITY') AND name='idx_claim_unit_quantity_01')
    PRINT '<<< CREATED INDEX dbo.CLAIM_UNIT_QUANTITY.idx_claim_unit_quantity_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CLAIM_UNIT_QUANTITY.idx_claim_unit_quantity_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_COMPASSIONATE_01
    ON dbo.COMPASSIONATE(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='idx_COMPASSIONATE_01')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE.idx_COMPASSIONATE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE.idx_COMPASSIONATE_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_compassionate_02
    ON dbo.COMPASSIONATE(perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='idx_compassionate_02')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE.idx_compassionate_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE.idx_compassionate_02 >>>'
go
CREATE NONCLUSTERED INDEX repl_328437263_250
    ON dbo.COMPASSIONATE(reason)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE') AND name='repl_328437263_250')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE.repl_328437263_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE.repl_328437263_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_COMPASSIONATE_ENTRY_01
    ON dbo.COMPASSIONATE_ENTRY(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_COMPASSIONATE_ENTRY_01')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE_ENTRY.idx_COMPASSIONATE_ENTRY_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE_ENTRY.idx_COMPASSIONATE_ENTRY_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_compassionate_entry_02
    ON dbo.COMPASSIONATE_ENTRY(compassionate_status_code,compassionate_entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_compassionate_entry_02')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_compassionate_entry_03
    ON dbo.COMPASSIONATE_ENTRY(compassionate_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_ENTRY') AND name='idx_compassionate_entry_03')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE_ENTRY.idx_compassionate_entry_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_COMPASSIONATE_PEER_01
    ON dbo.COMPASSIONATE_PEER(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_PEER') AND name='idx_COMPASSIONATE_PEER_01')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE_PEER.idx_COMPASSIONATE_PEER_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE_PEER.idx_COMPASSIONATE_PEER_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_compassionate_peer_02
    ON dbo.COMPASSIONATE_PEER(compassionate_entry_id,compassionate_peer_id,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COMPASSIONATE_PEER') AND name='idx_compassionate_peer_02')
    PRINT '<<< CREATED INDEX dbo.COMPASSIONATE_PEER.idx_compassionate_peer_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COMPASSIONATE_PEER.idx_compassionate_peer_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_COM_METHOD_02
    ON dbo.COM_METHOD(rel_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_02')
    PRINT '<<< CREATED INDEX dbo.COM_METHOD.IDX_COM_METHOD_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COM_METHOD.IDX_COM_METHOD_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_COM_METHOD_04
    ON dbo.COM_METHOD(original_reference_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_04')
    PRINT '<<< CREATED INDEX dbo.COM_METHOD.IDX_COM_METHOD_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COM_METHOD.IDX_COM_METHOD_04 >>>'
go
CREATE NONCLUSTERED INDEX IDX_COM_METHOD_ADDR1
    ON dbo.COM_METHOD(addr_1)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='IDX_COM_METHOD_ADDR1')
    PRINT '<<< CREATED INDEX dbo.COM_METHOD.IDX_COM_METHOD_ADDR1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COM_METHOD.IDX_COM_METHOD_ADDR1 >>>'
go
CREATE NONCLUSTERED INDEX idx_COM_METHOD_03
    ON dbo.COM_METHOD(perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COM_METHOD') AND name='idx_COM_METHOD_03')
    PRINT '<<< CREATED INDEX dbo.COM_METHOD.idx_COM_METHOD_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COM_METHOD.idx_COM_METHOD_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_cost_allocation_01
    ON dbo.COST_ALLOCATION(transaction_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COST_ALLOCATION') AND name='idx_cost_allocation_01')
    PRINT '<<< CREATED INDEX dbo.COST_ALLOCATION.idx_cost_allocation_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COST_ALLOCATION.idx_cost_allocation_01 >>>'
go
CREATE NONCLUSTERED INDEX Idx_course_version_02
    ON dbo.COURSE_VERSION(course_owner_perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='Idx_course_version_02')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.Idx_course_version_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.Idx_course_version_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_course_version_01
    ON dbo.COURSE_VERSION(course_title)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='idx_course_version_01')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.idx_course_version_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.idx_course_version_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_course_version_03
    ON dbo.COURSE_VERSION(last_updated_perorg_case_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='idx_course_version_03')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.idx_course_version_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.idx_course_version_03 >>>'
go
CREATE NONCLUSTERED INDEX repl_946684731_246
    ON dbo.COURSE_VERSION(comments)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_246')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.repl_946684731_246 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.repl_946684731_246 >>>'
go
CREATE NONCLUSTERED INDEX repl_946684731_247
    ON dbo.COURSE_VERSION(outcome)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_247')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.repl_946684731_247 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.repl_946684731_247 >>>'
go
CREATE NONCLUSTERED INDEX repl_946684731_248
    ON dbo.COURSE_VERSION(entry_requirement)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_248')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.repl_946684731_248 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.repl_946684731_248 >>>'
go
CREATE NONCLUSTERED INDEX repl_946684731_249
    ON dbo.COURSE_VERSION(content)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_249')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.repl_946684731_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.repl_946684731_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_946684731_250
    ON dbo.COURSE_VERSION(aim)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION') AND name='repl_946684731_250')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION.repl_946684731_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION.repl_946684731_250 >>>'
go
CREATE NONCLUSTERED INDEX idx1_COURSE_VERSION_QFN_VER_01
    ON dbo.COURSE_VERSION_QFN_VERSION(course_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_QFN_VERSION') AND name='idx1_COURSE_VERSION_QFN_VER_01')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_01 >>>'
go
CREATE NONCLUSTERED INDEX idx1_COURSE_VERSION_QFN_VER_02
    ON dbo.COURSE_VERSION_QFN_VERSION(qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_QFN_VERSION') AND name='idx1_COURSE_VERSION_QFN_VER_02')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION_QFN_VERSION.idx1_COURSE_VERSION_QFN_VER_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_course_ver_status_hist_01
    ON dbo.COURSE_VERSION_STATUS_HIST(course_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_STATUS_HIST') AND name='idx_course_ver_status_hist_01')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION_STATUS_HIST.idx_course_ver_status_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION_STATUS_HIST.idx_course_ver_status_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_COURSE_VER_STD_CRSE_VER_ID
    ON dbo.COURSE_VERSION_STD(course_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.COURSE_VERSION_STD') AND name='IDX_COURSE_VER_STD_CRSE_VER_ID')
    PRINT '<<< CREATED INDEX dbo.COURSE_VERSION_STD.IDX_COURSE_VER_STD_CRSE_VER_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.COURSE_VERSION_STD.IDX_COURSE_VER_STD_CRSE_VER_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_crse_endr_achv_sta_hist_01
    ON dbo.CRSE_ENDR_ACHV_STA_HIST(crse_endr_result_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_ACHV_STA_HIST') AND name='idx_crse_endr_achv_sta_hist_01')
    PRINT '<<< CREATED INDEX dbo.CRSE_ENDR_ACHV_STA_HIST.idx_crse_endr_achv_sta_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CRSE_ENDR_ACHV_STA_HIST.idx_crse_endr_achv_sta_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_crse_endr_exemption_01
    ON dbo.CRSE_ENDR_EXEMPTION(crse_endr_rule_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_EXEMPTION') AND name='idx_crse_endr_exemption_01')
    PRINT '<<< CREATED INDEX dbo.CRSE_ENDR_EXEMPTION.idx_crse_endr_exemption_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CRSE_ENDR_EXEMPTION.idx_crse_endr_exemption_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_crse_endr_result_01
    ON dbo.CRSE_ENDR_RESULT(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RESULT') AND name='idx_crse_endr_result_01')
    PRINT '<<< CREATED INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_crse_endr_result_02
    ON dbo.CRSE_ENDR_RESULT(secondary_course_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_RESULT') AND name='idx_crse_endr_result_02')
    PRINT '<<< CREATED INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CRSE_ENDR_RESULT.idx_crse_endr_result_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_crse_endr_sop_01
    ON dbo.CRSE_ENDR_SOP(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.CRSE_ENDR_SOP') AND name='idx_crse_endr_sop_01')
    PRINT '<<< CREATED INDEX dbo.CRSE_ENDR_SOP.idx_crse_endr_sop_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.CRSE_ENDR_SOP.idx_crse_endr_sop_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_60524218_250
    ON dbo.DEAD_MESSAGE_QUEUE(msg_image)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DEAD_MESSAGE_QUEUE') AND name='repl_60524218_250')
    PRINT '<<< CREATED INDEX dbo.DEAD_MESSAGE_QUEUE.repl_60524218_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DEAD_MESSAGE_QUEUE.repl_60524218_250 >>>'
go
CREATE NONCLUSTERED INDEX IDX_DIARY_EVENT_04
    ON dbo.DIARY_EVENT(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='IDX_DIARY_EVENT_04')
    PRINT '<<< CREATED INDEX dbo.DIARY_EVENT.IDX_DIARY_EVENT_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIARY_EVENT.IDX_DIARY_EVENT_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_diary_event_02
    ON dbo.DIARY_EVENT(original_reference_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_02')
    PRINT '<<< CREATED INDEX dbo.DIARY_EVENT.idx_diary_event_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIARY_EVENT.idx_diary_event_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_diary_event_03
    ON dbo.DIARY_EVENT(event_type,original_reference_id,event_subject)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_03')
    PRINT '<<< CREATED INDEX dbo.DIARY_EVENT.idx_diary_event_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIARY_EVENT.idx_diary_event_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_diary_event_05
    ON dbo.DIARY_EVENT(previous_reference_id,event_subject)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIARY_EVENT') AND name='idx_diary_event_05')
    PRINT '<<< CREATED INDEX dbo.DIARY_EVENT.idx_diary_event_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIARY_EVENT.idx_diary_event_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_digital_entry_result_id
    ON dbo.DIGITAL_ENTRY(result_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_ENTRY') AND name='idx_digital_entry_result_id')
    PRINT '<<< CREATED INDEX dbo.DIGITAL_ENTRY.idx_digital_entry_result_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIGITAL_ENTRY.idx_digital_entry_result_id >>>'
go
CREATE NONCLUSTERED INDEX idx_digital_result_entry
    ON dbo.DIGITAL_RESULT(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_entry')
    PRINT '<<< CREATED INDEX dbo.DIGITAL_RESULT.idx_digital_result_entry >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIGITAL_RESULT.idx_digital_result_entry >>>'
go
CREATE NONCLUSTERED INDEX idx_digital_result_learner_nsn
    ON dbo.DIGITAL_RESULT(learner_nsn)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_learner_nsn')
    PRINT '<<< CREATED INDEX dbo.DIGITAL_RESULT.idx_digital_result_learner_nsn >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIGITAL_RESULT.idx_digital_result_learner_nsn >>>'
go
CREATE NONCLUSTERED INDEX idx_digital_result_moe
    ON dbo.DIGITAL_RESULT(moe_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_moe')
    PRINT '<<< CREATED INDEX dbo.DIGITAL_RESULT.idx_digital_result_moe >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIGITAL_RESULT.idx_digital_result_moe >>>'
go
CREATE NONCLUSTERED INDEX idx_digital_result_std_number
    ON dbo.DIGITAL_RESULT(std_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DIGITAL_RESULT') AND name='idx_digital_result_std_number')
    PRINT '<<< CREATED INDEX dbo.DIGITAL_RESULT.idx_digital_result_std_number >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DIGITAL_RESULT.idx_digital_result_std_number >>>'
go
CREATE NONCLUSTERED INDEX idx_DOUBLE_DIP_STD_MAPPING_01
    ON dbo.DOUBLE_DIP_STD_MAPPING(std_mapping_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.DOUBLE_DIP_STD_MAPPING') AND name='idx_DOUBLE_DIP_STD_MAPPING_01')
    PRINT '<<< CREATED INDEX dbo.DOUBLE_DIP_STD_MAPPING.idx_DOUBLE_DIP_STD_MAPPING_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.DOUBLE_DIP_STD_MAPPING.idx_DOUBLE_DIP_STD_MAPPING_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_endr_result_detail_01
    ON dbo.ENDR_RESULT_DETAIL(crse_endr_result_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENDR_RESULT_DETAIL') AND name='idx_endr_result_detail_01')
    PRINT '<<< CREATED INDEX dbo.ENDR_RESULT_DETAIL.idx_endr_result_detail_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENDR_RESULT_DETAIL.idx_endr_result_detail_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_enrolment_fee_01
    ON dbo.ENROLMENT_FEE(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENROLMENT_FEE') AND name='idx_enrolment_fee_01')
    PRINT '<<< CREATED INDEX dbo.ENROLMENT_FEE.idx_enrolment_fee_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENROLMENT_FEE.idx_enrolment_fee_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_01
    ON dbo.ENTRY(provider_id,location,entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_03
    ON dbo.ENTRY(std_number,std_version_number,marker_allocation_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_03')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_04
    ON dbo.ENTRY(marker_allocation_group_id,entry_status)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_04')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_05
    ON dbo.ENTRY(std_number,std_version_number,entry_status,enrolment_id,marker_allocation_group_id,next_marker_ag_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_05')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_07
    ON dbo.ENTRY(academic_year,study_provider_id,study_provider_location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_07')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_07 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_07 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_08
    ON dbo.ENTRY(study_provider_id,study_provider_location,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_08')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_08 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_08 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_09
    ON dbo.ENTRY(qfn_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_09')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_09 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_09 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_10
    ON dbo.ENTRY(academic_year,std_number,std_version_number,entry_id,entry_status,enrolment_id,te_reo_paper,answer_in_maori_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_10')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_10 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_10 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_11
    ON dbo.ENTRY(next_marker_ag_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_11')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_11 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_11 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_12
    ON dbo.ENTRY(std_number,academic_year,study_provider_id,provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_12')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_12 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_12 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_scourse_id
    ON dbo.ENTRY(secondary_course_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_entry_scourse_id')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_entry_scourse_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_entry_scourse_id >>>'
go
CREATE NONCLUSTERED INDEX idx_recons_entry_01
    ON dbo.ENTRY(reconsideration_status,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY') AND name='idx_recons_entry_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY.idx_recons_entry_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY.idx_recons_entry_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ep_01
    ON dbo.ENTRY_PERSONALISATION(enrolment_id,personalisation_run_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ep_02
    ON dbo.ENTRY_PERSONALISATION(assessment_centre_id,enrolment_id,entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_02')
    PRINT '<<< CREATED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_ep_03
    ON dbo.ENTRY_PERSONALISATION(personalisation_run_id,assessment_centre_id,std_number,std_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_03')
    PRINT '<<< CREATED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_ep_04
    ON dbo.ENTRY_PERSONALISATION(marker_allocation_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_PERSONALISATION') AND name='idx_ep_04')
    PRINT '<<< CREATED INDEX dbo.ENTRY_PERSONALISATION.idx_ep_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_PERSONALISATION.idx_ep_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_review_01
    ON dbo.ENTRY_REVIEW(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_REVIEW') AND name='idx_entry_review_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY_REVIEW.idx_entry_review_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_REVIEW.idx_entry_review_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_sec_course_hist_01
    ON dbo.ENTRY_SEC_COURSE_HIST(secondary_course_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SEC_COURSE_HIST') AND name='idx_entry_sec_course_hist_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_entry_sec_course_hist_03
    ON dbo.ENTRY_SEC_COURSE_HIST(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SEC_COURSE_HIST') AND name='idx_entry_sec_course_hist_03')
    PRINT '<<< CREATED INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_SEC_COURSE_HIST.idx_entry_sec_course_hist_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_ENTRY_SPEC_ASSIST_01
    ON dbo.ENTRY_SPEC_ASSIST(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SPEC_ASSIST') AND name='idx_ENTRY_SPEC_ASSIST_01')
    PRINT '<<< CREATED INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ENTRY_SPEC_ASSIST_status_code
    ON dbo.ENTRY_SPEC_ASSIST(spec_assist_status_code,entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ENTRY_SPEC_ASSIST') AND name='idx_ENTRY_SPEC_ASSIST_status_code')
    PRINT '<<< CREATED INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_status_code >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ENTRY_SPEC_ASSIST.idx_ENTRY_SPEC_ASSIST_status_code >>>'
go
CREATE NONCLUSTERED INDEX idx_eqa_setting_history_01
    ON dbo.EQA_SETTING_HISTORY(eqa_setting_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EQA_SETTING_HISTORY') AND name='idx_eqa_setting_history_01')
    PRINT '<<< CREATED INDEX dbo.EQA_SETTING_HISTORY.idx_eqa_setting_history_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EQA_SETTING_HISTORY.idx_eqa_setting_history_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_ETHNICITY_01
    ON dbo.ETHNICITY(perorg_id,ethnicity_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ETHNICITY') AND name='IDX_ETHNICITY_01')
    PRINT '<<< CREATED INDEX dbo.ETHNICITY.IDX_ETHNICITY_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ETHNICITY.IDX_ETHNICITY_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_EXAM_ABSENT_SCRIPT_01
    ON dbo.EXAM_ABSENT_SCRIPT(nsn)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ABSENT_SCRIPT') AND name='IDX_EXAM_ABSENT_SCRIPT_01')
    PRINT '<<< CREATED INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_EXAM_ABSENT_SCRIPT_02
    ON dbo.EXAM_ABSENT_SCRIPT(nsn,standard_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ABSENT_SCRIPT') AND name='IDX_EXAM_ABSENT_SCRIPT_02')
    PRINT '<<< CREATED INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_ABSENT_SCRIPT.IDX_EXAM_ABSENT_SCRIPT_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_EXAM_ATTENDANCE_01
    ON dbo.EXAM_ATTENDANCE(exam_centre_id,session_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_01')
    PRINT '<<< CREATED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_EXAM_ATTENDANCE_02
    ON dbo.EXAM_ATTENDANCE(candidate_surname,candidate_firstname)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_02')
    PRINT '<<< CREATED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_EXAM_ATTENDANCE_03
    ON dbo.EXAM_ATTENDANCE(session_code,entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_03')
    PRINT '<<< CREATED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_03 >>>'
go
CREATE NONCLUSTERED INDEX IDX_EXAM_ATTENDANCE_04
    ON dbo.EXAM_ATTENDANCE(nsn,standard_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_ATTENDANCE') AND name='IDX_EXAM_ATTENDANCE_04')
    PRINT '<<< CREATED INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_ATTENDANCE.IDX_EXAM_ATTENDANCE_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_exam_centre_alloc_rule_centre_id
    ON dbo.EXAM_CENTRE_ALLOC_RULE(exam_centre_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_CENTRE_ALLOC_RULE') AND name='idx_exam_centre_alloc_rule_centre_id')
    PRINT '<<< CREATED INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_centre_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_centre_id >>>'
go
CREATE NONCLUSTERED INDEX idx_exam_centre_alloc_rule_prev_centre_id
    ON dbo.EXAM_CENTRE_ALLOC_RULE(prev_exam_centre_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_CENTRE_ALLOC_RULE') AND name='idx_exam_centre_alloc_rule_prev_centre_id')
    PRINT '<<< CREATED INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_prev_centre_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_CENTRE_ALLOC_RULE.idx_exam_centre_alloc_rule_prev_centre_id >>>'
go
CREATE NONCLUSTERED INDEX idx_EXAM_MATERIALS_CODE_01
    ON dbo.EXAM_MATERIALS_CODE(std_number,personalised_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIALS_CODE') AND name='idx_EXAM_MATERIALS_CODE_01')
    PRINT '<<< CREATED INDEX dbo.EXAM_MATERIALS_CODE.idx_EXAM_MATERIALS_CODE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MATERIALS_CODE.idx_EXAM_MATERIALS_CODE_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_EXAM_MATERIAL_CMPT_02
    ON dbo.EXAM_MATERIAL_CMPT(exam_mtl_file_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL_CMPT') AND name='idx_EXAM_MATERIAL_CMPT_02')
    PRINT '<<< CREATED INDEX dbo.EXAM_MATERIAL_CMPT.idx_EXAM_MATERIAL_CMPT_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MATERIAL_CMPT.idx_EXAM_MATERIAL_CMPT_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_exam_material_cmpt_01
    ON dbo.EXAM_MATERIAL_CMPT(std_number,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MATERIAL_CMPT') AND name='idx_exam_material_cmpt_01')
    PRINT '<<< CREATED INDEX dbo.EXAM_MATERIAL_CMPT.idx_exam_material_cmpt_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MATERIAL_CMPT.idx_exam_material_cmpt_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_exam_mtl_cmpt_addl_vol_01
    ON dbo.EXAM_MTL_CMPT_ADDL_VOL(exam_material_cmpt_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_CMPT_ADDL_VOL') AND name='idx_exam_mtl_cmpt_addl_vol_01')
    PRINT '<<< CREATED INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_exam_mtl_cmpt_addl_vol_centre_id
    ON dbo.EXAM_MTL_CMPT_ADDL_VOL(exam_centre_id,exam_centre_location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_CMPT_ADDL_VOL') AND name='idx_exam_mtl_cmpt_addl_vol_centre_id')
    PRINT '<<< CREATED INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_centre_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MTL_CMPT_ADDL_VOL.idx_exam_mtl_cmpt_addl_vol_centre_id >>>'
go
CREATE NONCLUSTERED INDEX idx_exam_mtl_file_input_01
    ON dbo.EXAM_MTL_FILE_INPUT(file_name)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_FILE_INPUT') AND name='idx_exam_mtl_file_input_01')
    PRINT '<<< CREATED INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_exam_mtl_file_input_02
    ON dbo.EXAM_MTL_FILE_INPUT(uploaded_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EXAM_MTL_FILE_INPUT') AND name='idx_exam_mtl_file_input_02')
    PRINT '<<< CREATED INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EXAM_MTL_FILE_INPUT.idx_exam_mtl_file_input_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_02
    ON dbo.EX_MARKER_PAGE(marker_code,schedule_type,academic_year,ex_marker_page_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_02')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_03
    ON dbo.EX_MARKER_PAGE(study_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_03')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_04
    ON dbo.EX_MARKER_PAGE(page_display_type_code,ex_marker_page_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_04')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_05
    ON dbo.EX_MARKER_PAGE(line_sort_order_code,ex_marker_page_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_05')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_06
    ON dbo.EX_MARKER_PAGE(ex_marker_page_id,marker_code,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE') AND name='idx_ex_marker_page_06')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_06 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE.idx_ex_marker_page_06 >>>'
go
CREATE NONCLUSTERED INDEX idx_EX_MARKER_PAGE_HISTORY_01
    ON dbo.EX_MARKER_PAGE_HISTORY(marker_id_new)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_01')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_EX_MARKER_PAGE_HISTORY_02
    ON dbo.EX_MARKER_PAGE_HISTORY(marker_id_old)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_02')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_EX_MARKER_PAGE_HISTORY_03
    ON dbo.EX_MARKER_PAGE_HISTORY(ex_marker_page_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_HISTORY') AND name='idx_EX_MARKER_PAGE_HISTORY_03')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_HISTORY.idx_EX_MARKER_PAGE_HISTORY_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_01
    ON dbo.EX_MARKER_PAGE_LINE(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_01')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_02
    ON dbo.EX_MARKER_PAGE_LINE(std_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_02')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_03
    ON dbo.EX_MARKER_PAGE_LINE(result_component_link_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_03')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_04
    ON dbo.EX_MARKER_PAGE_LINE(line_origin_type_code,ex_marker_page_line_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_04')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_05
    ON dbo.EX_MARKER_PAGE_LINE(ex_marker_page_id,std_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_05')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_06
    ON dbo.EX_MARKER_PAGE_LINE(ex_marker_page_id,ex_marker_page_line_id,is_submitted_internally,date_entered,results_date_to)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_06')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_06 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_06 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_07
    ON dbo.EX_MARKER_PAGE_LINE(nsn)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_07')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_07 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_07 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_marker_page_line_08
    ON dbo.EX_MARKER_PAGE_LINE(enrolment_id,in_sper)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE') AND name='idx_ex_marker_page_line_08')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_08 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE.idx_ex_marker_page_line_08 >>>'
go
CREATE NONCLUSTERED INDEX idx_EX_MARKER_PAGE_LINE_HIST_1
    ON dbo.EX_MARKER_PAGE_LINE_HISTORY(marker_id_new)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE_HISTORY') AND name='idx_EX_MARKER_PAGE_LINE_HIST_1')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_1 >>>'
go
CREATE NONCLUSTERED INDEX idx_EX_MARKER_PAGE_LINE_HIST_2
    ON dbo.EX_MARKER_PAGE_LINE_HISTORY(marker_id_old)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MARKER_PAGE_LINE_HISTORY') AND name='idx_EX_MARKER_PAGE_LINE_HIST_2')
    PRINT '<<< CREATED INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MARKER_PAGE_LINE_HISTORY.idx_EX_MARKER_PAGE_LINE_HIST_2 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_mrkr_page_input_01
    ON dbo.EX_MRKR_PAGE_INPUT(marker_page,marker_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_INPUT') AND name='idx_ex_mrkr_page_input_01')
    PRINT '<<< CREATED INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_mrkr_page_input_02
    ON dbo.EX_MRKR_PAGE_INPUT(ex_mrkr_batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_INPUT') AND name='idx_ex_mrkr_page_input_02')
    PRINT '<<< CREATED INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MRKR_PAGE_INPUT.idx_ex_mrkr_page_input_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_mrkr_page_line_input_01
    ON dbo.EX_MRKR_PAGE_LINE_INPUT(ex_mrkr_page_input_id,line_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_LINE_INPUT') AND name='idx_ex_mrkr_page_line_input_01')
    PRINT '<<< CREATED INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_ex_mrkr_page_line_input_02
    ON dbo.EX_MRKR_PAGE_LINE_INPUT(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.EX_MRKR_PAGE_LINE_INPUT') AND name='idx_ex_mrkr_page_line_input_02')
    PRINT '<<< CREATED INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.EX_MRKR_PAGE_LINE_INPUT.idx_ex_mrkr_page_line_input_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_FINANCE_TRANSACTION_04
    ON dbo.FINANCE_TRANSACTION(trans_run_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='IDX_FINANCE_TRANSACTION_04')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.IDX_FINANCE_TRANSACTION_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.IDX_FINANCE_TRANSACTION_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_FINANCE_TRANSACTION_01
    ON dbo.FINANCE_TRANSACTION(provider_id,provider_location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_01')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_FINANCE_TRANSACTION_03
    ON dbo.FINANCE_TRANSACTION(transaction_number,fin_transac_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_03')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_FINANCE_TRANSACTION_05
    ON dbo.FINANCE_TRANSACTION(fin_transac_status_code,fin_transac_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_05')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_FINANCE_TRANSACTION_06
    ON dbo.FINANCE_TRANSACTION(batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_FINANCE_TRANSACTION_06')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_06 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.idx_FINANCE_TRANSACTION_06 >>>'
go
CREATE NONCLUSTERED INDEX idx_finance_transaction_02
    ON dbo.FINANCE_TRANSACTION(enrolment_id,transaction_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_finance_transaction_02')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_finance_transaction_07
    ON dbo.FINANCE_TRANSACTION(parent_transaction_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='idx_finance_transaction_07')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_07 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.idx_finance_transaction_07 >>>'
go
CREATE NONCLUSTERED INDEX tix_aud_FINANCE_TRANSACTION
    ON dbo.FINANCE_TRANSACTION(audit_tran_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCE_TRANSACTION') AND name='tix_aud_FINANCE_TRANSACTION')
    PRINT '<<< CREATED INDEX dbo.FINANCE_TRANSACTION.tix_aud_FINANCE_TRANSACTION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCE_TRANSACTION.tix_aud_FINANCE_TRANSACTION >>>'
go
CREATE NONCLUSTERED INDEX idx_FINANCIAL_DETAIL_01
    ON dbo.FINANCIAL_DETAIL(financial_detail_type)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FINANCIAL_DETAIL') AND name='idx_FINANCIAL_DETAIL_01')
    PRINT '<<< CREATED INDEX dbo.FINANCIAL_DETAIL.idx_FINANCIAL_DETAIL_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FINANCIAL_DETAIL.idx_FINANCIAL_DETAIL_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_forbidden_provider_01
    ON dbo.FORBIDDEN_PROVIDER(marker_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.FORBIDDEN_PROVIDER') AND name='idx_forbidden_provider_01')
    PRINT '<<< CREATED INDEX dbo.FORBIDDEN_PROVIDER.idx_forbidden_provider_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.FORBIDDEN_PROVIDER.idx_forbidden_provider_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_INPUT_ID
    ON dbo.INPUT_BATCH_ERROR(batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_BATCH_INPUT_ID')
    PRINT '<<< CREATED INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_INPUT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_INPUT_ID >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_REF
    ON dbo.INPUT_BATCH_ERROR(batch_ref)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_BATCH_REF')
    PRINT '<<< CREATED INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_REF >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.INPUT_BATCH_ERROR.IDX_BATCH_REF >>>'
go
CREATE NONCLUSTERED INDEX IDX_LEARNER_INPUT_ID
    ON dbo.INPUT_BATCH_ERROR(learner_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='IDX_LEARNER_INPUT_ID')
    PRINT '<<< CREATED INDEX dbo.INPUT_BATCH_ERROR.IDX_LEARNER_INPUT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.INPUT_BATCH_ERROR.IDX_LEARNER_INPUT_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_INPUT_BATCH_ERROR_04
    ON dbo.INPUT_BATCH_ERROR(mark_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_INPUT_BATCH_ERROR_04')
    PRINT '<<< CREATED INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_INPUT_BATCH_ERROR_05
    ON dbo.INPUT_BATCH_ERROR(secondary_course_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_INPUT_BATCH_ERROR_05')
    PRINT '<<< CREATED INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.INPUT_BATCH_ERROR.idx_INPUT_BATCH_ERROR_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_input_batch_error_03
    ON dbo.INPUT_BATCH_ERROR(batch_error_code,standard_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.INPUT_BATCH_ERROR') AND name='idx_input_batch_error_03')
    PRINT '<<< CREATED INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.INPUT_BATCH_ERROR.idx_input_batch_error_03 >>>'
go
CREATE NONCLUSTERED INDEX IDX_IWI_01
    ON dbo.IWI(perorg_id,iwi_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.IWI') AND name='IDX_IWI_01')
    PRINT '<<< CREATED INDEX dbo.IWI.IDX_IWI_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.IWI.IDX_IWI_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_1676295192_249
    ON dbo.JBM_MSG(PAYLOAD)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG') AND name='repl_1676295192_249')
    PRINT '<<< CREATED INDEX dbo.JBM_MSG.repl_1676295192_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.JBM_MSG.repl_1676295192_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_1676295192_250
    ON dbo.JBM_MSG(HEADERS)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG') AND name='repl_1676295192_250')
    PRINT '<<< CREATED INDEX dbo.JBM_MSG.repl_1676295192_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.JBM_MSG.repl_1676295192_250 >>>'
go
CREATE NONCLUSTERED INDEX JBM_MSG_REF_TX
    ON dbo.JBM_MSG_REF(TRANSACTION_ID,STATE)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JBM_MSG_REF') AND name='JBM_MSG_REF_TX')
    PRINT '<<< CREATED INDEX dbo.JBM_MSG_REF.JBM_MSG_REF_TX >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.JBM_MSG_REF.JBM_MSG_REF_TX >>>'
go
CREATE NONCLUSTERED INDEX IDX_JMS_MESSAGES_01
    ON dbo.JMS_MESSAGES(txop,txid)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JMS_MESSAGES') AND name='IDX_JMS_MESSAGES_01')
    PRINT '<<< CREATED INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_JMS_MESSAGES_02
    ON dbo.JMS_MESSAGES(destination)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.JMS_MESSAGES') AND name='IDX_JMS_MESSAGES_02')
    PRINT '<<< CREATED INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.JMS_MESSAGES.IDX_JMS_MESSAGES_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_03
    ON dbo.LEARNER(master_learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_03')
    PRINT '<<< CREATED INDEX dbo.LEARNER.idx_learner_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER.idx_learner_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_04
    ON dbo.LEARNER(school_qualcheck_status,learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_04')
    PRINT '<<< CREATED INDEX dbo.LEARNER.idx_learner_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER.idx_learner_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_05
    ON dbo.LEARNER(hookon_provider)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_05')
    PRINT '<<< CREATED INDEX dbo.LEARNER.idx_learner_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER.idx_learner_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_06
    ON dbo.LEARNER(school_qc_status_date,school_qualcheck_status,master_learner_id,learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER') AND name='idx_learner_06')
    PRINT '<<< CREATED INDEX dbo.LEARNER.idx_learner_06 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER.idx_learner_06 >>>'
go
CREATE NONCLUSTERED INDEX idx_lac_01
    ON dbo.LEARNER_ASSESSMENT_CENTRE(exam_code,provider_id,academic_year,learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='idx_lac_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_lac_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_lac_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_assess_centre_02
    ON dbo.LEARNER_ASSESSMENT_CENTRE(academic_year,learner_id,provider_id,location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ASSESSMENT_CENTRE') AND name='idx_learner_assess_centre_02')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_learner_assess_centre_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ASSESSMENT_CENTRE.idx_learner_assess_centre_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_LEARNER_ENROLMENT_08
    ON dbo.LEARNER_ENROLMENT(recalculate_fees)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_08')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_08 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_08 >>>'
go
CREATE NONCLUSTERED INDEX IDX_LEARNER_ENROLMENT_09
    ON dbo.LEARNER_ENROLMENT(withdrawn_batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_09')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_09 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_09 >>>'
go
CREATE NONCLUSTERED INDEX IDX_LEARNER_ENROLMENT_10
    ON dbo.LEARNER_ENROLMENT(fin_assist_app_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='IDX_LEARNER_ENROLMENT_10')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_10 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.IDX_LEARNER_ENROLMENT_10 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_01
    ON dbo.LEARNER_ENROLMENT(provider_id,location,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_02
    ON dbo.LEARNER_ENROLMENT(last_batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_02')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_05
    ON dbo.LEARNER_ENROLMENT(academic_year,learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_05')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_06
    ON dbo.LEARNER_ENROLMENT(academic_year,enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_06')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_06 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_06 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_11
    ON dbo.LEARNER_ENROLMENT(enrolment_id,academic_year,enrolment_status_code,learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_11')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_11 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_11 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_12
    ON dbo.LEARNER_ENROLMENT(academic_year,learner_id,enrolment_id,enrolment_status_code,home_school_ind,entry_last_recvd_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_12')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_12 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_12 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_13
    ON dbo.LEARNER_ENROLMENT(crse_endr_chk_status_code,crse_endr_chk_status_date,enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_13')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_13 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_13 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_14
    ON dbo.LEARNER_ENROLMENT(learner_id,enrolment_id,provider_id,location,academic_year,enrolment_status_code,home_school_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_14')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_14 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_14 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_fin_assist_approved_code
    ON dbo.LEARNER_ENROLMENT(fin_assist_approved_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_fin_assist_approved_code')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_fin_assist_approved_code >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_fin_assist_approved_code >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_enrolment_local_id
    ON dbo.LEARNER_ENROLMENT(local_id,provider_id,learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='idx_learner_enrolment_local_id')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_local_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.idx_learner_enrolment_local_id >>>'
go
CREATE NONCLUSTERED INDEX repl_1739891726_250
    ON dbo.LEARNER_ENROL_SPEC_ASSIST(spec_assist_general_reason)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROL_SPEC_ASSIST') AND name='repl_1739891726_250')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.repl_1739891726_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROL_SPEC_ASSIST.repl_1739891726_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_audit_transaction_01
    ON dbo.dba_pxy_audit_trans_pdtec2(change_date,audit_tran_oid)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='idx_audit_transaction_01')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_audit_transaction_02
    ON dbo.dba_pxy_audit_trans_pdtec2(audit_tran_oid,change_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_audit_trans_pdtec2') AND name='idx_audit_transaction_02')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_audit_trans_pdtec2.idx_audit_transaction_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_sqr_event_date
    ON dbo.dba_pxy_sqr_event_dr(completed_date,created_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_sqr_event_dr') AND name='idx_sqr_event_date')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_sqr_event_dr.idx_sqr_event_date >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_sqr_event_dr.idx_sqr_event_date >>>'
go
CREATE NONCLUSTERED INDEX idx_sqr_event_date
    ON dbo.dba_pxy_sqr_event_web1(completed_date,created_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.dba_pxy_sqr_event_web1') AND name='idx_sqr_event_date')
    PRINT '<<< CREATED INDEX dbo.dba_pxy_sqr_event_web1.idx_sqr_event_date >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.dba_pxy_sqr_event_web1.idx_sqr_event_date >>>'
go
CREATE NONCLUSTERED INDEX idx_primary_update_date
    ON dbo.latency_test(primary_update_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.latency_test') AND name='idx_primary_update_date')
    PRINT '<<< CREATED INDEX dbo.latency_test.idx_primary_update_date >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.latency_test.idx_primary_update_date >>>'
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_ENTRY') AND name='idx_reconsideration_entry_01')
BEGIN
    DROP INDEX RECONSIDERATION_ENTRY.idx_reconsideration_entry_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_ENTRY') AND name='idx_reconsideration_entry_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RECONSIDERATION_ENTRY.idx_reconsideration_entry_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RECONSIDERATION_ENTRY.idx_reconsideration_entry_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QUAL_CHECK_RESULT') AND name='repl_1315688904_250')
BEGIN
    DROP INDEX QUAL_CHECK_RESULT.repl_1315688904_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QUAL_CHECK_RESULT') AND name='repl_1315688904_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.QUAL_CHECK_RESULT.repl_1315688904_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QUAL_CHECK_RESULT.repl_1315688904_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_WORK_EXPERNCE') AND name='idx_qrs_stg_appln_work_exp_01')
BEGIN
    DROP INDEX QRS_STG_APPLN_WORK_EXPERNCE.idx_qrs_stg_appln_work_exp_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_WORK_EXPERNCE') AND name='idx_qrs_stg_appln_work_exp_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLN_WORK_EXPERNCE.idx_qrs_stg_appln_work_exp_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLN_WORK_EXPERNCE.idx_qrs_stg_appln_work_exp_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='repl_917848297_250')
BEGIN
    DROP INDEX QRS_STG_APPLN_QFN.repl_917848297_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='repl_917848297_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLN_QFN.repl_917848297_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLN_QFN.repl_917848297_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='idx_qrs_stg_appln_qfn_02')
BEGIN
    DROP INDEX QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='idx_qrs_stg_appln_qfn_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='idx_qrs_stg_appln_qfn_01')
BEGIN
    DROP INDEX QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='idx_qrs_stg_appln_qfn_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_OTHER_DOC') AND name='idx_qrs_stg_appln_other_doc_01')
BEGIN
    DROP INDEX QRS_STG_APPLN_OTHER_DOC.idx_qrs_stg_appln_other_doc_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_OTHER_DOC') AND name='idx_qrs_stg_appln_other_doc_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLN_OTHER_DOC.idx_qrs_stg_appln_other_doc_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLN_OTHER_DOC.idx_qrs_stg_appln_other_doc_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='idx_qrs_stg_application_03')
BEGIN
    DROP INDEX QRS_STG_APPLICATION.idx_qrs_stg_application_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='idx_qrs_stg_application_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLICATION.idx_qrs_stg_application_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLICATION.idx_qrs_stg_application_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='idx_QRS_STG_APPLICATION_02')
BEGIN
    DROP INDEX QRS_STG_APPLICATION.idx_QRS_STG_APPLICATION_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='idx_QRS_STG_APPLICATION_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLICATION.idx_QRS_STG_APPLICATION_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLICATION.idx_QRS_STG_APPLICATION_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION_QFN') AND name='idx_qrs_institution_qfn_name')
BEGIN
    DROP INDEX QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_name
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION_QFN') AND name='idx_qrs_institution_qfn_name')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_name >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_name >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION_QFN') AND name='idx_qrs_institution_qfn_01')
BEGIN
    DROP INDEX QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION_QFN') AND name='idx_qrs_institution_qfn_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION') AND name='idx_qrs_institution_02')
BEGIN
    DROP INDEX QRS_INSTITUTION.idx_qrs_institution_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION') AND name='idx_qrs_institution_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_INSTITUTION.idx_qrs_institution_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_INSTITUTION.idx_qrs_institution_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_03')
BEGIN
    DROP INDEX QRS_APPLICANT.idx_qrs_applicant_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_02')
BEGIN
    DROP INDEX QRS_APPLICANT.idx_qrs_applicant_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_01')
BEGIN
    DROP INDEX QRS_APPLICANT.idx_qrs_applicant_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VER_QA_EVENT_HISTORY') AND name='idx_QFN_VER_QA_EVENT_HIST_01')
BEGIN
    DROP INDEX QFN_VER_QA_EVENT_HISTORY.idx_QFN_VER_QA_EVENT_HIST_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VER_QA_EVENT_HISTORY') AND name='idx_QFN_VER_QA_EVENT_HIST_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VER_QA_EVENT_HISTORY.idx_QFN_VER_QA_EVENT_HIST_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VER_QA_EVENT_HISTORY.idx_QFN_VER_QA_EVENT_HIST_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_STATUS_HISTORY') AND name='idx_QFN_VERSION_STATUS_HIST_01')
BEGIN
    DROP INDEX QFN_VERSION_STATUS_HISTORY.idx_QFN_VERSION_STATUS_HIST_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_STATUS_HISTORY') AND name='idx_QFN_VERSION_STATUS_HIST_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION_STATUS_HISTORY.idx_QFN_VERSION_STATUS_HIST_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION_STATUS_HISTORY.idx_QFN_VERSION_STATUS_HIST_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_PUB_HISTORY') AND name='idx_QFN_VERSION_PUB_HISTORY_01')
BEGIN
    DROP INDEX QFN_VERSION_PUB_HISTORY.idx_QFN_VERSION_PUB_HISTORY_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_PUB_HISTORY') AND name='idx_QFN_VERSION_PUB_HISTORY_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION_PUB_HISTORY.idx_QFN_VERSION_PUB_HISTORY_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION_PUB_HISTORY.idx_QFN_VERSION_PUB_HISTORY_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_CLASSIFICATION') AND name='idx_QFN_VER_CLASSIFICATION_01')
BEGIN
    DROP INDEX QFN_VERSION_CLASSIFICATION.idx_QFN_VER_CLASSIFICATION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_CLASSIFICATION') AND name='idx_QFN_VER_CLASSIFICATION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION_CLASSIFICATION.idx_QFN_VER_CLASSIFICATION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION_CLASSIFICATION.idx_QFN_VER_CLASSIFICATION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_qfn_id')
BEGIN
    DROP INDEX QFN_VERSION.idx_QFN_VERSION_qfn_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_qfn_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_qfn_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_qfn_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_latest_qfn_mi')
BEGIN
    DROP INDEX QFN_VERSION.idx_QFN_VERSION_latest_qfn_mi
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_latest_qfn_mi')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_latest_qfn_mi >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_latest_qfn_mi >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_02')
BEGIN
    DROP INDEX QFN_VERSION.idx_QFN_VERSION_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_01')
BEGIN
    DROP INDEX QFN_VERSION.idx_QFN_VERSION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_STATUS_HISTORY') AND name='idx_QFN_STATUS_HISTORY_01')
BEGIN
    DROP INDEX QFN_STATUS_HISTORY.idx_QFN_STATUS_HISTORY_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_STATUS_HISTORY') AND name='idx_QFN_STATUS_HISTORY_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_STATUS_HISTORY_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_STATUS_HISTORY_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_STATUS_HISTORY') AND name='idx_QFN_HIST_qfn_status')
BEGIN
    DROP INDEX QFN_STATUS_HISTORY.idx_QFN_HIST_qfn_status
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_STATUS_HISTORY') AND name='idx_QFN_HIST_qfn_status')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_HIST_qfn_status >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_HIST_qfn_status >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SEC_ACHIEVED_STATUS_HIST') AND name='idx_qfn_sec_achieved_id')
BEGIN
    DROP INDEX QFN_SEC_ACHIEVED_STATUS_HIST.idx_qfn_sec_achieved_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SEC_ACHIEVED_STATUS_HIST') AND name='idx_qfn_sec_achieved_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_SEC_ACHIEVED_STATUS_HIST.idx_qfn_sec_achieved_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_SEC_ACHIEVED_STATUS_HIST.idx_qfn_sec_achieved_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SECTION_ACHIEVED') AND name='idx_QFN_SECTION_ACHIEVED_01')
BEGIN
    DROP INDEX QFN_SECTION_ACHIEVED.idx_QFN_SECTION_ACHIEVED_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SECTION_ACHIEVED') AND name='idx_QFN_SECTION_ACHIEVED_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_SECTION_ACHIEVED.idx_QFN_SECTION_ACHIEVED_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_SECTION_ACHIEVED.idx_QFN_SECTION_ACHIEVED_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SECTION') AND name='idx_QFN_SECTION_01')
BEGIN
    DROP INDEX QFN_SECTION.idx_QFN_SECTION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SECTION') AND name='idx_QFN_SECTION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_SECTION.idx_QFN_SECTION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_SECTION.idx_QFN_SECTION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO_STRAND') AND name='idx_QFN_SCENARIO_STRAND_01')
BEGIN
    DROP INDEX QFN_SCENARIO_STRAND.idx_QFN_SCENARIO_STRAND_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO_STRAND') AND name='idx_QFN_SCENARIO_STRAND_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_SCENARIO_STRAND.idx_QFN_SCENARIO_STRAND_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_SCENARIO_STRAND.idx_QFN_SCENARIO_STRAND_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO_STD_COMPONENT') AND name='idx_QFN_SCENARIO_STD_COMP_01')
BEGIN
    DROP INDEX QFN_SCENARIO_STD_COMPONENT.idx_QFN_SCENARIO_STD_COMP_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO_STD_COMPONENT') AND name='idx_QFN_SCENARIO_STD_COMP_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_SCENARIO_STD_COMPONENT.idx_QFN_SCENARIO_STD_COMP_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_SCENARIO_STD_COMPONENT.idx_QFN_SCENARIO_STD_COMP_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO') AND name='idx_QFN_SCENARIO_02')
BEGIN
    DROP INDEX QFN_SCENARIO.idx_QFN_SCENARIO_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO') AND name='idx_QFN_SCENARIO_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_SCENARIO.idx_QFN_SCENARIO_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_SCENARIO.idx_QFN_SCENARIO_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE_STD_VER') AND name='idx_QFN_RULE_STD_VER_01')
BEGIN
    DROP INDEX QFN_RULE_STD_VER.idx_QFN_RULE_STD_VER_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE_STD_VER') AND name='idx_QFN_RULE_STD_VER_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_RULE_STD_VER.idx_QFN_RULE_STD_VER_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_RULE_STD_VER.idx_QFN_RULE_STD_VER_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE_CATEGORY') AND name='idx_QFN_RULE_CATEGORY_01')
BEGIN
    DROP INDEX QFN_RULE_CATEGORY.idx_QFN_RULE_CATEGORY_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE_CATEGORY') AND name='idx_QFN_RULE_CATEGORY_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_RULE_CATEGORY.idx_QFN_RULE_CATEGORY_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_RULE_CATEGORY.idx_QFN_RULE_CATEGORY_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='repl_928823440_250')
BEGIN
    DROP INDEX QFN_RULE.repl_928823440_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='repl_928823440_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_RULE.repl_928823440_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_RULE.repl_928823440_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_03')
BEGIN
    DROP INDEX QFN_RULE.idx_QFN_RULE_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_RULE.idx_QFN_RULE_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_RULE.idx_QFN_RULE_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_02')
BEGIN
    DROP INDEX QFN_RULE.idx_QFN_RULE_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_RULE.idx_QFN_RULE_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_RULE.idx_QFN_RULE_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_01')
BEGIN
    DROP INDEX QFN_RULE.idx_QFN_RULE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_RULE.idx_QFN_RULE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_RULE.idx_QFN_RULE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_PREREQUISITE') AND name='idx_qfn_prerequisite_01')
BEGIN
    DROP INDEX QFN_PREREQUISITE.idx_qfn_prerequisite_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_PREREQUISITE') AND name='idx_qfn_prerequisite_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_PREREQUISITE.idx_qfn_prerequisite_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_PREREQUISITE.idx_qfn_prerequisite_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_PREQ_EXEMPTION_STRAND') AND name='idx_preq_exemption_strand_01')
BEGIN
    DROP INDEX QFN_PREQ_EXEMPTION_STRAND.idx_preq_exemption_strand_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_PREQ_EXEMPTION_STRAND') AND name='idx_preq_exemption_strand_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_PREQ_EXEMPTION_STRAND.idx_preq_exemption_strand_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_PREQ_EXEMPTION_STRAND.idx_preq_exemption_strand_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ORGANISATION_ROLE') AND name='idx_qfn_organisation_role_role')
BEGIN
    DROP INDEX QFN_ORGANISATION_ROLE.idx_qfn_organisation_role_role
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ORGANISATION_ROLE') AND name='idx_qfn_organisation_role_role')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ORGANISATION_ROLE.idx_qfn_organisation_role_role >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ORGANISATION_ROLE.idx_qfn_organisation_role_role >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ORGANISATION_ROLE') AND name='idx_QFN_ORGANISATION_ROLE_qfn')
BEGIN
    DROP INDEX QFN_ORGANISATION_ROLE.idx_QFN_ORGANISATION_ROLE_qfn
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ORGANISATION_ROLE') AND name='idx_QFN_ORGANISATION_ROLE_qfn')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ORGANISATION_ROLE.idx_QFN_ORGANISATION_ROLE_qfn >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ORGANISATION_ROLE.idx_QFN_ORGANISATION_ROLE_qfn >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_250')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.repl_1106685301_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_249')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.repl_1106685301_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_248')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.repl_1106685301_248
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_248')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_248 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_248 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_247')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.repl_1106685301_247
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_247')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_247 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_247 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_246')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.repl_1106685301_246
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_246')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_246 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_246 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_245')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.repl_1106685301_245
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_245')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_245 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_245 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_244')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.repl_1106685301_244
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_244')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_244 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_244 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='idx_QFN_MINOR_VER_qfn_ver_id')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.idx_QFN_MINOR_VER_qfn_ver_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='idx_QFN_MINOR_VER_qfn_ver_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VER_qfn_ver_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VER_qfn_ver_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='idx_QFN_MINOR_VERSION_01')
BEGIN
    DROP INDEX QFN_MINOR_VERSION.idx_QFN_MINOR_VERSION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='idx_QFN_MINOR_VERSION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VERSION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VERSION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXEMPTION_ITEM') AND name='idx_qfn_exemption_item_01')
BEGIN
    DROP INDEX QFN_EXEMPTION_ITEM.idx_qfn_exemption_item_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXEMPTION_ITEM') AND name='idx_qfn_exemption_item_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_EXEMPTION_ITEM.idx_qfn_exemption_item_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_EXEMPTION_ITEM.idx_qfn_exemption_item_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXCLUSION') AND name='idx_qfn_exclusion_02')
BEGIN
    DROP INDEX QFN_EXCLUSION.idx_qfn_exclusion_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXCLUSION') AND name='idx_qfn_exclusion_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_05')
BEGIN
    DROP INDEX QFN_CONDITION.idx_QFN_CONDITION_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_04')
BEGIN
    DROP INDEX QFN_CONDITION.idx_QFN_CONDITION_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_03')
BEGIN
    DROP INDEX QFN_CONDITION.idx_QFN_CONDITION_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_02')
BEGIN
    DROP INDEX QFN_CONDITION.idx_QFN_CONDITION_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_01')
BEGIN
    DROP INDEX QFN_CONDITION.idx_QFN_CONDITION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CERT') AND name='idx_qfn_cert_02')
BEGIN
    DROP INDEX QFN_CERT.idx_qfn_cert_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CERT') AND name='idx_qfn_cert_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_CERT.idx_qfn_cert_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_CERT.idx_qfn_cert_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CERT') AND name='IX_QFN_CERT_01')
BEGIN
    DROP INDEX QFN_CERT.IX_QFN_CERT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CERT') AND name='IX_QFN_CERT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_CERT.IX_QFN_CERT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_CERT.IX_QFN_CERT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHVD_COMP_PROG_HIST') AND name='idx_qfn_achvd_comp_pro_his_01')
BEGIN
    DROP INDEX QFN_ACHVD_COMP_PROG_HIST.idx_qfn_achvd_comp_pro_his_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHVD_COMP_PROG_HIST') AND name='idx_qfn_achvd_comp_pro_his_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHVD_COMP_PROG_HIST.idx_qfn_achvd_comp_pro_his_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHVD_COMP_PROG_HIST.idx_qfn_achvd_comp_pro_his_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_STATUS_HIST') AND name='uidx_qfn_achvd_status_hist_01')
BEGIN
    DROP INDEX QFN_ACHIEVED_STATUS_HIST.uidx_qfn_achvd_status_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_STATUS_HIST') AND name='uidx_qfn_achvd_status_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED_STATUS_HIST.uidx_qfn_achvd_status_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED_STATUS_HIST.uidx_qfn_achvd_status_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDORSEMENT') AND name='idx_qfn_achieved_endor_02')
BEGIN
    DROP INDEX QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDORSEMENT') AND name='idx_qfn_achieved_endor_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDORSEMENT') AND name='idx_qfn_achieved_endor_01')
BEGIN
    DROP INDEX QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDORSEMENT') AND name='idx_qfn_achieved_endor_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_04')
BEGIN
    DROP INDEX QFN_ACHIEVED.idx_qfn_achieved_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_02')
BEGIN
    DROP INDEX QFN_ACHIEVED.idx_qfn_achieved_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_01')
BEGIN
    DROP INDEX QFN_ACHIEVED.idx_qfn_achieved_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_QFN_ACHVD_awrdng_prvdr')
BEGIN
    DROP INDEX QFN_ACHIEVED.idx_QFN_ACHVD_awrdng_prvdr
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_QFN_ACHVD_awrdng_prvdr')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHVD_awrdng_prvdr >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHVD_awrdng_prvdr >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_QFN_ACHIEVED_03')
BEGIN
    DROP INDEX QFN_ACHIEVED.idx_QFN_ACHIEVED_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_QFN_ACHIEVED_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHIEVED_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHIEVED_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_qfn_latest_reg_id')
BEGIN
    DROP INDEX QFN.idx_qfn_latest_reg_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_qfn_latest_reg_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN.idx_qfn_latest_reg_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN.idx_qfn_latest_reg_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_QFN_qfn_type_code')
BEGIN
    DROP INDEX QFN.idx_QFN_qfn_type_code
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_QFN_qfn_type_code')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN.idx_QFN_qfn_type_code >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN.idx_QFN_qfn_type_code >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_QFN_latest_qfn_version_id')
BEGIN
    DROP INDEX QFN.idx_QFN_latest_qfn_version_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_QFN_latest_qfn_version_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN.idx_QFN_latest_qfn_version_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN.idx_QFN_latest_qfn_version_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QES_INSTITUTE') AND name='idx_QES_INSTITUTE_01')
BEGIN
    DROP INDEX QES_INSTITUTE.idx_QES_INSTITUTE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QES_INSTITUTE') AND name='idx_QES_INSTITUTE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QES_INSTITUTE.idx_QES_INSTITUTE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QES_INSTITUTE.idx_QES_INSTITUTE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_EXEMPTION') AND name='idx_prov_spf_exemption_01')
BEGIN
    DROP INDEX PROV_SFP_EXEMPTION.idx_prov_spf_exemption_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_EXEMPTION') AND name='idx_prov_spf_exemption_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_SFP_EXEMPTION.idx_prov_spf_exemption_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_SFP_EXEMPTION.idx_prov_spf_exemption_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_ARGMT') AND name='idx_prov_spf_argmt_02')
BEGIN
    DROP INDEX PROV_SFP_ARGMT.idx_prov_spf_argmt_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_ARGMT') AND name='idx_prov_spf_argmt_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_ARGMT') AND name='idx_prov_spf_argmt_01')
BEGIN
    DROP INDEX PROV_SFP_ARGMT.idx_prov_spf_argmt_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_ARGMT') AND name='idx_prov_spf_argmt_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_03')
BEGIN
    DROP INDEX PROV_RISK_ISSUE.idx_prov_risk_issue_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_02')
BEGIN
    DROP INDEX PROV_RISK_ISSUE.idx_prov_risk_issue_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_01')
BEGIN
    DROP INDEX PROV_RISK_ISSUE.idx_prov_risk_issue_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_LRNR_CATEGORY') AND name='idx_prov_lrnr_category_01')
BEGIN
    DROP INDEX PROV_LRNR_CATEGORY.idx_prov_lrnr_category_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_LRNR_CATEGORY') AND name='idx_prov_lrnr_category_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_LRNR_CATEGORY.idx_prov_lrnr_category_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_LRNR_CATEGORY.idx_prov_lrnr_category_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_KVP') AND name='idx_provider_property_01')
BEGIN
    DROP INDEX PROVIDER_KVP.idx_provider_property_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_KVP') AND name='idx_provider_property_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER_KVP.idx_provider_property_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER_KVP.idx_provider_property_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_HEAD_OFFICE') AND name='repl_1074268747_250')
BEGIN
    DROP INDEX PROVIDER_HEAD_OFFICE.repl_1074268747_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_HEAD_OFFICE') AND name='repl_1074268747_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER_HEAD_OFFICE.repl_1074268747_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER_HEAD_OFFICE.repl_1074268747_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_FOCUS') AND name='idx_provider_focus_01')
BEGIN
    DROP INDEX PROVIDER_FOCUS.idx_provider_focus_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_FOCUS') AND name='idx_provider_focus_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER_FOCUS.idx_provider_focus_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER_FOCUS.idx_provider_focus_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_COP_APPRVL_HIST') AND name='idx_provider_cop_apprvl_hist_01')
BEGIN
    DROP INDEX PROVIDER_COP_APPRVL_HIST.idx_provider_cop_apprvl_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_COP_APPRVL_HIST') AND name='idx_provider_cop_apprvl_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER_COP_APPRVL_HIST.idx_provider_cop_apprvl_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER_COP_APPRVL_HIST.idx_provider_cop_apprvl_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_COP_APPRVL') AND name='idx_prov_cop_apprvl_01')
BEGIN
    DROP INDEX PROVIDER_COP_APPRVL.idx_prov_cop_apprvl_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_COP_APPRVL') AND name='idx_prov_cop_apprvl_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER_COP_APPRVL.idx_prov_cop_apprvl_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER_COP_APPRVL.idx_prov_cop_apprvl_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_CONDITION') AND name='idx_provider_condition_02')
BEGIN
    DROP INDEX PROVIDER_CONDITION.idx_provider_condition_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_CONDITION') AND name='idx_provider_condition_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_CONDITION') AND name='idx_provider_condition_01')
BEGIN
    DROP INDEX PROVIDER_CONDITION.idx_provider_condition_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_CONDITION') AND name='idx_provider_condition_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='idx_provider_02')
BEGIN
    DROP INDEX PROVIDER.idx_provider_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='idx_provider_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER.idx_provider_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER.idx_provider_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='idx_provider_01')
BEGIN
    DROP INDEX PROVIDER.idx_provider_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='idx_provider_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER.idx_provider_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER.idx_provider_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PREREQUISITE_STRAND_NAME') AND name='idx_prerequisite_stand_name_01')
BEGIN
    DROP INDEX PREREQUISITE_STRAND_NAME.idx_prerequisite_stand_name_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PREREQUISITE_STRAND_NAME') AND name='idx_prerequisite_stand_name_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PREREQUISITE_STRAND_NAME.idx_prerequisite_stand_name_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PREREQUISITE_STRAND_NAME.idx_prerequisite_stand_name_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERS_VOL_COUNT') AND name='idx_pers_vol_count_02')
BEGIN
    DROP INDEX PERS_VOL_COUNT.idx_pers_vol_count_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERS_VOL_COUNT') AND name='idx_pers_vol_count_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERS_VOL_COUNT') AND name='idx_pers_vol_count_01')
BEGIN
    DROP INDEX PERS_VOL_COUNT.idx_pers_vol_count_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERS_VOL_COUNT') AND name='idx_pers_vol_count_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERSON_CLAIM') AND name='idx_person_claim_role')
BEGIN
    DROP INDEX PERSON_CLAIM.idx_person_claim_role
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERSON_CLAIM') AND name='idx_person_claim_role')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERSON_CLAIM.idx_person_claim_role >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERSON_CLAIM.idx_person_claim_role >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE_TYPE') AND name='idx_PERORG_ROLE_TYPE_01')
BEGIN
    DROP INDEX PERORG_ROLE_TYPE.idx_PERORG_ROLE_TYPE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE_TYPE') AND name='idx_PERORG_ROLE_TYPE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE_TYPE.idx_PERORG_ROLE_TYPE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE_TYPE.idx_PERORG_ROLE_TYPE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_07')
BEGIN
    DROP INDEX PERORG_ROLE.idx_perorg_role_07
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_07')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE.idx_perorg_role_07 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE.idx_perorg_role_07 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_04')
BEGIN
    DROP INDEX PERORG_ROLE.idx_perorg_role_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE.idx_perorg_role_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE.idx_perorg_role_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_03')
BEGIN
    DROP INDEX PERORG_ROLE.idx_perorg_role_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE.idx_perorg_role_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE.idx_perorg_role_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_02')
BEGIN
    DROP INDEX PERORG_ROLE.idx_perorg_role_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE.idx_perorg_role_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE.idx_perorg_role_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_CASE') AND name='idx_perorg_case_01')
BEGIN
    DROP INDEX PERORG_CASE.idx_perorg_case_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_CASE') AND name='idx_perorg_case_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_CASE.idx_perorg_case_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_CASE.idx_perorg_case_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ALT_ID') AND name='IDX_ALT_ID_02')
BEGIN
    DROP INDEX PERORG_ALT_ID.IDX_ALT_ID_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ALT_ID') AND name='IDX_ALT_ID_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ALT_ID.IDX_ALT_ID_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ALT_ID.IDX_ALT_ID_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='idx_perorg_01')
BEGIN
    DROP INDEX PERORG.idx_perorg_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='idx_perorg_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG.idx_perorg_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG.idx_perorg_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='IDX_USER_ID')
BEGIN
    DROP INDEX PERORG.IDX_USER_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='IDX_USER_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG.IDX_USER_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG.IDX_USER_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='IDX_IS_LEARNER')
BEGIN
    DROP INDEX PERORG.IDX_IS_LEARNER
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='IDX_IS_LEARNER')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG.IDX_IS_LEARNER >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG.IDX_IS_LEARNER >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT_STATUS_HIST') AND name='idx_payment_status_hist_01')
BEGIN
    DROP INDEX PAYMENT_STATUS_HIST.idx_payment_status_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT_STATUS_HIST') AND name='idx_payment_status_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PAYMENT_STATUS_HIST.idx_payment_status_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PAYMENT_STATUS_HIST.idx_payment_status_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT_RECONCILIATION_RUN') AND name='idx_payment_recon_run_01')
BEGIN
    DROP INDEX PAYMENT_RECONCILIATION_RUN.idx_payment_recon_run_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT_RECONCILIATION_RUN') AND name='idx_payment_recon_run_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PAYMENT_RECONCILIATION_RUN.idx_payment_recon_run_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PAYMENT_RECONCILIATION_RUN.idx_payment_recon_run_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_04')
BEGIN
    DROP INDEX PAYMENT.idx_payment_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.PAYMENT.idx_payment_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PAYMENT.idx_payment_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_03')
BEGIN
    DROP INDEX PAYMENT.idx_payment_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.PAYMENT.idx_payment_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PAYMENT.idx_payment_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_02')
BEGIN
    DROP INDEX PAYMENT.idx_payment_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PAYMENT.idx_payment_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PAYMENT.idx_payment_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_01')
BEGIN
    DROP INDEX PAYMENT.idx_payment_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PAYMENT.idx_payment_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PAYMENT.idx_payment_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='idx_outsdng_fee_lodgement_02')
BEGIN
    DROP INDEX OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='idx_outsdng_fee_lodgement_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='idx_outsdng_fee_lodgement_01')
BEGIN
    DROP INDEX OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='idx_outsdng_fee_lodgement_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_QA_ACTIVITY') AND name='idx_orq_qa_activity_01')
BEGIN
    DROP INDEX ORG_QA_ACTIVITY.idx_orq_qa_activity_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_QA_ACTIVITY') AND name='idx_orq_qa_activity_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORG_QA_ACTIVITY.idx_orq_qa_activity_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORG_QA_ACTIVITY.idx_orq_qa_activity_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_PROFILE_NOTE') AND name='idx_org_profile_note_02')
BEGIN
    DROP INDEX ORG_PROFILE_NOTE.idx_org_profile_note_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_PROFILE_NOTE') AND name='idx_org_profile_note_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_PROFILE_NOTE') AND name='idx_org_profile_note_01')
BEGIN
    DROP INDEX ORG_PROFILE_NOTE.idx_org_profile_note_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_PROFILE_NOTE') AND name='idx_org_profile_note_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION_HISTORY') AND name='idx_org_evaluation_hist_01')
BEGIN
    DROP INDEX ORG_EVALUATION_HISTORY.idx_org_evaluation_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION_HISTORY') AND name='idx_org_evaluation_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORG_EVALUATION_HISTORY.idx_org_evaluation_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORG_EVALUATION_HISTORY.idx_org_evaluation_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION') AND name='repl_2146936535_250')
BEGIN
    DROP INDEX ORG_EVALUATION.repl_2146936535_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION') AND name='repl_2146936535_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORG_EVALUATION.repl_2146936535_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORG_EVALUATION.repl_2146936535_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION') AND name='idx_org_evaluation_01')
BEGIN
    DROP INDEX ORG_EVALUATION.idx_org_evaluation_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION') AND name='idx_org_evaluation_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORG_EVALUATION.idx_org_evaluation_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORG_EVALUATION.idx_org_evaluation_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORGANISATION_LOGO') AND name='idx1_organisation_logo')
BEGIN
    DROP INDEX ORGANISATION_LOGO.idx1_organisation_logo
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORGANISATION_LOGO') AND name='idx1_organisation_logo')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORGANISATION_LOGO.idx1_organisation_logo >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORGANISATION_LOGO.idx1_organisation_logo >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='idx_order_02')
BEGIN
    DROP INDEX ORDER_REQUEST.idx_order_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='idx_order_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_REQUEST.idx_order_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_REQUEST.idx_order_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='idx_order_01')
BEGIN
    DROP INDEX ORDER_REQUEST.idx_order_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='idx_order_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_REQUEST.idx_order_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_REQUEST.idx_order_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_NOTE') AND name='idx_order_note_01')
BEGIN
    DROP INDEX ORDER_NOTE.idx_order_note_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_NOTE') AND name='idx_order_note_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_NOTE.idx_order_note_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_NOTE.idx_order_note_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM_STATUS_HIST') AND name='idx_order_itmem_status_hist_01')
BEGIN
    DROP INDEX ORDER_ITEM_STATUS_HIST.idx_order_itmem_status_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM_STATUS_HIST') AND name='idx_order_itmem_status_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_ITEM_STATUS_HIST.idx_order_itmem_status_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_ITEM_STATUS_HIST.idx_order_itmem_status_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_entry')
BEGIN
    DROP INDEX ORDER_ITEM.idx_order_item_entry
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_entry')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_ITEM.idx_order_item_entry >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_ITEM.idx_order_item_entry >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_04')
BEGIN
    DROP INDEX ORDER_ITEM.idx_order_item_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_ITEM.idx_order_item_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_ITEM.idx_order_item_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_03')
BEGIN
    DROP INDEX ORDER_ITEM.idx_order_item_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_ITEM.idx_order_item_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_ITEM.idx_order_item_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_02')
BEGIN
    DROP INDEX ORDER_ITEM.idx_order_item_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_ITEM.idx_order_item_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_ITEM.idx_order_item_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_01')
BEGIN
    DROP INDEX ORDER_ITEM.idx_order_item_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_ITEM.idx_order_item_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_ITEM.idx_order_item_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_APP') AND name='repl_898268120_250')
BEGIN
    DROP INDEX NQAF_STG_REG_APP.repl_898268120_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_APP') AND name='repl_898268120_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_REG_APP.repl_898268120_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_REG_APP.repl_898268120_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_250')
BEGIN
    DROP INDEX NQAF_STG_CRSE_QFN.repl_591454996_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_249')
BEGIN
    DROP INDEX NQAF_STG_CRSE_QFN.repl_591454996_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_248')
BEGIN
    DROP INDEX NQAF_STG_CRSE_QFN.repl_591454996_248
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_248')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_248 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_248 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='idx_nqaf_stg_crse_qfn_01')
BEGIN
    DROP INDEX NQAF_STG_CRSE_QFN.idx_nqaf_stg_crse_qfn_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='idx_nqaf_stg_crse_qfn_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CRSE_QFN.idx_nqaf_stg_crse_qfn_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CRSE_QFN.idx_nqaf_stg_crse_qfn_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_250')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_249')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_248')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_248
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_248')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_248 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_248 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_247')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_247
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_247')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_247 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_247 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_246')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_246
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_246')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_246 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_246 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_245')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_245
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_245')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_245 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_245 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_244')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_244
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_244')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_244 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_244 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_243')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_243
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_243')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_243 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_243 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_242')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_242
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_242')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_242 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_242 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_241')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_241
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_241')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_241 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_241 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_240')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_240
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_240')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_240 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_240 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_239')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_239
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_239')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_239 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_239 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_238')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_238
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_238')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_238 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_238 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_237')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_237
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_237')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_237 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_237 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_236')
BEGIN
    DROP INDEX NQAF_STG_CAA_APP.repl_543454825_236
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_236')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_236 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_236 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLN_CONTACT') AND name='idx_nqaf_stg_appln_cont_01')
BEGIN
    DROP INDEX NQAF_STG_APPLN_CONTACT.idx_nqaf_stg_appln_cont_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLN_CONTACT') AND name='idx_nqaf_stg_appln_cont_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_APPLN_CONTACT.idx_nqaf_stg_appln_cont_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_APPLN_CONTACT.idx_nqaf_stg_appln_cont_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLICATION') AND name='repl_399454312_250')
BEGIN
    DROP INDEX NQAF_STG_APPLICATION.repl_399454312_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLICATION') AND name='repl_399454312_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_APPLICATION.repl_399454312_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_APPLICATION.repl_399454312_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLICATION') AND name='idx_nqaf_stg_appln_01')
BEGIN
    DROP INDEX NQAF_STG_APPLICATION.idx_nqaf_stg_appln_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLICATION') AND name='idx_nqaf_stg_appln_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_APPLICATION.idx_nqaf_stg_appln_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_APPLICATION.idx_nqaf_stg_appln_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NOTE_ISSUE_STATUS_HIST') AND name='idx_note_iss_status_hist_01')
BEGIN
    DROP INDEX NOTE_ISSUE_STATUS_HIST.idx_note_iss_status_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NOTE_ISSUE_STATUS_HIST') AND name='idx_note_iss_status_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.NOTE_ISSUE_STATUS_HIST.idx_note_iss_status_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NOTE_ISSUE_STATUS_HIST.idx_note_iss_status_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_04')
BEGIN
    DROP INDEX NAME.idx_name_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.NAME.idx_name_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NAME.idx_name_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_03')
BEGIN
    DROP INDEX NAME.idx_name_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.NAME.idx_name_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NAME.idx_name_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_02')
BEGIN
    DROP INDEX NAME.idx_name_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.NAME.idx_name_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NAME.idx_name_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_01')
BEGIN
    DROP INDEX NAME.idx_name_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.NAME.idx_name_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NAME.idx_name_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='IDX_NAME_06')
BEGIN
    DROP INDEX NAME.IDX_NAME_06
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='IDX_NAME_06')
        PRINT '<<< FAILED DROPPING INDEX dbo.NAME.IDX_NAME_06 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NAME.IDX_NAME_06 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_REPORT_STATUS_HISTORY') AND name='idxw_report_status_history_01')
BEGIN
    DROP INDEX MOD_REPORT_STATUS_HISTORY.idxw_report_status_history_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_REPORT_STATUS_HISTORY') AND name='idxw_report_status_history_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MOD_REPORT_STATUS_HISTORY.idxw_report_status_history_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MOD_REPORT_STATUS_HISTORY.idxw_report_status_history_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_FORBIDDEN_PROVIDER') AND name='idx_mod_forbidden_provider_02')
BEGIN
    DROP INDEX MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_FORBIDDEN_PROVIDER') AND name='idx_mod_forbidden_provider_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_FORBIDDEN_PROVIDER') AND name='idx_mod_forbidden_provider_01')
BEGIN
    DROP INDEX MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_FORBIDDEN_PROVIDER') AND name='idx_mod_forbidden_provider_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='repl_1452737397_250')
BEGIN
    DROP INDEX MODERATOR_ROLE.repl_1452737397_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='repl_1452737397_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATOR_ROLE.repl_1452737397_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATOR_ROLE.repl_1452737397_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='idx_moderator_role_02')
BEGIN
    DROP INDEX MODERATOR_ROLE.idx_moderator_role_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='idx_moderator_role_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATOR_ROLE.idx_moderator_role_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATOR_ROLE.idx_moderator_role_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='idx_moderator_role_01')
BEGIN
    DROP INDEX MODERATOR_ROLE.idx_moderator_role_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='idx_moderator_role_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATOR_ROLE.idx_moderator_role_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATOR_ROLE.idx_moderator_role_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR') AND name='idx_moderator_01')
BEGIN
    DROP INDEX MODERATOR.idx_moderator_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR') AND name='idx_moderator_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATOR.idx_moderator_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATOR.idx_moderator_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_250')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_249')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_248')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_248
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_248')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_248 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_248 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_247')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_247
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_247')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_247 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_247 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_246')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_246
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_246')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_246 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_246 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_245')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_245
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_245')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_245 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_245 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_244')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_244
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_244')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_244 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_244 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_243')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_243
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_243')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_243 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_243 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_242')
BEGIN
    DROP INDEX MODERATION_REPORT.repl_1618687125_242
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_242')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.repl_1618687125_242 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.repl_1618687125_242 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='idx_moderation_report_04')
BEGIN
    DROP INDEX MODERATION_REPORT.idx_moderation_report_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='idx_moderation_report_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.idx_moderation_report_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.idx_moderation_report_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_03')
BEGIN
    DROP INDEX MODERATION_REPORT.IDX_MODERATION_REPORT_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_02')
BEGIN
    DROP INDEX MODERATION_REPORT.IDX_MODERATION_REPORT_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_01')
BEGIN
    DROP INDEX MODERATION_REPORT.IDX_MODERATION_REPORT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_SUBJ') AND name='idxw_moderation_assess_subj_02')
BEGIN
    DROP INDEX MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_SUBJ') AND name='idxw_moderation_assess_subj_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_STD') AND name='idxw_mod_assessment_std_04')
BEGIN
    DROP INDEX MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_STD') AND name='idxw_mod_assessment_std_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_01')
BEGIN
    DROP INDEX PERORG_ROLE.idx_perorg_role_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE.idx_perorg_role_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE.idx_perorg_role_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_05')
BEGIN
    DROP INDEX NAME.idx_name_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.NAME.idx_name_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NAME.idx_name_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_SUBMISSION_DATE') AND name='idxw_mod_submission_date_01')
BEGIN
    DROP INDEX MODERATION_SUBMISSION_DATE.idxw_mod_submission_date_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_SUBMISSION_DATE') AND name='idxw_mod_submission_date_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_SUBMISSION_DATE.idxw_mod_submission_date_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_SUBMISSION_DATE.idxw_mod_submission_date_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_JUDGEMENT') AND name='idxw_moderation_rpt_judge_01')
BEGIN
    DROP INDEX MODERATION_REPORT_JUDGEMENT.idxw_moderation_rpt_judge_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_JUDGEMENT') AND name='idxw_moderation_rpt_judge_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT_JUDGEMENT.idxw_moderation_rpt_judge_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT_JUDGEMENT.idxw_moderation_rpt_judge_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_COMPONENT') AND name='idxw_moderation_report_comp_01')
BEGIN
    DROP INDEX MODERATION_REPORT_COMPONENT.idxw_moderation_report_comp_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_COMPONENT') AND name='idxw_moderation_report_comp_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT_COMPONENT.idxw_moderation_report_comp_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT_COMPONENT.idxw_moderation_report_comp_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_SUBJ') AND name='idxw_moderation_assess_subj_01')
BEGIN
    DROP INDEX MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_SUBJ') AND name='idxw_moderation_assess_subj_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_STD') AND name='idxw_mod_assessment_std_03')
BEGIN
    DROP INDEX MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_STD') AND name='idxw_mod_assessment_std_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='repl_1276736770_250')
BEGIN
    DROP INDEX MODERATION_ASSESSMENT_PLAN.repl_1276736770_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='repl_1276736770_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_ASSESSMENT_PLAN.repl_1276736770_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_ASSESSMENT_PLAN.repl_1276736770_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='idx_mod_asses_plan_02')
BEGIN
    DROP INDEX MODERATION_ASSESSMENT_PLAN.idx_mod_asses_plan_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='idx_mod_asses_plan_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_ASSESSMENT_PLAN.idx_mod_asses_plan_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_ASSESSMENT_PLAN.idx_mod_asses_plan_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_SELECTOR') AND name='repl_1644529861_250')
BEGIN
    DROP INDEX MESSAGE_SELECTOR.repl_1644529861_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_SELECTOR') AND name='repl_1644529861_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.MESSAGE_SELECTOR.repl_1644529861_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MESSAGE_SELECTOR.repl_1644529861_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_QUEUE') AND name='repl_1580529633_250')
BEGIN
    DROP INDEX MESSAGE_QUEUE.repl_1580529633_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_QUEUE') AND name='repl_1580529633_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.MESSAGE_QUEUE.repl_1580529633_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MESSAGE_QUEUE.repl_1580529633_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_LISTENER') AND name='repl_1516529405_250')
BEGIN
    DROP INDEX MESSAGE_LISTENER.repl_1516529405_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_LISTENER') AND name='repl_1516529405_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.MESSAGE_LISTENER.repl_1516529405_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MESSAGE_LISTENER.repl_1516529405_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MERGE_REQUEST_STATUS_HISTORY') AND name='idx_MERGE_REQ_STAT_HIST_01')
BEGIN
    DROP INDEX MERGE_REQUEST_STATUS_HISTORY.idx_MERGE_REQ_STAT_HIST_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MERGE_REQUEST_STATUS_HISTORY') AND name='idx_MERGE_REQ_STAT_HIST_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MERGE_REQUEST_STATUS_HISTORY.idx_MERGE_REQ_STAT_HIST_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MERGE_REQUEST_STATUS_HISTORY.idx_MERGE_REQ_STAT_HIST_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MERGE_REQUEST') AND name='idx_master_learner_id')
BEGIN
    DROP INDEX MERGE_REQUEST.idx_master_learner_id
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MERGE_REQUEST') AND name='idx_master_learner_id')
        PRINT '<<< FAILED DROPPING INDEX dbo.MERGE_REQUEST.idx_master_learner_id >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MERGE_REQUEST.idx_master_learner_id >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARK_INPUT') AND name='idx_mark_input_01')
BEGIN
    DROP INDEX MARK_INPUT.idx_mark_input_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARK_INPUT') AND name='idx_mark_input_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARK_INPUT.idx_mark_input_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARK_INPUT.idx_mark_input_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER_STATUS') AND name='idx_marker_panel_member_sta_01')
BEGIN
    DROP INDEX MARKER_PANEL_MEMBER_STATUS.idx_marker_panel_member_sta_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER_STATUS') AND name='idx_marker_panel_member_sta_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL_MEMBER_STATUS.idx_marker_panel_member_sta_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL_MEMBER_STATUS.idx_marker_panel_member_sta_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='idx_marker_panel_member_02')
BEGIN
    DROP INDEX MARKER_PANEL_MEMBER.idx_marker_panel_member_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='idx_marker_panel_member_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='idx_marker_panel_member_01')
BEGIN
    DROP INDEX MARKER_PANEL_MEMBER.idx_marker_panel_member_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='idx_marker_panel_member_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_ALLOCATION_GRP') AND name='idx_marker_panel_alloc_grp_02')
BEGIN
    DROP INDEX MARKER_PANEL_ALLOCATION_GRP.idx_marker_panel_alloc_grp_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_ALLOCATION_GRP') AND name='idx_marker_panel_alloc_grp_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.idx_marker_panel_alloc_grp_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.idx_marker_panel_alloc_grp_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL') AND name='idx_marker_panel_02')
BEGIN
    DROP INDEX MARKER_PANEL.idx_marker_panel_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL') AND name='idx_marker_panel_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL.idx_marker_panel_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL.idx_marker_panel_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL') AND name='idx_marker_panel_01')
BEGIN
    DROP INDEX MARKER_PANEL.idx_marker_panel_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL') AND name='idx_marker_panel_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL.idx_marker_panel_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL.idx_marker_panel_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_250')
BEGIN
    DROP INDEX MARKER.repl_478946793_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.repl_478946793_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.repl_478946793_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_249')
BEGIN
    DROP INDEX MARKER.repl_478946793_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.repl_478946793_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.repl_478946793_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_248')
BEGIN
    DROP INDEX MARKER.repl_478946793_248
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_248')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.repl_478946793_248 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.repl_478946793_248 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_247')
BEGIN
    DROP INDEX MARKER.repl_478946793_247
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_247')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.repl_478946793_247 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.repl_478946793_247 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_05')
BEGIN
    DROP INDEX MARKER.idx_marker_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.idx_marker_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.idx_marker_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_04')
BEGIN
    DROP INDEX MARKER.idx_marker_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.idx_marker_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.idx_marker_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_03')
BEGIN
    DROP INDEX MARKER.idx_marker_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.idx_marker_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.idx_marker_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_02')
BEGIN
    DROP INDEX MARKER.idx_marker_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER.idx_marker_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER.idx_marker_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_250')
BEGIN
    DROP INDEX LVL.repl_429814158_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.LVL.repl_429814158_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LVL.repl_429814158_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_249')
BEGIN
    DROP INDEX LVL.repl_429814158_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.LVL.repl_429814158_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LVL.repl_429814158_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_248')
BEGIN
    DROP INDEX LVL.repl_429814158_248
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_248')
        PRINT '<<< FAILED DROPPING INDEX dbo.LVL.repl_429814158_248 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LVL.repl_429814158_248 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_247')
BEGIN
    DROP INDEX LVL.repl_429814158_247
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_247')
        PRINT '<<< FAILED DROPPING INDEX dbo.LVL.repl_429814158_247 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LVL.repl_429814158_247 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='idx_lvl_01')
BEGIN
    DROP INDEX LVL.idx_lvl_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='idx_lvl_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LVL.idx_lvl_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LVL.idx_lvl_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LODGEMENT_DETAIL') AND name='idx_lodgement_detail_02')
BEGIN
    DROP INDEX LODGEMENT_DETAIL.idx_lodgement_detail_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LODGEMENT_DETAIL') AND name='idx_lodgement_detail_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LODGEMENT_DETAIL') AND name='idx_lodgement_detail_01')
BEGIN
    DROP INDEX LODGEMENT_DETAIL.idx_lodgement_detail_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LODGEMENT_DETAIL') AND name='idx_lodgement_detail_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_STATISTIC') AND name='idx_LEARNER_STATISTIC_01')
BEGIN
    DROP INDEX LEARNER_STATISTIC.idx_LEARNER_STATISTIC_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_STATISTIC') AND name='idx_LEARNER_STATISTIC_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_STATISTIC.idx_LEARNER_STATISTIC_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_STATISTIC.idx_LEARNER_STATISTIC_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE_UNALLOC') AND name='idx_LEARNER_SORT_CODE_UNALC_02')
BEGIN
    DROP INDEX LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE_UNALLOC') AND name='idx_LEARNER_SORT_CODE_UNALC_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE_UNALLOC') AND name='idx_LEARNER_SORT_CODE_UNALC_01')
BEGIN
    DROP INDEX LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE_UNALLOC') AND name='idx_LEARNER_SORT_CODE_UNALC_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QUAL_APPLICATION') AND name='ak_qual_application')
BEGIN
    DROP INDEX QUAL_APPLICATION.ak_qual_application
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QUAL_APPLICATION') AND name='ak_qual_application')
        PRINT '<<< FAILED DROPPING INDEX dbo.QUAL_APPLICATION.ak_qual_application >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QUAL_APPLICATION.ak_qual_application >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='uidx_QRS_STG_APPLICATION_01')
BEGIN
    DROP INDEX QRS_STG_APPLICATION.uidx_QRS_STG_APPLICATION_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='uidx_QRS_STG_APPLICATION_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QRS_STG_APPLICATION.uidx_QRS_STG_APPLICATION_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QRS_STG_APPLICATION.uidx_QRS_STG_APPLICATION_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='AK_QFN_VERSION')
BEGIN
    DROP INDEX QFN_VERSION.AK_QFN_VERSION
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='AK_QFN_VERSION')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_VERSION.AK_QFN_VERSION >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_VERSION.AK_QFN_VERSION >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_TYPE') AND name='uidx_QFN_TYPE_01')
BEGIN
    DROP INDEX QFN_TYPE.uidx_QFN_TYPE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_TYPE') AND name='uidx_QFN_TYPE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_TYPE.uidx_QFN_TYPE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_TYPE.uidx_QFN_TYPE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO') AND name='idx_qfn_scenario_01')
BEGIN
    DROP INDEX QFN_SCENARIO.idx_qfn_scenario_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO') AND name='idx_qfn_scenario_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_SCENARIO.idx_qfn_scenario_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_SCENARIO.idx_qfn_scenario_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXEMPTION_ROW') AND name='idx_qfn_exemption_row_01')
BEGIN
    DROP INDEX QFN_EXEMPTION_ROW.idx_qfn_exemption_row_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXEMPTION_ROW') AND name='idx_qfn_exemption_row_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_EXEMPTION_ROW.idx_qfn_exemption_row_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_EXEMPTION_ROW.idx_qfn_exemption_row_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXCLUSION') AND name='idx_qfn_exclusion_01')
BEGIN
    DROP INDEX QFN_EXCLUSION.idx_qfn_exclusion_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXCLUSION') AND name='idx_qfn_exclusion_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHVD_COMP_PROGRESS') AND name='uidx_qfn_achvd_comp_prog_01')
BEGIN
    DROP INDEX QFN_ACHVD_COMP_PROGRESS.uidx_qfn_achvd_comp_prog_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHVD_COMP_PROGRESS') AND name='uidx_qfn_achvd_comp_prog_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHVD_COMP_PROGRESS.uidx_qfn_achvd_comp_prog_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHVD_COMP_PROGRESS.uidx_qfn_achvd_comp_prog_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDR_STATUS_HIST') AND name='uidx_qfn_achvd_endr_sta_his_01')
BEGIN
    DROP INDEX QFN_ACHIEVED_ENDR_STATUS_HIST.uidx_qfn_achvd_endr_sta_his_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDR_STATUS_HIST') AND name='uidx_qfn_achvd_endr_sta_his_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN_ACHIEVED_ENDR_STATUS_HIST.uidx_qfn_achvd_endr_sta_his_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN_ACHIEVED_ENDR_STATUS_HIST.uidx_qfn_achvd_endr_sta_his_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='QFN_QFN_NUMBER_UNQ')
BEGIN
    DROP INDEX QFN.QFN_QFN_NUMBER_UNQ
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='QFN_QFN_NUMBER_UNQ')
        PRINT '<<< FAILED DROPPING INDEX dbo.QFN.QFN_QFN_NUMBER_UNQ >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.QFN.QFN_QFN_NUMBER_UNQ >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_QUALCHECK_RESULT') AND name='IDX_PROV_QUALCHECK_RESULT_02')
BEGIN
    DROP INDEX PROV_QUALCHECK_RESULT.IDX_PROV_QUALCHECK_RESULT_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_QUALCHECK_RESULT') AND name='IDX_PROV_QUALCHECK_RESULT_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROV_QUALCHECK_RESULT.IDX_PROV_QUALCHECK_RESULT_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROV_QUALCHECK_RESULT.IDX_PROV_QUALCHECK_RESULT_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVISIONAL_QUALCHECK_RUN') AND name='IDX_PROV_QUALCHECK_RUN_02')
BEGIN
    DROP INDEX PROVISIONAL_QUALCHECK_RUN.IDX_PROV_QUALCHECK_RUN_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVISIONAL_QUALCHECK_RUN') AND name='IDX_PROV_QUALCHECK_RUN_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVISIONAL_QUALCHECK_RUN.IDX_PROV_QUALCHECK_RUN_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVISIONAL_QUALCHECK_RUN.IDX_PROV_QUALCHECK_RUN_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='AK_PROVIDER')
BEGIN
    DROP INDEX PROVIDER.AK_PROVIDER
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='AK_PROVIDER')
        PRINT '<<< FAILED DROPPING INDEX dbo.PROVIDER.AK_PROVIDER >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PROVIDER.AK_PROVIDER >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='uidx_perorg_role_06')
BEGIN
    DROP INDEX PERORG_ROLE.uidx_perorg_role_06
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='uidx_perorg_role_06')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE.uidx_perorg_role_06 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE.uidx_perorg_role_06 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_5')
BEGIN
    DROP INDEX PERORG_ROLE.idx_perorg_role_5
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_5')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ROLE.idx_perorg_role_5 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ROLE.idx_perorg_role_5 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ALT_ID') AND name='idx_perorg_alt_id_01')
BEGIN
    DROP INDEX PERORG_ALT_ID.idx_perorg_alt_id_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ALT_ID') AND name='idx_perorg_alt_id_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.PERORG_ALT_ID.idx_perorg_alt_id_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.PERORG_ALT_ID.idx_perorg_alt_id_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='uidx_outsdng_fee_lodgement_03')
BEGIN
    DROP INDEX OUTSTANDING_FEE_LODGEMENT.uidx_outsdng_fee_lodgement_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='uidx_outsdng_fee_lodgement_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.OUTSTANDING_FEE_LODGEMENT.uidx_outsdng_fee_lodgement_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.OUTSTANDING_FEE_LODGEMENT.uidx_outsdng_fee_lodgement_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='uidx_order_03')
BEGIN
    DROP INDEX ORDER_REQUEST.uidx_order_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='uidx_order_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_REQUEST.uidx_order_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_REQUEST.uidx_order_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM_TYPE') AND name='uidx_order_item_type_cat')
BEGIN
    DROP INDEX ORDER_ITEM_TYPE.uidx_order_item_type_cat
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM_TYPE') AND name='uidx_order_item_type_cat')
        PRINT '<<< FAILED DROPPING INDEX dbo.ORDER_ITEM_TYPE.uidx_order_item_type_cat >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ORDER_ITEM_TYPE.uidx_order_item_type_cat >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NZQA_POSITION_TITLE') AND name='IDX_NZQA_POS_TITLE_POS_CODE')
BEGIN
    DROP INDEX NZQA_POSITION_TITLE.IDX_NZQA_POS_TITLE_POS_CODE
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NZQA_POSITION_TITLE') AND name='IDX_NZQA_POS_TITLE_POS_CODE')
        PRINT '<<< FAILED DROPPING INDEX dbo.NZQA_POSITION_TITLE.IDX_NZQA_POS_TITLE_POS_CODE >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NZQA_POSITION_TITLE.IDX_NZQA_POS_TITLE_POS_CODE >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_FOCUS') AND name='idx_nqaf_stg_reg_focus_01')
BEGIN
    DROP INDEX NQAF_STG_REG_FOCUS.idx_nqaf_stg_reg_focus_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_FOCUS') AND name='idx_nqaf_stg_reg_focus_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_REG_FOCUS.idx_nqaf_stg_reg_focus_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_REG_FOCUS.idx_nqaf_stg_reg_focus_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_EXEMPTION') AND name='idx_naqf_stg_reg_exemption_01')
BEGIN
    DROP INDEX NQAF_STG_REG_EXEMPTION.idx_naqf_stg_reg_exemption_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_EXEMPTION') AND name='idx_naqf_stg_reg_exemption_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.NQAF_STG_REG_EXEMPTION.idx_naqf_stg_reg_exemption_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.NQAF_STG_REG_EXEMPTION.idx_naqf_stg_reg_exemption_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_JUDGEMENT') AND name='uidx_moderation_rpt_judge_03')
BEGIN
    DROP INDEX MODERATION_REPORT_JUDGEMENT.uidx_moderation_rpt_judge_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_JUDGEMENT') AND name='uidx_moderation_rpt_judge_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_REPORT_JUDGEMENT.uidx_moderation_rpt_judge_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_REPORT_JUDGEMENT.uidx_moderation_rpt_judge_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='IDX_MOD_ASSESS_PLAN_01')
BEGIN
    DROP INDEX MODERATION_ASSESSMENT_PLAN.IDX_MOD_ASSESS_PLAN_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='IDX_MOD_ASSESS_PLAN_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MODERATION_ASSESSMENT_PLAN.IDX_MOD_ASSESS_PLAN_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MODERATION_ASSESSMENT_PLAN.IDX_MOD_ASSESS_PLAN_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MEMO_OF_AGREEMENT') AND name='uidx_memo_of_agreement_01')
BEGIN
    DROP INDEX MEMO_OF_AGREEMENT.uidx_memo_of_agreement_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MEMO_OF_AGREEMENT') AND name='uidx_memo_of_agreement_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.MEMO_OF_AGREEMENT.uidx_memo_of_agreement_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MEMO_OF_AGREEMENT.uidx_memo_of_agreement_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='uix_panel_marker')
BEGIN
    DROP INDEX MARKER_PANEL_MEMBER.uix_panel_marker
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='uix_panel_marker')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL_MEMBER.uix_panel_marker >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL_MEMBER.uix_panel_marker >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_ALLOCATION_GRP') AND name='IDX_MPAG_PANEL_ALLOC')
BEGIN
    DROP INDEX MARKER_PANEL_ALLOCATION_GRP.IDX_MPAG_PANEL_ALLOC
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_ALLOCATION_GRP') AND name='IDX_MPAG_PANEL_ALLOC')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.IDX_MPAG_PANEL_ALLOC >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.IDX_MPAG_PANEL_ALLOC >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_ALLOCATION_GROUP') AND name='IDX_MEMBER_MPAG')
BEGIN
    DROP INDEX MARKER_ALLOCATION_GROUP.IDX_MEMBER_MPAG
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_ALLOCATION_GROUP') AND name='IDX_MEMBER_MPAG')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_ALLOCATION_GROUP.IDX_MEMBER_MPAG >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_ALLOCATION_GROUP.IDX_MEMBER_MPAG >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_ALLOCATION_GROUP') AND name='AK_AK_MARKER_ALLOCATI_MARKER_A')
BEGIN
    DROP INDEX MARKER_ALLOCATION_GROUP.AK_AK_MARKER_ALLOCATI_MARKER_A
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_ALLOCATION_GROUP') AND name='AK_AK_MARKER_ALLOCATI_MARKER_A')
        PRINT '<<< FAILED DROPPING INDEX dbo.MARKER_ALLOCATION_GROUP.AK_AK_MARKER_ALLOCATI_MARKER_A >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.MARKER_ALLOCATION_GROUP.AK_AK_MARKER_ALLOCATI_MARKER_A >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE') AND name='uidx_LEARNER_SORT_CODE_01')
BEGIN
    DROP INDEX LEARNER_SORT_CODE.uidx_LEARNER_SORT_CODE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE') AND name='uidx_LEARNER_SORT_CODE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_SORT_CODE.uidx_LEARNER_SORT_CODE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_SORT_CODE.uidx_LEARNER_SORT_CODE_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_mtce_result_02')
BEGIN
    DROP INDEX LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_mtce_result_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_mtce_result_01')
BEGIN
    DROP INDEX LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_mtce_result_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_maint_result_03')
BEGIN
    DROP INDEX LEARNER_MAINTENANCE_RESULT.idx_learner_maint_result_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_maint_result_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_maint_result_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_maint_result_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='idx_learner_input_match_01')
BEGIN
    DROP INDEX LEARNER_INPUT_MATCH.idx_learner_input_match_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='idx_learner_input_match_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_INPUT_MATCH.idx_learner_input_match_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_INPUT_MATCH.idx_learner_input_match_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='IDX_NZQA_LEARNER_ID')
BEGIN
    DROP INDEX LEARNER_INPUT_MATCH.IDX_NZQA_LEARNER_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='IDX_NZQA_LEARNER_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_INPUT_MATCH.IDX_NZQA_LEARNER_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_INPUT_MATCH.IDX_NZQA_LEARNER_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='IDX_LEARNER_ID')
BEGIN
    DROP INDEX LEARNER_INPUT_MATCH.IDX_LEARNER_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='IDX_LEARNER_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_INPUT_MATCH.IDX_LEARNER_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_INPUT_MATCH.IDX_LEARNER_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='idx_learner_input_02')
BEGIN
    DROP INDEX LEARNER_INPUT.idx_learner_input_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='idx_learner_input_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_INPUT.idx_learner_input_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_INPUT.idx_learner_input_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='idx_learner_input_01')
BEGIN
    DROP INDEX LEARNER_INPUT.idx_learner_input_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='idx_learner_input_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_INPUT.idx_learner_input_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_INPUT.idx_learner_input_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='IDX_BATCH_INPUT_ID')
BEGIN
    DROP INDEX LEARNER_INPUT.IDX_BATCH_INPUT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='IDX_BATCH_INPUT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_INPUT.IDX_BATCH_INPUT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_INPUT.IDX_BATCH_INPUT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='tmp_idx1')
BEGIN
    DROP INDEX LEARNER_ENROLMENT.tmp_idx1
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='tmp_idx1')
        PRINT '<<< FAILED DROPPING INDEX dbo.LEARNER_ENROLMENT.tmp_idx1 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.LEARNER_ENROLMENT.tmp_idx1 >>>'
END
go
CREATE NONCLUSTERED INDEX tmp_idx1
    ON dbo.LEARNER_ENROLMENT(learner_id,academic_year,enrolment_id,enrolment_status_code,withdrawn_method)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_ENROLMENT') AND name='tmp_idx1')
    PRINT '<<< CREATED INDEX dbo.LEARNER_ENROLMENT.tmp_idx1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_ENROLMENT.tmp_idx1 >>>'
go
CREATE NONCLUSTERED INDEX IDX_BATCH_INPUT_ID
    ON dbo.LEARNER_INPUT(batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='IDX_BATCH_INPUT_ID')
    PRINT '<<< CREATED INDEX dbo.LEARNER_INPUT.IDX_BATCH_INPUT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_INPUT.IDX_BATCH_INPUT_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_input_01
    ON dbo.LEARNER_INPUT(selected_match)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='idx_learner_input_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_INPUT.idx_learner_input_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_INPUT.idx_learner_input_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_input_02
    ON dbo.LEARNER_INPUT(qfn_achieved_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT') AND name='idx_learner_input_02')
    PRINT '<<< CREATED INDEX dbo.LEARNER_INPUT.idx_learner_input_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_INPUT.idx_learner_input_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_LEARNER_ID
    ON dbo.LEARNER_INPUT_MATCH(learner_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='IDX_LEARNER_ID')
    PRINT '<<< CREATED INDEX dbo.LEARNER_INPUT_MATCH.IDX_LEARNER_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_INPUT_MATCH.IDX_LEARNER_ID >>>'
go
CREATE NONCLUSTERED INDEX IDX_NZQA_LEARNER_ID
    ON dbo.LEARNER_INPUT_MATCH(nzqa_learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='IDX_NZQA_LEARNER_ID')
    PRINT '<<< CREATED INDEX dbo.LEARNER_INPUT_MATCH.IDX_NZQA_LEARNER_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_INPUT_MATCH.IDX_NZQA_LEARNER_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_input_match_01
    ON dbo.LEARNER_INPUT_MATCH(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_INPUT_MATCH') AND name='idx_learner_input_match_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_INPUT_MATCH.idx_learner_input_match_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_INPUT_MATCH.idx_learner_input_match_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_maint_result_03
    ON dbo.LEARNER_MAINTENANCE_RESULT(moe_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_maint_result_03')
    PRINT '<<< CREATED INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_maint_result_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_maint_result_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_mtce_result_01
    ON dbo.LEARNER_MAINTENANCE_RESULT(learner_id,date_processed)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_mtce_result_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_learner_mtce_result_02
    ON dbo.LEARNER_MAINTENANCE_RESULT(diary_event_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_MAINTENANCE_RESULT') AND name='idx_learner_mtce_result_02')
    PRINT '<<< CREATED INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_MAINTENANCE_RESULT.idx_learner_mtce_result_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_LEARNER_SORT_CODE_01
    ON dbo.LEARNER_SORT_CODE(sort_code,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE') AND name='uidx_LEARNER_SORT_CODE_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_SORT_CODE.uidx_LEARNER_SORT_CODE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_SORT_CODE.uidx_LEARNER_SORT_CODE_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_AK_MARKER_ALLOCATI_MARKER_A
    ON dbo.MARKER_ALLOCATION_GROUP(panel_member_id,marker_panel_ag_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_ALLOCATION_GROUP') AND name='AK_AK_MARKER_ALLOCATI_MARKER_A')
    PRINT '<<< CREATED INDEX dbo.MARKER_ALLOCATION_GROUP.AK_AK_MARKER_ALLOCATI_MARKER_A >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_ALLOCATION_GROUP.AK_AK_MARKER_ALLOCATI_MARKER_A >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_MEMBER_MPAG
    ON dbo.MARKER_ALLOCATION_GROUP(marker_panel_ag_id,panel_member_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_ALLOCATION_GROUP') AND name='IDX_MEMBER_MPAG')
    PRINT '<<< CREATED INDEX dbo.MARKER_ALLOCATION_GROUP.IDX_MEMBER_MPAG >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_ALLOCATION_GROUP.IDX_MEMBER_MPAG >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_MPAG_PANEL_ALLOC
    ON dbo.MARKER_PANEL_ALLOCATION_GRP(panel_id,allocation_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_ALLOCATION_GRP') AND name='IDX_MPAG_PANEL_ALLOC')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.IDX_MPAG_PANEL_ALLOC >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.IDX_MPAG_PANEL_ALLOC >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uix_panel_marker
    ON dbo.MARKER_PANEL_MEMBER(marker_id,panel_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='uix_panel_marker')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL_MEMBER.uix_panel_marker >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL_MEMBER.uix_panel_marker >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_memo_of_agreement_01
    ON dbo.MEMO_OF_AGREEMENT(academic_year,moe_provider_id,location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MEMO_OF_AGREEMENT') AND name='uidx_memo_of_agreement_01')
    PRINT '<<< CREATED INDEX dbo.MEMO_OF_AGREEMENT.uidx_memo_of_agreement_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MEMO_OF_AGREEMENT.uidx_memo_of_agreement_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_MOD_ASSESS_PLAN_01
    ON dbo.MODERATION_ASSESSMENT_PLAN(moe_provider_id,provider_location,academic_year,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='IDX_MOD_ASSESS_PLAN_01')
    PRINT '<<< CREATED INDEX dbo.MODERATION_ASSESSMENT_PLAN.IDX_MOD_ASSESS_PLAN_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_ASSESSMENT_PLAN.IDX_MOD_ASSESS_PLAN_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_moderation_rpt_judge_03
    ON dbo.MODERATION_REPORT_JUDGEMENT(moderation_report_id,sortkey)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_JUDGEMENT') AND name='uidx_moderation_rpt_judge_03')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT_JUDGEMENT.uidx_moderation_rpt_judge_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT_JUDGEMENT.uidx_moderation_rpt_judge_03 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_naqf_stg_reg_exemption_01
    ON dbo.NQAF_STG_REG_EXEMPTION(nqaf_stg_reg_app_id,sfp_exemption_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_EXEMPTION') AND name='idx_naqf_stg_reg_exemption_01')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_REG_EXEMPTION.idx_naqf_stg_reg_exemption_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_REG_EXEMPTION.idx_naqf_stg_reg_exemption_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_nqaf_stg_reg_focus_01
    ON dbo.NQAF_STG_REG_FOCUS(nqaf_stg_reg_app_id,provider_focus_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_FOCUS') AND name='idx_nqaf_stg_reg_focus_01')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_REG_FOCUS.idx_nqaf_stg_reg_focus_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_REG_FOCUS.idx_nqaf_stg_reg_focus_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_NZQA_POS_TITLE_POS_CODE
    ON dbo.NZQA_POSITION_TITLE(position_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NZQA_POSITION_TITLE') AND name='IDX_NZQA_POS_TITLE_POS_CODE')
    PRINT '<<< CREATED INDEX dbo.NZQA_POSITION_TITLE.IDX_NZQA_POS_TITLE_POS_CODE >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NZQA_POSITION_TITLE.IDX_NZQA_POS_TITLE_POS_CODE >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_order_item_type_cat
    ON dbo.ORDER_ITEM_TYPE(order_item_category_code,order_item_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM_TYPE') AND name='uidx_order_item_type_cat')
    PRINT '<<< CREATED INDEX dbo.ORDER_ITEM_TYPE.uidx_order_item_type_cat >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_ITEM_TYPE.uidx_order_item_type_cat >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_order_03
    ON dbo.ORDER_REQUEST(order_reference)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='uidx_order_03')
    PRINT '<<< CREATED INDEX dbo.ORDER_REQUEST.uidx_order_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_REQUEST.uidx_order_03 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_outsdng_fee_lodgement_03
    ON dbo.OUTSTANDING_FEE_LODGEMENT(lodgement_reference)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='uidx_outsdng_fee_lodgement_03')
    PRINT '<<< CREATED INDEX dbo.OUTSTANDING_FEE_LODGEMENT.uidx_outsdng_fee_lodgement_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.OUTSTANDING_FEE_LODGEMENT.uidx_outsdng_fee_lodgement_03 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_perorg_alt_id_01
    ON dbo.PERORG_ALT_ID(altid_type_code,altid_value1,altid_value2,altid_value3)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ALT_ID') AND name='idx_perorg_alt_id_01')
    PRINT '<<< CREATED INDEX dbo.PERORG_ALT_ID.idx_perorg_alt_id_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ALT_ID.idx_perorg_alt_id_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_perorg_role_5
    ON dbo.PERORG_ROLE(perorg_id,perorg_role_type_code,context_cycle,context_code,related_perorg_role_id,ssb_type_code,end_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_5')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE.idx_perorg_role_5 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE.idx_perorg_role_5 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_perorg_role_06
    ON dbo.PERORG_ROLE(perorg_role_id,perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='uidx_perorg_role_06')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE.uidx_perorg_role_06 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE.uidx_perorg_role_06 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_PROVIDER
    ON dbo.PROVIDER(moe_provider_id,location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='AK_PROVIDER')
    PRINT '<<< CREATED INDEX dbo.PROVIDER.AK_PROVIDER >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER.AK_PROVIDER >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_PROV_QUALCHECK_RUN_02
    ON dbo.PROVISIONAL_QUALCHECK_RUN(learner_id,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVISIONAL_QUALCHECK_RUN') AND name='IDX_PROV_QUALCHECK_RUN_02')
    PRINT '<<< CREATED INDEX dbo.PROVISIONAL_QUALCHECK_RUN.IDX_PROV_QUALCHECK_RUN_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVISIONAL_QUALCHECK_RUN.IDX_PROV_QUALCHECK_RUN_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX IDX_PROV_QUALCHECK_RESULT_02
    ON dbo.PROV_QUALCHECK_RESULT(qualcheck_run_id,qfn_number,qfn_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_QUALCHECK_RESULT') AND name='IDX_PROV_QUALCHECK_RESULT_02')
    PRINT '<<< CREATED INDEX dbo.PROV_QUALCHECK_RESULT.IDX_PROV_QUALCHECK_RESULT_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_QUALCHECK_RESULT.IDX_PROV_QUALCHECK_RESULT_02 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX QFN_QFN_NUMBER_UNQ
    ON dbo.QFN(qfn_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='QFN_QFN_NUMBER_UNQ')
    PRINT '<<< CREATED INDEX dbo.QFN.QFN_QFN_NUMBER_UNQ >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN.QFN_QFN_NUMBER_UNQ >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_qfn_achvd_endr_sta_his_01
    ON dbo.QFN_ACHIEVED_ENDR_STATUS_HIST(qfn_achieved_endorsement_id,achieved_status_code,update_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDR_STATUS_HIST') AND name='uidx_qfn_achvd_endr_sta_his_01')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED_ENDR_STATUS_HIST.uidx_qfn_achvd_endr_sta_his_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED_ENDR_STATUS_HIST.uidx_qfn_achvd_endr_sta_his_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_qfn_achvd_comp_prog_01
    ON dbo.QFN_ACHVD_COMP_PROGRESS(qfn_achieved_id,qfn_achvd_comp_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHVD_COMP_PROGRESS') AND name='uidx_qfn_achvd_comp_prog_01')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHVD_COMP_PROGRESS.uidx_qfn_achvd_comp_prog_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHVD_COMP_PROGRESS.uidx_qfn_achvd_comp_prog_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_qfn_exclusion_01
    ON dbo.QFN_EXCLUSION(lhs_std_id,rhs_std_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXCLUSION') AND name='idx_qfn_exclusion_01')
    PRINT '<<< CREATED INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_qfn_exemption_row_01
    ON dbo.QFN_EXEMPTION_ROW(qfn_exmptn_table_id,qfn_exmptn_row_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXEMPTION_ROW') AND name='idx_qfn_exemption_row_01')
    PRINT '<<< CREATED INDEX dbo.QFN_EXEMPTION_ROW.idx_qfn_exemption_row_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_EXEMPTION_ROW.idx_qfn_exemption_row_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_qfn_scenario_01
    ON dbo.QFN_SCENARIO(qfn_scenario_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO') AND name='idx_qfn_scenario_01')
    PRINT '<<< CREATED INDEX dbo.QFN_SCENARIO.idx_qfn_scenario_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_SCENARIO.idx_qfn_scenario_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_QFN_TYPE_01
    ON dbo.QFN_TYPE(qs_code,qfn_class_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_TYPE') AND name='uidx_QFN_TYPE_01')
    PRINT '<<< CREATED INDEX dbo.QFN_TYPE.uidx_QFN_TYPE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_TYPE.uidx_QFN_TYPE_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_QFN_VERSION
    ON dbo.QFN_VERSION(qfn_number,qfn_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='AK_QFN_VERSION')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION.AK_QFN_VERSION >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION.AK_QFN_VERSION >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_QRS_STG_APPLICATION_01
    ON dbo.QRS_STG_APPLICATION(qrs_applicant_id,application_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='uidx_QRS_STG_APPLICATION_01')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLICATION.uidx_QRS_STG_APPLICATION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLICATION.uidx_QRS_STG_APPLICATION_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX ak_qual_application
    ON dbo.QUAL_APPLICATION(application_number,application_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QUAL_APPLICATION') AND name='ak_qual_application')
    PRINT '<<< CREATED INDEX dbo.QUAL_APPLICATION.ak_qual_application >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QUAL_APPLICATION.ak_qual_application >>>'
go
CREATE NONCLUSTERED INDEX idx_LEARNER_SORT_CODE_UNALC_01
    ON dbo.LEARNER_SORT_CODE_UNALLOC(seq_nbr)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE_UNALLOC') AND name='idx_LEARNER_SORT_CODE_UNALC_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_LEARNER_SORT_CODE_UNALC_02
    ON dbo.LEARNER_SORT_CODE_UNALLOC(sort_group_1,sort_group_2,sort_group_3)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_SORT_CODE_UNALLOC') AND name='idx_LEARNER_SORT_CODE_UNALC_02')
    PRINT '<<< CREATED INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_SORT_CODE_UNALLOC.idx_LEARNER_SORT_CODE_UNALC_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_LEARNER_STATISTIC_01
    ON dbo.LEARNER_STATISTIC(learner_id,academic_year,statistic_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LEARNER_STATISTIC') AND name='idx_LEARNER_STATISTIC_01')
    PRINT '<<< CREATED INDEX dbo.LEARNER_STATISTIC.idx_LEARNER_STATISTIC_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LEARNER_STATISTIC.idx_LEARNER_STATISTIC_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_lodgement_detail_01
    ON dbo.LODGEMENT_DETAIL(outstanding_fee_lodgement_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LODGEMENT_DETAIL') AND name='idx_lodgement_detail_01')
    PRINT '<<< CREATED INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_lodgement_detail_02
    ON dbo.LODGEMENT_DETAIL(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LODGEMENT_DETAIL') AND name='idx_lodgement_detail_02')
    PRINT '<<< CREATED INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LODGEMENT_DETAIL.idx_lodgement_detail_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_lvl_01
    ON dbo.LVL(level_code,level_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='idx_lvl_01')
    PRINT '<<< CREATED INDEX dbo.LVL.idx_lvl_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LVL.idx_lvl_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_429814158_247
    ON dbo.LVL(other_text)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_247')
    PRINT '<<< CREATED INDEX dbo.LVL.repl_429814158_247 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LVL.repl_429814158_247 >>>'
go
CREATE NONCLUSTERED INDEX repl_429814158_248
    ON dbo.LVL(responsibility_text)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_248')
    PRINT '<<< CREATED INDEX dbo.LVL.repl_429814158_248 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LVL.repl_429814158_248 >>>'
go
CREATE NONCLUSTERED INDEX repl_429814158_249
    ON dbo.LVL(learning_demand_text)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_249')
    PRINT '<<< CREATED INDEX dbo.LVL.repl_429814158_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LVL.repl_429814158_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_429814158_250
    ON dbo.LVL(process_text)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.LVL') AND name='repl_429814158_250')
    PRINT '<<< CREATED INDEX dbo.LVL.repl_429814158_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.LVL.repl_429814158_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_02
    ON dbo.MARKER(perorg_role_id,marker_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_02')
    PRINT '<<< CREATED INDEX dbo.MARKER.idx_marker_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.idx_marker_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_03
    ON dbo.MARKER(assigned_marker_code,marker_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_03')
    PRINT '<<< CREATED INDEX dbo.MARKER.idx_marker_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.idx_marker_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_04
    ON dbo.MARKER(actual_marker_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_04')
    PRINT '<<< CREATED INDEX dbo.MARKER.idx_marker_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.idx_marker_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_05
    ON dbo.MARKER(moe_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='idx_marker_05')
    PRINT '<<< CREATED INDEX dbo.MARKER.idx_marker_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.idx_marker_05 >>>'
go
CREATE NONCLUSTERED INDEX repl_478946793_247
    ON dbo.MARKER(teaching_experience)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_247')
    PRINT '<<< CREATED INDEX dbo.MARKER.repl_478946793_247 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.repl_478946793_247 >>>'
go
CREATE NONCLUSTERED INDEX repl_478946793_248
    ON dbo.MARKER(standards_experience)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_248')
    PRINT '<<< CREATED INDEX dbo.MARKER.repl_478946793_248 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.repl_478946793_248 >>>'
go
CREATE NONCLUSTERED INDEX repl_478946793_249
    ON dbo.MARKER(relevant_abilities)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_249')
    PRINT '<<< CREATED INDEX dbo.MARKER.repl_478946793_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.repl_478946793_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_478946793_250
    ON dbo.MARKER(prof_working_relationships)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER') AND name='repl_478946793_250')
    PRINT '<<< CREATED INDEX dbo.MARKER.repl_478946793_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER.repl_478946793_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_panel_01
    ON dbo.MARKER_PANEL(academic_year,panel_name)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL') AND name='idx_marker_panel_01')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL.idx_marker_panel_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL.idx_marker_panel_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_panel_02
    ON dbo.MARKER_PANEL(academic_year,panel_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL') AND name='idx_marker_panel_02')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL.idx_marker_panel_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL.idx_marker_panel_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_panel_alloc_grp_02
    ON dbo.MARKER_PANEL_ALLOCATION_GRP(allocation_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_ALLOCATION_GRP') AND name='idx_marker_panel_alloc_grp_02')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.idx_marker_panel_alloc_grp_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL_ALLOCATION_GRP.idx_marker_panel_alloc_grp_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_panel_member_01
    ON dbo.MARKER_PANEL_MEMBER(panel_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='idx_marker_panel_member_01')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_panel_member_02
    ON dbo.MARKER_PANEL_MEMBER(marker_id,panel_member_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER') AND name='idx_marker_panel_member_02')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL_MEMBER.idx_marker_panel_member_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_marker_panel_member_sta_01
    ON dbo.MARKER_PANEL_MEMBER_STATUS(allocate_to,mpm_status)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARKER_PANEL_MEMBER_STATUS') AND name='idx_marker_panel_member_sta_01')
    PRINT '<<< CREATED INDEX dbo.MARKER_PANEL_MEMBER_STATUS.idx_marker_panel_member_sta_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARKER_PANEL_MEMBER_STATUS.idx_marker_panel_member_sta_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_mark_input_01
    ON dbo.MARK_INPUT(batch_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MARK_INPUT') AND name='idx_mark_input_01')
    PRINT '<<< CREATED INDEX dbo.MARK_INPUT.idx_mark_input_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MARK_INPUT.idx_mark_input_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_master_learner_id
    ON dbo.MERGE_REQUEST(master_learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MERGE_REQUEST') AND name='idx_master_learner_id')
    PRINT '<<< CREATED INDEX dbo.MERGE_REQUEST.idx_master_learner_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MERGE_REQUEST.idx_master_learner_id >>>'
go
CREATE NONCLUSTERED INDEX idx_MERGE_REQ_STAT_HIST_01
    ON dbo.MERGE_REQUEST_STATUS_HISTORY(request_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MERGE_REQUEST_STATUS_HISTORY') AND name='idx_MERGE_REQ_STAT_HIST_01')
    PRINT '<<< CREATED INDEX dbo.MERGE_REQUEST_STATUS_HISTORY.idx_MERGE_REQ_STAT_HIST_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MERGE_REQUEST_STATUS_HISTORY.idx_MERGE_REQ_STAT_HIST_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_1516529405_250
    ON dbo.MESSAGE_LISTENER(ml_image)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_LISTENER') AND name='repl_1516529405_250')
    PRINT '<<< CREATED INDEX dbo.MESSAGE_LISTENER.repl_1516529405_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MESSAGE_LISTENER.repl_1516529405_250 >>>'
go
CREATE NONCLUSTERED INDEX repl_1580529633_250
    ON dbo.MESSAGE_QUEUE(msg_image)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_QUEUE') AND name='repl_1580529633_250')
    PRINT '<<< CREATED INDEX dbo.MESSAGE_QUEUE.repl_1580529633_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MESSAGE_QUEUE.repl_1580529633_250 >>>'
go
CREATE NONCLUSTERED INDEX repl_1644529861_250
    ON dbo.MESSAGE_SELECTOR(ms_image)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MESSAGE_SELECTOR') AND name='repl_1644529861_250')
    PRINT '<<< CREATED INDEX dbo.MESSAGE_SELECTOR.repl_1644529861_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MESSAGE_SELECTOR.repl_1644529861_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_mod_asses_plan_02
    ON dbo.MODERATION_ASSESSMENT_PLAN(academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='idx_mod_asses_plan_02')
    PRINT '<<< CREATED INDEX dbo.MODERATION_ASSESSMENT_PLAN.idx_mod_asses_plan_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_ASSESSMENT_PLAN.idx_mod_asses_plan_02 >>>'
go
CREATE NONCLUSTERED INDEX repl_1276736770_250
    ON dbo.MODERATION_ASSESSMENT_PLAN(nzqa_notes)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_PLAN') AND name='repl_1276736770_250')
    PRINT '<<< CREATED INDEX dbo.MODERATION_ASSESSMENT_PLAN.repl_1276736770_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_ASSESSMENT_PLAN.repl_1276736770_250 >>>'
go
CREATE CLUSTERED INDEX idxw_mod_assessment_std_03
    ON dbo.MODERATION_ASSESSMENT_STD(assessment_subject_id,assessment_std_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_STD') AND name='idxw_mod_assessment_std_03')
    PRINT '<<< CREATED INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_03 >>>'
go
CREATE CLUSTERED INDEX idxw_moderation_assess_subj_01
    ON dbo.MODERATION_ASSESSMENT_SUBJ(assessment_plan_id,assessment_subject_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_SUBJ') AND name='idxw_moderation_assess_subj_01')
    PRINT '<<< CREATED INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_01 >>>'
go
CREATE CLUSTERED INDEX idxw_moderation_report_comp_01
    ON dbo.MODERATION_REPORT_COMPONENT(moderation_report_id,component_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_COMPONENT') AND name='idxw_moderation_report_comp_01')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT_COMPONENT.idxw_moderation_report_comp_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT_COMPONENT.idxw_moderation_report_comp_01 >>>'
go
CREATE CLUSTERED INDEX idxw_moderation_rpt_judge_01
    ON dbo.MODERATION_REPORT_JUDGEMENT(moderation_report_id,judgement_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT_JUDGEMENT') AND name='idxw_moderation_rpt_judge_01')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT_JUDGEMENT.idxw_moderation_rpt_judge_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT_JUDGEMENT.idxw_moderation_rpt_judge_01 >>>'
go
CREATE CLUSTERED INDEX idxw_mod_submission_date_01
    ON dbo.MODERATION_SUBMISSION_DATE(assessment_plan_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_SUBMISSION_DATE') AND name='idxw_mod_submission_date_01')
    PRINT '<<< CREATED INDEX dbo.MODERATION_SUBMISSION_DATE.idxw_mod_submission_date_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_SUBMISSION_DATE.idxw_mod_submission_date_01 >>>'
go
CREATE CLUSTERED INDEX idx_name_05
    ON dbo.NAME(surname,perorg_id,name_type_code,name1,name2,name3,preferred_ind,active_ind)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_05')
    PRINT '<<< CREATED INDEX dbo.NAME.idx_name_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NAME.idx_name_05 >>>'
go
CREATE CLUSTERED INDEX idx_perorg_role_01
    ON dbo.PERORG_ROLE(perorg_id,perorg_role_type_code)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_01')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE.idx_perorg_role_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE.idx_perorg_role_01 >>>'
go
CREATE NONCLUSTERED INDEX idxw_mod_assessment_std_04
    ON dbo.MODERATION_ASSESSMENT_STD(latest_report_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_STD') AND name='idxw_mod_assessment_std_04')
    PRINT '<<< CREATED INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_ASSESSMENT_STD.idxw_mod_assessment_std_04 >>>'
go
CREATE NONCLUSTERED INDEX idxw_moderation_assess_subj_02
    ON dbo.MODERATION_ASSESSMENT_SUBJ(std_group_id,assessment_plan_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_ASSESSMENT_SUBJ') AND name='idxw_moderation_assess_subj_02')
    PRINT '<<< CREATED INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_ASSESSMENT_SUBJ.idxw_moderation_assess_subj_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_MODERATION_REPORT_01
    ON dbo.MODERATION_REPORT(assessment_std_id,moderation_report_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_01')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_MODERATION_REPORT_02
    ON dbo.MODERATION_REPORT(moderator_role_id,moderation_report_id,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_02')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_02 >>>'
go
CREATE NONCLUSTERED INDEX IDX_MODERATION_REPORT_03
    ON dbo.MODERATION_REPORT(mod_report_status_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='IDX_MODERATION_REPORT_03')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.IDX_MODERATION_REPORT_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_moderation_report_04
    ON dbo.MODERATION_REPORT(submission_date_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='idx_moderation_report_04')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.idx_moderation_report_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.idx_moderation_report_04 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_242
    ON dbo.MODERATION_REPORT(commentary)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_242')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_242 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_243
    ON dbo.MODERATION_REPORT(check_mod_activity_comment)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_243')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_243 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_243 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_244
    ON dbo.MODERATION_REPORT(check_mod_activity)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_244')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_244 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_244 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_245
    ON dbo.MODERATION_REPORT(check_mod_approval_comment)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_245')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_245 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_245 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_246
    ON dbo.MODERATION_REPORT(reasons_for_appeal)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_246')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_246 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_246 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_247
    ON dbo.MODERATION_REPORT(schedule_comment)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_247')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_247 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_247 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_248
    ON dbo.MODERATION_REPORT(activity_comment)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_248')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_248 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_248 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_249
    ON dbo.MODERATION_REPORT(activity)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_249')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_1618687125_250
    ON dbo.MODERATION_REPORT(summary)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATION_REPORT') AND name='repl_1618687125_250')
    PRINT '<<< CREATED INDEX dbo.MODERATION_REPORT.repl_1618687125_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATION_REPORT.repl_1618687125_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_moderator_01
    ON dbo.MODERATOR(perorg_id,moderator_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR') AND name='idx_moderator_01')
    PRINT '<<< CREATED INDEX dbo.MODERATOR.idx_moderator_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATOR.idx_moderator_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_moderator_role_01
    ON dbo.MODERATOR_ROLE(moderator_id,moderator_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='idx_moderator_role_01')
    PRINT '<<< CREATED INDEX dbo.MODERATOR_ROLE.idx_moderator_role_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATOR_ROLE.idx_moderator_role_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_moderator_role_02
    ON dbo.MODERATOR_ROLE(perorg_role_id,mod_role_status_code,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='idx_moderator_role_02')
    PRINT '<<< CREATED INDEX dbo.MODERATOR_ROLE.idx_moderator_role_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATOR_ROLE.idx_moderator_role_02 >>>'
go
CREATE NONCLUSTERED INDEX repl_1452737397_250
    ON dbo.MODERATOR_ROLE(notes)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MODERATOR_ROLE') AND name='repl_1452737397_250')
    PRINT '<<< CREATED INDEX dbo.MODERATOR_ROLE.repl_1452737397_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MODERATOR_ROLE.repl_1452737397_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_mod_forbidden_provider_01
    ON dbo.MOD_FORBIDDEN_PROVIDER(moderator_role_id,moe_provider_id,provider_location,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_FORBIDDEN_PROVIDER') AND name='idx_mod_forbidden_provider_01')
    PRINT '<<< CREATED INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_mod_forbidden_provider_02
    ON dbo.MOD_FORBIDDEN_PROVIDER(moe_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_FORBIDDEN_PROVIDER') AND name='idx_mod_forbidden_provider_02')
    PRINT '<<< CREATED INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MOD_FORBIDDEN_PROVIDER.idx_mod_forbidden_provider_02 >>>'
go
CREATE NONCLUSTERED INDEX idxw_report_status_history_01
    ON dbo.MOD_REPORT_STATUS_HISTORY(moderation_report_id,mod_report_history_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.MOD_REPORT_STATUS_HISTORY') AND name='idxw_report_status_history_01')
    PRINT '<<< CREATED INDEX dbo.MOD_REPORT_STATUS_HISTORY.idxw_report_status_history_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.MOD_REPORT_STATUS_HISTORY.idxw_report_status_history_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_NAME_06
    ON dbo.NAME(original_reference_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='IDX_NAME_06')
    PRINT '<<< CREATED INDEX dbo.NAME.IDX_NAME_06 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NAME.IDX_NAME_06 >>>'
go
CREATE NONCLUSTERED INDEX idx_name_01
    ON dbo.NAME(perorg_id,preferred_ind,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_01')
    PRINT '<<< CREATED INDEX dbo.NAME.idx_name_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NAME.idx_name_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_name_02
    ON dbo.NAME(surname,name1)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_02')
    PRINT '<<< CREATED INDEX dbo.NAME.idx_name_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NAME.idx_name_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_name_03
    ON dbo.NAME(name1,surname)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_03')
    PRINT '<<< CREATED INDEX dbo.NAME.idx_name_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NAME.idx_name_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_name_04
    ON dbo.NAME(perorg_id,surname)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NAME') AND name='idx_name_04')
    PRINT '<<< CREATED INDEX dbo.NAME.idx_name_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NAME.idx_name_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_note_iss_status_hist_01
    ON dbo.NOTE_ISSUE_STATUS_HIST(note_issue_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NOTE_ISSUE_STATUS_HIST') AND name='idx_note_iss_status_hist_01')
    PRINT '<<< CREATED INDEX dbo.NOTE_ISSUE_STATUS_HIST.idx_note_iss_status_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NOTE_ISSUE_STATUS_HIST.idx_note_iss_status_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_nqaf_stg_appln_01
    ON dbo.NQAF_STG_APPLICATION(teo_perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLICATION') AND name='idx_nqaf_stg_appln_01')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_APPLICATION.idx_nqaf_stg_appln_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_APPLICATION.idx_nqaf_stg_appln_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_399454312_250
    ON dbo.NQAF_STG_APPLICATION(comments)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLICATION') AND name='repl_399454312_250')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_APPLICATION.repl_399454312_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_APPLICATION.repl_399454312_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_nqaf_stg_appln_cont_01
    ON dbo.NQAF_STG_APPLN_CONTACT(nqaf_stg_application_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_APPLN_CONTACT') AND name='idx_nqaf_stg_appln_cont_01')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_APPLN_CONTACT.idx_nqaf_stg_appln_cont_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_APPLN_CONTACT.idx_nqaf_stg_appln_cont_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_236
    ON dbo.NQAF_STG_CAA_APP(transition_arrangements)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_236')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_236 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_236 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_237
    ON dbo.NQAF_STG_CAA_APP(teaching_learning_resources)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_237')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_237 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_237 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_238
    ON dbo.NQAF_STG_CAA_APP(summary_of_change)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_238')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_238 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_238 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_239
    ON dbo.NQAF_STG_CAA_APP(subject_area_exp)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_239')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_239 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_239 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_240
    ON dbo.NQAF_STG_CAA_APP(staffing_resources)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_240')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_240 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_240 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_241
    ON dbo.NQAF_STG_CAA_APP(reason_for_change)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_241')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_241 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_241 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_242
    ON dbo.NQAF_STG_CAA_APP(overseas_delivery)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_242')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_242 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_243
    ON dbo.NQAF_STG_CAA_APP(organisation_stability)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_243')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_243 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_243 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_244
    ON dbo.NQAF_STG_CAA_APP(organisation_qms)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_244')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_244 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_244 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_245
    ON dbo.NQAF_STG_CAA_APP(library_resources)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_245')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_245 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_245 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_246
    ON dbo.NQAF_STG_CAA_APP(internal_support)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_246')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_246 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_246 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_247
    ON dbo.NQAF_STG_CAA_APP(internal_approval)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_247')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_247 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_247 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_248
    ON dbo.NQAF_STG_CAA_APP(external_support)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_248')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_248 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_248 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_249
    ON dbo.NQAF_STG_CAA_APP(deliver_mode_exp)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_249')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_543454825_250
    ON dbo.NQAF_STG_CAA_APP(course_dev_and_review)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CAA_APP') AND name='repl_543454825_250')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CAA_APP.repl_543454825_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_nqaf_stg_crse_qfn_01
    ON dbo.NQAF_STG_CRSE_QFN(course_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='idx_nqaf_stg_crse_qfn_01')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CRSE_QFN.idx_nqaf_stg_crse_qfn_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CRSE_QFN.idx_nqaf_stg_crse_qfn_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_591454996_248
    ON dbo.NQAF_STG_CRSE_QFN(prerequisite)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_248')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_248 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_248 >>>'
go
CREATE NONCLUSTERED INDEX repl_591454996_249
    ON dbo.NQAF_STG_CRSE_QFN(outcome)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_249')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_591454996_250
    ON dbo.NQAF_STG_CRSE_QFN(content)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_CRSE_QFN') AND name='repl_591454996_250')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_CRSE_QFN.repl_591454996_250 >>>'
go
CREATE NONCLUSTERED INDEX repl_898268120_250
    ON dbo.NQAF_STG_REG_APP(justification)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.NQAF_STG_REG_APP') AND name='repl_898268120_250')
    PRINT '<<< CREATED INDEX dbo.NQAF_STG_REG_APP.repl_898268120_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.NQAF_STG_REG_APP.repl_898268120_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_item_01
    ON dbo.ORDER_ITEM(order_request_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_01')
    PRINT '<<< CREATED INDEX dbo.ORDER_ITEM.idx_order_item_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_ITEM.idx_order_item_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_item_02
    ON dbo.ORDER_ITEM(order_item_category_code,order_item_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_02')
    PRINT '<<< CREATED INDEX dbo.ORDER_ITEM.idx_order_item_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_ITEM.idx_order_item_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_item_03
    ON dbo.ORDER_ITEM(order_item_status_code,order_item_category_code,order_item_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_03')
    PRINT '<<< CREATED INDEX dbo.ORDER_ITEM.idx_order_item_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_ITEM.idx_order_item_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_item_04
    ON dbo.ORDER_ITEM(qfn_achieved_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_04')
    PRINT '<<< CREATED INDEX dbo.ORDER_ITEM.idx_order_item_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_ITEM.idx_order_item_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_item_entry
    ON dbo.ORDER_ITEM(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM') AND name='idx_order_item_entry')
    PRINT '<<< CREATED INDEX dbo.ORDER_ITEM.idx_order_item_entry >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_ITEM.idx_order_item_entry >>>'
go
CREATE NONCLUSTERED INDEX idx_order_itmem_status_hist_01
    ON dbo.ORDER_ITEM_STATUS_HIST(order_item_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_ITEM_STATUS_HIST') AND name='idx_order_itmem_status_hist_01')
    PRINT '<<< CREATED INDEX dbo.ORDER_ITEM_STATUS_HIST.idx_order_itmem_status_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_ITEM_STATUS_HIST.idx_order_itmem_status_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_note_01
    ON dbo.ORDER_NOTE(order_request_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_NOTE') AND name='idx_order_note_01')
    PRINT '<<< CREATED INDEX dbo.ORDER_NOTE.idx_order_note_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_NOTE.idx_order_note_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_01
    ON dbo.ORDER_REQUEST(perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='idx_order_01')
    PRINT '<<< CREATED INDEX dbo.ORDER_REQUEST.idx_order_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_REQUEST.idx_order_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_order_02
    ON dbo.ORDER_REQUEST(payment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORDER_REQUEST') AND name='idx_order_02')
    PRINT '<<< CREATED INDEX dbo.ORDER_REQUEST.idx_order_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORDER_REQUEST.idx_order_02 >>>'
go
CREATE NONCLUSTERED INDEX idx1_organisation_logo
    ON dbo.ORGANISATION_LOGO(perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORGANISATION_LOGO') AND name='idx1_organisation_logo')
    PRINT '<<< CREATED INDEX dbo.ORGANISATION_LOGO.idx1_organisation_logo >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORGANISATION_LOGO.idx1_organisation_logo >>>'
go
CREATE NONCLUSTERED INDEX idx_org_evaluation_01
    ON dbo.ORG_EVALUATION(perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION') AND name='idx_org_evaluation_01')
    PRINT '<<< CREATED INDEX dbo.ORG_EVALUATION.idx_org_evaluation_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORG_EVALUATION.idx_org_evaluation_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_2146936535_250
    ON dbo.ORG_EVALUATION(www_ext_qa_notes)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION') AND name='repl_2146936535_250')
    PRINT '<<< CREATED INDEX dbo.ORG_EVALUATION.repl_2146936535_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORG_EVALUATION.repl_2146936535_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_org_evaluation_hist_01
    ON dbo.ORG_EVALUATION_HISTORY(org_evaluation_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_EVALUATION_HISTORY') AND name='idx_org_evaluation_hist_01')
    PRINT '<<< CREATED INDEX dbo.ORG_EVALUATION_HISTORY.idx_org_evaluation_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORG_EVALUATION_HISTORY.idx_org_evaluation_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_org_profile_note_01
    ON dbo.ORG_PROFILE_NOTE(perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_PROFILE_NOTE') AND name='idx_org_profile_note_01')
    PRINT '<<< CREATED INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_org_profile_note_02
    ON dbo.ORG_PROFILE_NOTE(prov_risk_issue_id,org_profile_note_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_PROFILE_NOTE') AND name='idx_org_profile_note_02')
    PRINT '<<< CREATED INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORG_PROFILE_NOTE.idx_org_profile_note_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_orq_qa_activity_01
    ON dbo.ORG_QA_ACTIVITY(org_qa_activity_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ORG_QA_ACTIVITY') AND name='idx_orq_qa_activity_01')
    PRINT '<<< CREATED INDEX dbo.ORG_QA_ACTIVITY.idx_orq_qa_activity_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ORG_QA_ACTIVITY.idx_orq_qa_activity_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_outsdng_fee_lodgement_01
    ON dbo.OUTSTANDING_FEE_LODGEMENT(perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='idx_outsdng_fee_lodgement_01')
    PRINT '<<< CREATED INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_outsdng_fee_lodgement_02
    ON dbo.OUTSTANDING_FEE_LODGEMENT(payment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.OUTSTANDING_FEE_LODGEMENT') AND name='idx_outsdng_fee_lodgement_02')
    PRINT '<<< CREATED INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.OUTSTANDING_FEE_LODGEMENT.idx_outsdng_fee_lodgement_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_payment_01
    ON dbo.PAYMENT(nzqa_payment_reference)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_01')
    PRINT '<<< CREATED INDEX dbo.PAYMENT.idx_payment_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PAYMENT.idx_payment_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_payment_02
    ON dbo.PAYMENT(application_system_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_02')
    PRINT '<<< CREATED INDEX dbo.PAYMENT.idx_payment_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PAYMENT.idx_payment_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_payment_03
    ON dbo.PAYMENT(payment_status_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_03')
    PRINT '<<< CREATED INDEX dbo.PAYMENT.idx_payment_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PAYMENT.idx_payment_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_payment_04
    ON dbo.PAYMENT(directp_qrs_stg_application_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT') AND name='idx_payment_04')
    PRINT '<<< CREATED INDEX dbo.PAYMENT.idx_payment_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PAYMENT.idx_payment_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_payment_recon_run_01
    ON dbo.PAYMENT_RECONCILIATION_RUN(application_system_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT_RECONCILIATION_RUN') AND name='idx_payment_recon_run_01')
    PRINT '<<< CREATED INDEX dbo.PAYMENT_RECONCILIATION_RUN.idx_payment_recon_run_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PAYMENT_RECONCILIATION_RUN.idx_payment_recon_run_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_payment_status_hist_01
    ON dbo.PAYMENT_STATUS_HIST(payment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PAYMENT_STATUS_HIST') AND name='idx_payment_status_hist_01')
    PRINT '<<< CREATED INDEX dbo.PAYMENT_STATUS_HIST.idx_payment_status_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PAYMENT_STATUS_HIST.idx_payment_status_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_IS_LEARNER
    ON dbo.PERORG(is_learner,perorg_id,perorg_type_code,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='IDX_IS_LEARNER')
    PRINT '<<< CREATED INDEX dbo.PERORG.IDX_IS_LEARNER >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG.IDX_IS_LEARNER >>>'
go
CREATE NONCLUSTERED INDEX IDX_USER_ID
    ON dbo.PERORG(user_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='IDX_USER_ID')
    PRINT '<<< CREATED INDEX dbo.PERORG.IDX_USER_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG.IDX_USER_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_perorg_01
    ON dbo.PERORG(dob)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG') AND name='idx_perorg_01')
    PRINT '<<< CREATED INDEX dbo.PERORG.idx_perorg_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG.idx_perorg_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_ALT_ID_02
    ON dbo.PERORG_ALT_ID(perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ALT_ID') AND name='IDX_ALT_ID_02')
    PRINT '<<< CREATED INDEX dbo.PERORG_ALT_ID.IDX_ALT_ID_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ALT_ID.IDX_ALT_ID_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_perorg_case_01
    ON dbo.PERORG_CASE(external_case_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_CASE') AND name='idx_perorg_case_01')
    PRINT '<<< CREATED INDEX dbo.PERORG_CASE.idx_perorg_case_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_CASE.idx_perorg_case_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_perorg_role_02
    ON dbo.PERORG_ROLE(perorg_role_id,perorg_role_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_02')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE.idx_perorg_role_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE.idx_perorg_role_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_perorg_role_03
    ON dbo.PERORG_ROLE(related_perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_03')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE.idx_perorg_role_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE.idx_perorg_role_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_perorg_role_04
    ON dbo.PERORG_ROLE(perorg_role_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_04')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE.idx_perorg_role_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE.idx_perorg_role_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_perorg_role_07
    ON dbo.PERORG_ROLE(perorg_id,perorg_role_type_code,perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE') AND name='idx_perorg_role_07')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE.idx_perorg_role_07 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE.idx_perorg_role_07 >>>'
go
CREATE NONCLUSTERED INDEX idx_PERORG_ROLE_TYPE_01
    ON dbo.PERORG_ROLE_TYPE(perorg_role_type_code,perorg_role_type_desc)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERORG_ROLE_TYPE') AND name='idx_PERORG_ROLE_TYPE_01')
    PRINT '<<< CREATED INDEX dbo.PERORG_ROLE_TYPE.idx_PERORG_ROLE_TYPE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERORG_ROLE_TYPE.idx_PERORG_ROLE_TYPE_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_person_claim_role
    ON dbo.PERSON_CLAIM(person_claim_id,perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERSON_CLAIM') AND name='idx_person_claim_role')
    PRINT '<<< CREATED INDEX dbo.PERSON_CLAIM.idx_person_claim_role >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERSON_CLAIM.idx_person_claim_role >>>'
go
CREATE NONCLUSTERED INDEX idx_pers_vol_count_01
    ON dbo.PERS_VOL_COUNT(exam_centre_id,exam_centre_location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERS_VOL_COUNT') AND name='idx_pers_vol_count_01')
    PRINT '<<< CREATED INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_pers_vol_count_02
    ON dbo.PERS_VOL_COUNT(exam_material_cmpt_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PERS_VOL_COUNT') AND name='idx_pers_vol_count_02')
    PRINT '<<< CREATED INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PERS_VOL_COUNT.idx_pers_vol_count_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_prerequisite_stand_name_01
    ON dbo.PREREQUISITE_STRAND_NAME(prerequisite_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PREREQUISITE_STRAND_NAME') AND name='idx_prerequisite_stand_name_01')
    PRINT '<<< CREATED INDEX dbo.PREREQUISITE_STRAND_NAME.idx_prerequisite_stand_name_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PREREQUISITE_STRAND_NAME.idx_prerequisite_stand_name_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_provider_01
    ON dbo.PROVIDER(provider_type_code,provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='idx_provider_01')
    PRINT '<<< CREATED INDEX dbo.PROVIDER.idx_provider_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER.idx_provider_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_provider_02
    ON dbo.PROVIDER(moe_provider_id,location,provider_type_code,active_ind)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER') AND name='idx_provider_02')
    PRINT '<<< CREATED INDEX dbo.PROVIDER.idx_provider_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER.idx_provider_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_provider_condition_01
    ON dbo.PROVIDER_CONDITION(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_CONDITION') AND name='idx_provider_condition_01')
    PRINT '<<< CREATED INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_provider_condition_02
    ON dbo.PROVIDER_CONDITION(perorg_case_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_CONDITION') AND name='idx_provider_condition_02')
    PRINT '<<< CREATED INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER_CONDITION.idx_provider_condition_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_cop_apprvl_01
    ON dbo.PROVIDER_COP_APPRVL(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_COP_APPRVL') AND name='idx_prov_cop_apprvl_01')
    PRINT '<<< CREATED INDEX dbo.PROVIDER_COP_APPRVL.idx_prov_cop_apprvl_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER_COP_APPRVL.idx_prov_cop_apprvl_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_provider_cop_apprvl_hist_01
    ON dbo.PROVIDER_COP_APPRVL_HIST(provider_cop_apprvl_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_COP_APPRVL_HIST') AND name='idx_provider_cop_apprvl_hist_01')
    PRINT '<<< CREATED INDEX dbo.PROVIDER_COP_APPRVL_HIST.idx_provider_cop_apprvl_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER_COP_APPRVL_HIST.idx_provider_cop_apprvl_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_provider_focus_01
    ON dbo.PROVIDER_FOCUS(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_FOCUS') AND name='idx_provider_focus_01')
    PRINT '<<< CREATED INDEX dbo.PROVIDER_FOCUS.idx_provider_focus_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER_FOCUS.idx_provider_focus_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_1074268747_250
    ON dbo.PROVIDER_HEAD_OFFICE(collaborative_arragmt)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_HEAD_OFFICE') AND name='repl_1074268747_250')
    PRINT '<<< CREATED INDEX dbo.PROVIDER_HEAD_OFFICE.repl_1074268747_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER_HEAD_OFFICE.repl_1074268747_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_provider_property_01
    ON dbo.PROVIDER_KVP(moe_provider_id,location,academic_year,property_key)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROVIDER_KVP') AND name='idx_provider_property_01')
    PRINT '<<< CREATED INDEX dbo.PROVIDER_KVP.idx_provider_property_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROVIDER_KVP.idx_provider_property_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_lrnr_category_01
    ON dbo.PROV_LRNR_CATEGORY(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_LRNR_CATEGORY') AND name='idx_prov_lrnr_category_01')
    PRINT '<<< CREATED INDEX dbo.PROV_LRNR_CATEGORY.idx_prov_lrnr_category_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_LRNR_CATEGORY.idx_prov_lrnr_category_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_risk_issue_01
    ON dbo.PROV_RISK_ISSUE(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_01')
    PRINT '<<< CREATED INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_risk_issue_02
    ON dbo.PROV_RISK_ISSUE(perorg_case_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_02')
    PRINT '<<< CREATED INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_risk_issue_03
    ON dbo.PROV_RISK_ISSUE(assigned_to_perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_RISK_ISSUE') AND name='idx_prov_risk_issue_03')
    PRINT '<<< CREATED INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_RISK_ISSUE.idx_prov_risk_issue_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_spf_argmt_01
    ON dbo.PROV_SFP_ARGMT(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_ARGMT') AND name='idx_prov_spf_argmt_01')
    PRINT '<<< CREATED INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_spf_argmt_02
    ON dbo.PROV_SFP_ARGMT(trust_holder_perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_ARGMT') AND name='idx_prov_spf_argmt_02')
    PRINT '<<< CREATED INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_SFP_ARGMT.idx_prov_spf_argmt_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_prov_spf_exemption_01
    ON dbo.PROV_SFP_EXEMPTION(provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.PROV_SFP_EXEMPTION') AND name='idx_prov_spf_exemption_01')
    PRINT '<<< CREATED INDEX dbo.PROV_SFP_EXEMPTION.idx_prov_spf_exemption_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PROV_SFP_EXEMPTION.idx_prov_spf_exemption_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QES_INSTITUTE_01
    ON dbo.QES_INSTITUTE(perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QES_INSTITUTE') AND name='idx_QES_INSTITUTE_01')
    PRINT '<<< CREATED INDEX dbo.QES_INSTITUTE.idx_QES_INSTITUTE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QES_INSTITUTE.idx_QES_INSTITUTE_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_latest_qfn_version_id
    ON dbo.QFN(latest_qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_QFN_latest_qfn_version_id')
    PRINT '<<< CREATED INDEX dbo.QFN.idx_QFN_latest_qfn_version_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN.idx_QFN_latest_qfn_version_id >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_qfn_type_code
    ON dbo.QFN(qfn_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_QFN_qfn_type_code')
    PRINT '<<< CREATED INDEX dbo.QFN.idx_QFN_qfn_type_code >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN.idx_QFN_qfn_type_code >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_latest_reg_id
    ON dbo.QFN(latest_reg_qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN') AND name='idx_qfn_latest_reg_id')
    PRINT '<<< CREATED INDEX dbo.QFN.idx_qfn_latest_reg_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN.idx_qfn_latest_reg_id >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_ACHIEVED_03
    ON dbo.QFN_ACHIEVED(issued_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_QFN_ACHIEVED_03')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHIEVED_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHIEVED_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_ACHVD_awrdng_prvdr
    ON dbo.QFN_ACHIEVED(awarding_provider_id,awarding_provider_location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_QFN_ACHVD_awrdng_prvdr')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHVD_awrdng_prvdr >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED.idx_QFN_ACHVD_awrdng_prvdr >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_achieved_01
    ON dbo.QFN_ACHIEVED(learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_01')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_achieved_02
    ON dbo.QFN_ACHIEVED(qfn_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_02')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_achieved_04
    ON dbo.QFN_ACHIEVED(submitting_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED') AND name='idx_qfn_achieved_04')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED.idx_qfn_achieved_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_achieved_endor_01
    ON dbo.QFN_ACHIEVED_ENDORSEMENT(qfn_achieved_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDORSEMENT') AND name='idx_qfn_achieved_endor_01')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_achieved_endor_02
    ON dbo.QFN_ACHIEVED_ENDORSEMENT(endorsement_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_ENDORSEMENT') AND name='idx_qfn_achieved_endor_02')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED_ENDORSEMENT.idx_qfn_achieved_endor_02 >>>'
go
CREATE NONCLUSTERED INDEX uidx_qfn_achvd_status_hist_01
    ON dbo.QFN_ACHIEVED_STATUS_HIST(qfn_achieved_id,achieved_status_code,update_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHIEVED_STATUS_HIST') AND name='uidx_qfn_achvd_status_hist_01')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHIEVED_STATUS_HIST.uidx_qfn_achvd_status_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHIEVED_STATUS_HIST.uidx_qfn_achvd_status_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_achvd_comp_pro_his_01
    ON dbo.QFN_ACHVD_COMP_PROG_HIST(qfn_achvd_comp_progress_id,achieved_status_code,update_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ACHVD_COMP_PROG_HIST') AND name='idx_qfn_achvd_comp_pro_his_01')
    PRINT '<<< CREATED INDEX dbo.QFN_ACHVD_COMP_PROG_HIST.idx_qfn_achvd_comp_pro_his_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ACHVD_COMP_PROG_HIST.idx_qfn_achvd_comp_pro_his_01 >>>'
go
CREATE NONCLUSTERED INDEX IX_QFN_CERT_01
    ON dbo.QFN_CERT(qfn_achieved_endorsement_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CERT') AND name='IX_QFN_CERT_01')
    PRINT '<<< CREATED INDEX dbo.QFN_CERT.IX_QFN_CERT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_CERT.IX_QFN_CERT_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_cert_02
    ON dbo.QFN_CERT(qfn_achieved_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CERT') AND name='idx_qfn_cert_02')
    PRINT '<<< CREATED INDEX dbo.QFN_CERT.idx_qfn_cert_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_CERT.idx_qfn_cert_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_CONDITION_01
    ON dbo.QFN_CONDITION(qfn_rule_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_01')
    PRINT '<<< CREATED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_CONDITION_02
    ON dbo.QFN_CONDITION(category_type)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_02')
    PRINT '<<< CREATED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_CONDITION_03
    ON dbo.QFN_CONDITION(qfn_cond_op_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_03')
    PRINT '<<< CREATED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_CONDITION_04
    ON dbo.QFN_CONDITION(per_category_type)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_04')
    PRINT '<<< CREATED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_CONDITION_05
    ON dbo.QFN_CONDITION(rules_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_CONDITION') AND name='idx_QFN_CONDITION_05')
    PRINT '<<< CREATED INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_CONDITION.idx_QFN_CONDITION_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_exclusion_02
    ON dbo.QFN_EXCLUSION(rhs_std_id,lhs_std_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXCLUSION') AND name='idx_qfn_exclusion_02')
    PRINT '<<< CREATED INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_EXCLUSION.idx_qfn_exclusion_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_exemption_item_01
    ON dbo.QFN_EXEMPTION_ITEM(qfn_exmptn_row_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_EXEMPTION_ITEM') AND name='idx_qfn_exemption_item_01')
    PRINT '<<< CREATED INDEX dbo.QFN_EXEMPTION_ITEM.idx_qfn_exemption_item_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_EXEMPTION_ITEM.idx_qfn_exemption_item_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_MINOR_VERSION_01
    ON dbo.QFN_MINOR_VERSION(current_rules_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='idx_QFN_MINOR_VERSION_01')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VERSION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VERSION_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_MINOR_VER_qfn_ver_id
    ON dbo.QFN_MINOR_VERSION(qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='idx_QFN_MINOR_VER_qfn_ver_id')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VER_qfn_ver_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.idx_QFN_MINOR_VER_qfn_ver_id >>>'
go
CREATE NONCLUSTERED INDEX repl_1106685301_244
    ON dbo.QFN_MINOR_VERSION(employment_pathway)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_244')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_244 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_244 >>>'
go
CREATE NONCLUSTERED INDEX repl_1106685301_245
    ON dbo.QFN_MINOR_VERSION(education_pathway)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_245')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_245 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_245 >>>'
go
CREATE NONCLUSTERED INDEX repl_1106685301_246
    ON dbo.QFN_MINOR_VERSION(special_notes)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_246')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_246 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_246 >>>'
go
CREATE NONCLUSTERED INDEX repl_1106685301_247
    ON dbo.QFN_MINOR_VERSION(outcome)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_247')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_247 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_247 >>>'
go
CREATE NONCLUSTERED INDEX repl_1106685301_248
    ON dbo.QFN_MINOR_VERSION(content)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_248')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_248 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_248 >>>'
go
CREATE NONCLUSTERED INDEX repl_1106685301_249
    ON dbo.QFN_MINOR_VERSION(prerequisite)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_249')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_1106685301_250
    ON dbo.QFN_MINOR_VERSION(purpose)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_MINOR_VERSION') AND name='repl_1106685301_250')
    PRINT '<<< CREATED INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_MINOR_VERSION.repl_1106685301_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_ORGANISATION_ROLE_qfn
    ON dbo.QFN_ORGANISATION_ROLE(qfn_id,perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ORGANISATION_ROLE') AND name='idx_QFN_ORGANISATION_ROLE_qfn')
    PRINT '<<< CREATED INDEX dbo.QFN_ORGANISATION_ROLE.idx_QFN_ORGANISATION_ROLE_qfn >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ORGANISATION_ROLE.idx_QFN_ORGANISATION_ROLE_qfn >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_organisation_role_role
    ON dbo.QFN_ORGANISATION_ROLE(perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_ORGANISATION_ROLE') AND name='idx_qfn_organisation_role_role')
    PRINT '<<< CREATED INDEX dbo.QFN_ORGANISATION_ROLE.idx_qfn_organisation_role_role >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_ORGANISATION_ROLE.idx_qfn_organisation_role_role >>>'
go
CREATE NONCLUSTERED INDEX idx_preq_exemption_strand_01
    ON dbo.QFN_PREQ_EXEMPTION_STRAND(qfn_exmptn_item_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_PREQ_EXEMPTION_STRAND') AND name='idx_preq_exemption_strand_01')
    PRINT '<<< CREATED INDEX dbo.QFN_PREQ_EXEMPTION_STRAND.idx_preq_exemption_strand_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_PREQ_EXEMPTION_STRAND.idx_preq_exemption_strand_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_prerequisite_01
    ON dbo.QFN_PREREQUISITE(qfn_version_id,qfn_section_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_PREREQUISITE') AND name='idx_qfn_prerequisite_01')
    PRINT '<<< CREATED INDEX dbo.QFN_PREREQUISITE.idx_qfn_prerequisite_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_PREREQUISITE.idx_qfn_prerequisite_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_RULE_01
    ON dbo.QFN_RULE(qfn_rule_type)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_01')
    PRINT '<<< CREATED INDEX dbo.QFN_RULE.idx_QFN_RULE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_RULE.idx_QFN_RULE_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_RULE_02
    ON dbo.QFN_RULE(qfn_qfn_rule_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_02')
    PRINT '<<< CREATED INDEX dbo.QFN_RULE.idx_QFN_RULE_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_RULE.idx_QFN_RULE_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_RULE_03
    ON dbo.QFN_RULE(endorsement_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='idx_QFN_RULE_03')
    PRINT '<<< CREATED INDEX dbo.QFN_RULE.idx_QFN_RULE_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_RULE.idx_QFN_RULE_03 >>>'
go
CREATE NONCLUSTERED INDEX repl_928823440_250
    ON dbo.QFN_RULE(non_std_params)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE') AND name='repl_928823440_250')
    PRINT '<<< CREATED INDEX dbo.QFN_RULE.repl_928823440_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_RULE.repl_928823440_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_RULE_CATEGORY_01
    ON dbo.QFN_RULE_CATEGORY(cfn_catg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE_CATEGORY') AND name='idx_QFN_RULE_CATEGORY_01')
    PRINT '<<< CREATED INDEX dbo.QFN_RULE_CATEGORY.idx_QFN_RULE_CATEGORY_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_RULE_CATEGORY.idx_QFN_RULE_CATEGORY_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_RULE_STD_VER_01
    ON dbo.QFN_RULE_STD_VER(std_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_RULE_STD_VER') AND name='idx_QFN_RULE_STD_VER_01')
    PRINT '<<< CREATED INDEX dbo.QFN_RULE_STD_VER.idx_QFN_RULE_STD_VER_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_RULE_STD_VER.idx_QFN_RULE_STD_VER_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_SCENARIO_02
    ON dbo.QFN_SCENARIO(qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO') AND name='idx_QFN_SCENARIO_02')
    PRINT '<<< CREATED INDEX dbo.QFN_SCENARIO.idx_QFN_SCENARIO_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_SCENARIO.idx_QFN_SCENARIO_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_SCENARIO_STD_COMP_01
    ON dbo.QFN_SCENARIO_STD_COMPONENT(qfn_scenario_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO_STD_COMPONENT') AND name='idx_QFN_SCENARIO_STD_COMP_01')
    PRINT '<<< CREATED INDEX dbo.QFN_SCENARIO_STD_COMPONENT.idx_QFN_SCENARIO_STD_COMP_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_SCENARIO_STD_COMPONENT.idx_QFN_SCENARIO_STD_COMP_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_SCENARIO_STRAND_01
    ON dbo.QFN_SCENARIO_STRAND(qfn_scenario_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SCENARIO_STRAND') AND name='idx_QFN_SCENARIO_STRAND_01')
    PRINT '<<< CREATED INDEX dbo.QFN_SCENARIO_STRAND.idx_QFN_SCENARIO_STRAND_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_SCENARIO_STRAND.idx_QFN_SCENARIO_STRAND_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_SECTION_01
    ON dbo.QFN_SECTION(rules_group_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SECTION') AND name='idx_QFN_SECTION_01')
    PRINT '<<< CREATED INDEX dbo.QFN_SECTION.idx_QFN_SECTION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_SECTION.idx_QFN_SECTION_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_SECTION_ACHIEVED_01
    ON dbo.QFN_SECTION_ACHIEVED(qfn_achieved_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SECTION_ACHIEVED') AND name='idx_QFN_SECTION_ACHIEVED_01')
    PRINT '<<< CREATED INDEX dbo.QFN_SECTION_ACHIEVED.idx_QFN_SECTION_ACHIEVED_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_SECTION_ACHIEVED.idx_QFN_SECTION_ACHIEVED_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qfn_sec_achieved_id
    ON dbo.QFN_SEC_ACHIEVED_STATUS_HIST(qfn_section_achieved_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_SEC_ACHIEVED_STATUS_HIST') AND name='idx_qfn_sec_achieved_id')
    PRINT '<<< CREATED INDEX dbo.QFN_SEC_ACHIEVED_STATUS_HIST.idx_qfn_sec_achieved_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_SEC_ACHIEVED_STATUS_HIST.idx_qfn_sec_achieved_id >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_HIST_qfn_status
    ON dbo.QFN_STATUS_HISTORY(qfn_status_code,qfn_status_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_STATUS_HISTORY') AND name='idx_QFN_HIST_qfn_status')
    PRINT '<<< CREATED INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_HIST_qfn_status >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_HIST_qfn_status >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_STATUS_HISTORY_01
    ON dbo.QFN_STATUS_HISTORY(qfn_id,qfn_status_code,qfn_status_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_STATUS_HISTORY') AND name='idx_QFN_STATUS_HISTORY_01')
    PRINT '<<< CREATED INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_STATUS_HISTORY_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_STATUS_HISTORY.idx_QFN_STATUS_HISTORY_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VERSION_01
    ON dbo.QFN_VERSION(ssb_perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_01')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VERSION_02
    ON dbo.QFN_VERSION(latest_pub_qfn_minor_ver_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_02')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VERSION_latest_qfn_mi
    ON dbo.QFN_VERSION(latest_qfn_minor_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_latest_qfn_mi')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_latest_qfn_mi >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_latest_qfn_mi >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VERSION_qfn_id
    ON dbo.QFN_VERSION(qfn_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION') AND name='idx_QFN_VERSION_qfn_id')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION.idx_QFN_VERSION_qfn_id >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION.idx_QFN_VERSION_qfn_id >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VER_CLASSIFICATION_01
    ON dbo.QFN_VERSION_CLASSIFICATION(qfn_version_id,cfn_catg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_CLASSIFICATION') AND name='idx_QFN_VER_CLASSIFICATION_01')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION_CLASSIFICATION.idx_QFN_VER_CLASSIFICATION_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION_CLASSIFICATION.idx_QFN_VER_CLASSIFICATION_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VERSION_PUB_HISTORY_01
    ON dbo.QFN_VERSION_PUB_HISTORY(qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_PUB_HISTORY') AND name='idx_QFN_VERSION_PUB_HISTORY_01')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION_PUB_HISTORY.idx_QFN_VERSION_PUB_HISTORY_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION_PUB_HISTORY.idx_QFN_VERSION_PUB_HISTORY_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VERSION_STATUS_HIST_01
    ON dbo.QFN_VERSION_STATUS_HISTORY(qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VERSION_STATUS_HISTORY') AND name='idx_QFN_VERSION_STATUS_HIST_01')
    PRINT '<<< CREATED INDEX dbo.QFN_VERSION_STATUS_HISTORY.idx_QFN_VERSION_STATUS_HIST_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VERSION_STATUS_HISTORY.idx_QFN_VERSION_STATUS_HIST_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_QFN_VER_QA_EVENT_HIST_01
    ON dbo.QFN_VER_QA_EVENT_HISTORY(qfn_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QFN_VER_QA_EVENT_HISTORY') AND name='idx_QFN_VER_QA_EVENT_HIST_01')
    PRINT '<<< CREATED INDEX dbo.QFN_VER_QA_EVENT_HISTORY.idx_QFN_VER_QA_EVENT_HIST_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QFN_VER_QA_EVENT_HISTORY.idx_QFN_VER_QA_EVENT_HIST_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_applicant_01
    ON dbo.QRS_APPLICANT(web_user_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_01')
    PRINT '<<< CREATED INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_applicant_02
    ON dbo.QRS_APPLICANT(first_name,dob,surname,previous_name)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_02')
    PRINT '<<< CREATED INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_applicant_03
    ON dbo.QRS_APPLICANT(applicant_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_APPLICANT') AND name='idx_qrs_applicant_03')
    PRINT '<<< CREATED INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_APPLICANT.idx_qrs_applicant_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_institution_02
    ON dbo.QRS_INSTITUTION(country_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION') AND name='idx_qrs_institution_02')
    PRINT '<<< CREATED INDEX dbo.QRS_INSTITUTION.idx_qrs_institution_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_INSTITUTION.idx_qrs_institution_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_institution_qfn_01
    ON dbo.QRS_INSTITUTION_QFN(qrs_institution_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION_QFN') AND name='idx_qrs_institution_qfn_01')
    PRINT '<<< CREATED INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_institution_qfn_name
    ON dbo.QRS_INSTITUTION_QFN(qualification_name)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_INSTITUTION_QFN') AND name='idx_qrs_institution_qfn_name')
    PRINT '<<< CREATED INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_name >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_INSTITUTION_QFN.idx_qrs_institution_qfn_name >>>'
go
CREATE NONCLUSTERED INDEX idx_QRS_STG_APPLICATION_02
    ON dbo.QRS_STG_APPLICATION(payment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='idx_QRS_STG_APPLICATION_02')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLICATION.idx_QRS_STG_APPLICATION_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLICATION.idx_QRS_STG_APPLICATION_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_stg_application_03
    ON dbo.QRS_STG_APPLICATION(agent_perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLICATION') AND name='idx_qrs_stg_application_03')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLICATION.idx_qrs_stg_application_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLICATION.idx_qrs_stg_application_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_stg_appln_other_doc_01
    ON dbo.QRS_STG_APPLN_OTHER_DOC(qrs_stg_application_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_OTHER_DOC') AND name='idx_qrs_stg_appln_other_doc_01')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLN_OTHER_DOC.idx_qrs_stg_appln_other_doc_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLN_OTHER_DOC.idx_qrs_stg_appln_other_doc_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_stg_appln_qfn_01
    ON dbo.QRS_STG_APPLN_QFN(qrs_stg_application_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='idx_qrs_stg_appln_qfn_01')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_stg_appln_qfn_02
    ON dbo.QRS_STG_APPLN_QFN(qrs_institution_qfn_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='idx_qrs_stg_appln_qfn_02')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLN_QFN.idx_qrs_stg_appln_qfn_02 >>>'
go
CREATE NONCLUSTERED INDEX repl_917848297_250
    ON dbo.QRS_STG_APPLN_QFN(course_admission_basis)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_QFN') AND name='repl_917848297_250')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLN_QFN.repl_917848297_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLN_QFN.repl_917848297_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_qrs_stg_appln_work_exp_01
    ON dbo.QRS_STG_APPLN_WORK_EXPERNCE(qrs_stg_application_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QRS_STG_APPLN_WORK_EXPERNCE') AND name='idx_qrs_stg_appln_work_exp_01')
    PRINT '<<< CREATED INDEX dbo.QRS_STG_APPLN_WORK_EXPERNCE.idx_qrs_stg_appln_work_exp_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QRS_STG_APPLN_WORK_EXPERNCE.idx_qrs_stg_appln_work_exp_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_1315688904_250
    ON dbo.QUAL_CHECK_RESULT(summary_report)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.QUAL_CHECK_RESULT') AND name='repl_1315688904_250')
    PRINT '<<< CREATED INDEX dbo.QUAL_CHECK_RESULT.repl_1315688904_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.QUAL_CHECK_RESULT.repl_1315688904_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_reconsideration_entry_01
    ON dbo.RECONSIDERATION_ENTRY(reconsideration_page_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_ENTRY') AND name='idx_reconsideration_entry_01')
    PRINT '<<< CREATED INDEX dbo.RECONSIDERATION_ENTRY.idx_reconsideration_entry_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RECONSIDERATION_ENTRY.idx_reconsideration_entry_01 >>>'
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.tmp_delete_standard_input') AND name='idx1')
BEGIN
    DROP INDEX tmp_delete_standard_input.idx1
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.tmp_delete_standard_input') AND name='idx1')
        PRINT '<<< FAILED DROPPING INDEX dbo.tmp_delete_standard_input.idx1 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.tmp_delete_standard_input.idx1 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='status_idx')
BEGIN
    DROP INDEX text_events.status_idx
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='status_idx')
        PRINT '<<< FAILED DROPPING INDEX dbo.text_events.status_idx >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.text_events.status_idx >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='status_date_idx')
BEGIN
    DROP INDEX text_events.status_date_idx
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='status_date_idx')
        PRINT '<<< FAILED DROPPING INDEX dbo.text_events.status_date_idx >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.text_events.status_date_idx >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ZIM_PERSONALISATION_RUN') AND name='repl_1040211925_250')
BEGIN
    DROP INDEX ZIM_PERSONALISATION_RUN.repl_1040211925_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ZIM_PERSONALISATION_RUN') AND name='repl_1040211925_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.ZIM_PERSONALISATION_RUN.repl_1040211925_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.ZIM_PERSONALISATION_RUN.repl_1040211925_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.TE_REO_INDICATION') AND name='idx_te_reo_indication_02')
BEGIN
    DROP INDEX TE_REO_INDICATION.idx_te_reo_indication_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.TE_REO_INDICATION') AND name='idx_te_reo_indication_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.TE_REO_INDICATION') AND name='idx_te_reo_indication_01')
BEGIN
    DROP INDEX TE_REO_INDICATION.idx_te_reo_indication_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.TE_REO_INDICATION') AND name='idx_te_reo_indication_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_UNALLOCATED') AND name='idx_supp_result_unallocated_02')
BEGIN
    DROP INDEX SUPP_RESULT_UNALLOCATED.idx_supp_result_unallocated_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_UNALLOCATED') AND name='idx_supp_result_unallocated_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unallocated_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unallocated_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_ALLOCATED') AND name='idx_supp_result_allocated_01')
BEGIN
    DROP INDEX SUPP_RESULT_ALLOCATED.idx_supp_result_allocated_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_ALLOCATED') AND name='idx_supp_result_allocated_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SUPP_RESULT_ALLOCATED.idx_supp_result_allocated_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SUPP_RESULT_ALLOCATED.idx_supp_result_allocated_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VER_QA_EVENT_HISTORY') AND name='uidx_std_ver_qa_event_hist_01')
BEGIN
    DROP INDEX STD_VER_QA_EVENT_HISTORY.uidx_std_ver_qa_event_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VER_QA_EVENT_HISTORY') AND name='uidx_std_ver_qa_event_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VER_QA_EVENT_HISTORY.uidx_std_ver_qa_event_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VER_QA_EVENT_HISTORY.uidx_std_ver_qa_event_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION_STATUS_HISTORY') AND name='idx_std_ver_status_history_01')
BEGIN
    DROP INDEX STD_VERSION_STATUS_HISTORY.idx_std_ver_status_history_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION_STATUS_HISTORY') AND name='idx_std_ver_status_history_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VERSION_STATUS_HISTORY.idx_std_ver_status_history_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VERSION_STATUS_HISTORY.idx_std_ver_status_history_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_07')
BEGIN
    DROP INDEX STD_VERSION.idx_std_version_07
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_07')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VERSION.idx_std_version_07 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VERSION.idx_std_version_07 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_02')
BEGIN
    DROP INDEX STD_VERSION.idx_std_version_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VERSION.idx_std_version_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VERSION.idx_std_version_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_01')
BEGIN
    DROP INDEX STD_VERSION.idx_std_version_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VERSION.idx_std_version_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VERSION.idx_std_version_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_STD_VERSION_04')
BEGIN
    DROP INDEX STD_VERSION.idx_STD_VERSION_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_STD_VERSION_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VERSION.idx_STD_VERSION_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VERSION.idx_STD_VERSION_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_STD_VERSION_03')
BEGIN
    DROP INDEX STD_VERSION.idx_STD_VERSION_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_STD_VERSION_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VERSION.idx_STD_VERSION_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VERSION.idx_STD_VERSION_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_STATUS_HISTORY') AND name='uidx_std_status_history_01')
BEGIN
    DROP INDEX STD_STATUS_HISTORY.uidx_std_status_history_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_STATUS_HISTORY') AND name='uidx_std_status_history_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_STATUS_HISTORY.uidx_std_status_history_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_STATUS_HISTORY.uidx_std_status_history_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_STATUS_HISTORY') AND name='idx_STD_HIST_std_status')
BEGIN
    DROP INDEX STD_STATUS_HISTORY.idx_STD_HIST_std_status
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_STATUS_HISTORY') AND name='idx_STD_HIST_std_status')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_STATUS_HISTORY.idx_STD_HIST_std_status >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_STATUS_HISTORY.idx_STD_HIST_std_status >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='repl_1820712145_250')
BEGIN
    DROP INDEX STD_MINOR_VERSION.repl_1820712145_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='repl_1820712145_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_MINOR_VERSION.repl_1820712145_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_MINOR_VERSION.repl_1820712145_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='repl_1820712145_249')
BEGIN
    DROP INDEX STD_MINOR_VERSION.repl_1820712145_249
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='repl_1820712145_249')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_MINOR_VERSION.repl_1820712145_249 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_MINOR_VERSION.repl_1820712145_249 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='idxw_std_minor_version_01')
BEGIN
    DROP INDEX STD_MINOR_VERSION.idxw_std_minor_version_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='idxw_std_minor_version_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_MINOR_VERSION.idxw_std_minor_version_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_MINOR_VERSION.idxw_std_minor_version_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='idx_std_minor_version_02')
BEGIN
    DROP INDEX STD_MINOR_VERSION.idx_std_minor_version_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='idx_std_minor_version_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_MINOR_VERSION.idx_std_minor_version_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_MINOR_VERSION.idx_std_minor_version_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_STD_MAPPING') AND name='IDX_STDGRP_STD_MAP_STD_ID')
BEGIN
    DROP INDEX STD_GROUP_STD_MAPPING.IDX_STDGRP_STD_MAP_STD_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_STD_MAPPING') AND name='IDX_STDGRP_STD_MAP_STD_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_GROUP_STD_MAPPING.IDX_STDGRP_STD_MAP_STD_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_GROUP_STD_MAPPING.IDX_STDGRP_STD_MAP_STD_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_COVERAGE') AND name='IDX_STD_GRP_CVG_STD_ID')
BEGIN
    DROP INDEX STD_GROUP_COVERAGE.IDX_STD_GRP_CVG_STD_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_COVERAGE') AND name='IDX_STD_GRP_CVG_STD_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_GROUP_COVERAGE.IDX_STD_GRP_CVG_STD_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_GROUP_COVERAGE.IDX_STD_GRP_CVG_STD_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_CFN_MAPPING') AND name='IDX_STDGRP_CFN_MAP_CFN_ID')
BEGIN
    DROP INDEX STD_GROUP_CFN_MAPPING.IDX_STDGRP_CFN_MAP_CFN_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_CFN_MAPPING') AND name='IDX_STDGRP_CFN_MAP_CFN_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_GROUP_CFN_MAPPING.IDX_STDGRP_CFN_MAP_CFN_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_GROUP_CFN_MAPPING.IDX_STDGRP_CFN_MAP_CFN_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP') AND name='idx_std_group_01')
BEGIN
    DROP INDEX STD_GROUP.idx_std_group_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP') AND name='idx_std_group_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_GROUP.idx_std_group_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_GROUP.idx_std_group_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='idx_std_01')
BEGIN
    DROP INDEX STD.idx_std_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='idx_std_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD.idx_std_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD.idx_std_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='idx_STD_std_type_code')
BEGIN
    DROP INDEX STD.idx_STD_std_type_code
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='idx_STD_std_type_code')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD.idx_STD_std_type_code >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD.idx_STD_std_type_code >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_KEY_INDICATOR') AND name='idx_STATS_KEY_INDICATOR_02')
BEGIN
    DROP INDEX STATS_KEY_INDICATOR.idx_STATS_KEY_INDICATOR_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_KEY_INDICATOR') AND name='idx_STATS_KEY_INDICATOR_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.STATS_KEY_INDICATOR.idx_STATS_KEY_INDICATOR_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STATS_KEY_INDICATOR.idx_STATS_KEY_INDICATOR_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_provider_04')
BEGIN
    DROP INDEX STATS_ENTRY_PROVIDER.idx_stats_entry_provider_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_provider_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_provider_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_provider_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_prov_02')
BEGIN
    DROP INDEX STATS_ENTRY_PROVIDER.idx_stats_entry_prov_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_prov_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_prov_01')
BEGIN
    DROP INDEX STATS_ENTRY_PROVIDER.idx_stats_entry_prov_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_prov_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_04')
BEGIN
    DROP INDEX STANDARD_INPUT.idx_standard_input_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.STANDARD_INPUT.idx_standard_input_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STANDARD_INPUT.idx_standard_input_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_03')
BEGIN
    DROP INDEX STANDARD_INPUT.idx_standard_input_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.STANDARD_INPUT.idx_standard_input_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STANDARD_INPUT.idx_standard_input_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_01')
BEGIN
    DROP INDEX STANDARD_INPUT.idx_standard_input_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STANDARD_INPUT.idx_standard_input_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STANDARD_INPUT.idx_standard_input_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='idx_srs_request_01')
BEGIN
    DROP INDEX SRS_REQUEST.idx_srs_request_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='idx_srs_request_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SRS_REQUEST.idx_srs_request_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SRS_REQUEST.idx_srs_request_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='IDX_SRS_REQUEST_04')
BEGIN
    DROP INDEX SRS_REQUEST.IDX_SRS_REQUEST_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='IDX_SRS_REQUEST_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='IDX_SRS_REQUEST_03')
BEGIN
    DROP INDEX SRS_REQUEST.IDX_SRS_REQUEST_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='IDX_SRS_REQUEST_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SQR_EVENT') AND name='idx_sqr_event_date')
BEGIN
    DROP INDEX SQR_EVENT.idx_sqr_event_date
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SQR_EVENT') AND name='idx_sqr_event_date')
        PRINT '<<< FAILED DROPPING INDEX dbo.SQR_EVENT.idx_sqr_event_date >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SQR_EVENT.idx_sqr_event_date >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SQR_EVENT') AND name='idx1')
BEGIN
    DROP INDEX SQR_EVENT.idx1
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SQR_EVENT') AND name='idx1')
        PRINT '<<< FAILED DROPPING INDEX dbo.SQR_EVENT.idx1 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SQR_EVENT.idx1 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SPER_YTD_RECON_LEARNER') AND name='idx_SPER_YTD_RECON_LEARNER_01')
BEGIN
    DROP INDEX SPER_YTD_RECON_LEARNER.idx_SPER_YTD_RECON_LEARNER_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SPER_YTD_RECON_LEARNER') AND name='idx_SPER_YTD_RECON_LEARNER_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SPER_YTD_RECON_LEARNER.idx_SPER_YTD_RECON_LEARNER_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SPER_YTD_RECON_LEARNER.idx_SPER_YTD_RECON_LEARNER_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SOP_MILESTONE') AND name='idx_sop_milestone_01')
BEGIN
    DROP INDEX SOP_MILESTONE.idx_sop_milestone_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SOP_MILESTONE') AND name='idx_sop_milestone_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SOP_MILESTONE.idx_sop_milestone_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SOP_MILESTONE.idx_sop_milestone_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SEC_COURSE_STD_HIST') AND name='Idx_sec_course_std_hist_02')
BEGIN
    DROP INDEX SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SEC_COURSE_STD_HIST') AND name='Idx_sec_course_std_hist_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SEC_COURSE_STD_HIST') AND name='Idx_sec_course_std_hist_01')
BEGIN
    DROP INDEX SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SEC_COURSE_STD_HIST') AND name='Idx_sec_course_std_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE_INPUT') AND name='IDX_COURSE_BATCH_INPUT_ID')
BEGIN
    DROP INDEX SECONDARY_COURSE_INPUT.IDX_COURSE_BATCH_INPUT_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE_INPUT') AND name='IDX_COURSE_BATCH_INPUT_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.SECONDARY_COURSE_INPUT.IDX_COURSE_BATCH_INPUT_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SECONDARY_COURSE_INPUT.IDX_COURSE_BATCH_INPUT_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE_HIST') AND name='Idx_secondary_course_hist_01')
BEGIN
    DROP INDEX SECONDARY_COURSE_HIST.Idx_secondary_course_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE_HIST') AND name='Idx_secondary_course_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SECONDARY_COURSE_HIST.Idx_secondary_course_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SECONDARY_COURSE_HIST.Idx_secondary_course_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_TEC_QUAL') AND name='idx_sdr_tec_qual_number')
BEGIN
    DROP INDEX SDR_TEC_QUAL.idx_sdr_tec_qual_number
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_TEC_QUAL') AND name='idx_sdr_tec_qual_number')
        PRINT '<<< FAILED DROPPING INDEX dbo.SDR_TEC_QUAL.idx_sdr_tec_qual_number >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SDR_TEC_QUAL.idx_sdr_tec_qual_number >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_COURSE') AND name='idx_sdr_course_student')
BEGIN
    DROP INDEX SDR_COURSE.idx_sdr_course_student
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_COURSE') AND name='idx_sdr_course_student')
        PRINT '<<< FAILED DROPPING INDEX dbo.SDR_COURSE.idx_sdr_course_student >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SDR_COURSE.idx_sdr_course_student >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SCHOOL_ASSISTANCE_CODE_DTL') AND name='idx_SCHOOL_ASSIST_CD_DTL_01')
BEGIN
    DROP INDEX SCHOOL_ASSISTANCE_CODE_DTL.idx_SCHOOL_ASSIST_CD_DTL_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SCHOOL_ASSISTANCE_CODE_DTL') AND name='idx_SCHOOL_ASSIST_CD_DTL_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SCHOOL_ASSISTANCE_CODE_DTL.idx_SCHOOL_ASSIST_CD_DTL_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SCHOOL_ASSISTANCE_CODE_DTL.idx_SCHOOL_ASSIST_CD_DTL_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RULES_GROUP') AND name='idx_RULES_GRP_QFN_MINOR_VER_ID')
BEGIN
    DROP INDEX RULES_GROUP.idx_RULES_GRP_QFN_MINOR_VER_ID
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RULES_GROUP') AND name='idx_RULES_GRP_QFN_MINOR_VER_ID')
        PRINT '<<< FAILED DROPPING INDEX dbo.RULES_GROUP.idx_RULES_GRP_QFN_MINOR_VER_ID >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RULES_GROUP.idx_RULES_GRP_QFN_MINOR_VER_ID >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RISK_ISSUE_STATUS_HIST') AND name='idx_risk_iss_status_hist_01')
BEGIN
    DROP INDEX RISK_ISSUE_STATUS_HIST.idx_risk_iss_status_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RISK_ISSUE_STATUS_HIST') AND name='idx_risk_iss_status_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RISK_ISSUE_STATUS_HIST.idx_risk_iss_status_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RISK_ISSUE_STATUS_HIST.idx_risk_iss_status_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RISK_ISSUE_INDEX_HIST') AND name='idx_risk_iss_index_hist_01')
BEGIN
    DROP INDEX RISK_ISSUE_INDEX_HIST.idx_risk_iss_index_hist_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RISK_ISSUE_INDEX_HIST') AND name='idx_risk_iss_index_hist_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RISK_ISSUE_INDEX_HIST.idx_risk_iss_index_hist_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RISK_ISSUE_INDEX_HIST.idx_risk_iss_index_hist_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_UNALLOCATED') AND name='idx_supp_result_unalloc_01')
BEGIN
    DROP INDEX SUPP_RESULT_UNALLOCATED.idx_supp_result_unalloc_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_UNALLOCATED') AND name='idx_supp_result_unalloc_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unalloc_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unalloc_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='AK_STD_VER_BUSINESS_K_STD_VERS')
BEGIN
    DROP INDEX STD_VERSION.AK_STD_VER_BUSINESS_K_STD_VERS
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='AK_STD_VER_BUSINESS_K_STD_VERS')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_VERSION.AK_STD_VER_BUSINESS_K_STD_VERS >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_VERSION.AK_STD_VER_BUSINESS_K_STD_VERS >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_EXEMPTION') AND name='uidx_std_exemption_01')
BEGIN
    DROP INDEX STD_EXEMPTION.uidx_std_exemption_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_EXEMPTION') AND name='uidx_std_exemption_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_EXEMPTION.uidx_std_exemption_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_EXEMPTION.uidx_std_exemption_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='AK_AK_STD_STD')
BEGIN
    DROP INDEX STD.AK_AK_STD_STD
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='AK_AK_STD_STD')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD.AK_AK_STD_STD >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD.AK_AK_STD_STD >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER_RESULT') AND name='uidx_stats_entry_prov_res_01')
BEGIN
    DROP INDEX STATS_ENTRY_PROVIDER_RESULT.uidx_stats_entry_prov_res_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER_RESULT') AND name='uidx_stats_entry_prov_res_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STATS_ENTRY_PROVIDER_RESULT.uidx_stats_entry_prov_res_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STATS_ENTRY_PROVIDER_RESULT.uidx_stats_entry_prov_res_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='uidx_stats_entry_prov_03')
BEGIN
    DROP INDEX STATS_ENTRY_PROVIDER.uidx_stats_entry_prov_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='uidx_stats_entry_prov_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.STATS_ENTRY_PROVIDER.uidx_stats_entry_prov_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STATS_ENTRY_PROVIDER.uidx_stats_entry_prov_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE') AND name='idx_secondary_course_01')
BEGIN
    DROP INDEX SECONDARY_COURSE.idx_secondary_course_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE') AND name='idx_secondary_course_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.SECONDARY_COURSE.idx_secondary_course_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SECONDARY_COURSE.idx_secondary_course_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_TEC_QUAL') AND name='uidx_provider_qual_year')
BEGIN
    DROP INDEX SDR_TEC_QUAL.uidx_provider_qual_year
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_TEC_QUAL') AND name='uidx_provider_qual_year')
        PRINT '<<< FAILED DROPPING INDEX dbo.SDR_TEC_QUAL.uidx_provider_qual_year >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.SDR_TEC_QUAL.uidx_provider_qual_year >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='ident_idx')
BEGIN
    DROP INDEX text_events.ident_idx
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='ident_idx')
        PRINT '<<< FAILED DROPPING INDEX dbo.text_events.ident_idx >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.text_events.ident_idx >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_ticket_history') AND name='rs_ticket_idx')
BEGIN
    DROP INDEX rs_ticket_history.rs_ticket_idx
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_ticket_history') AND name='rs_ticket_idx')
        PRINT '<<< FAILED DROPPING INDEX dbo.rs_ticket_history.rs_ticket_idx >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.rs_ticket_history.rs_ticket_idx >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_threads') AND name='rs_threads_idx')
BEGIN
    DROP INDEX rs_threads.rs_threads_idx
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_threads') AND name='rs_threads_idx')
        PRINT '<<< FAILED DROPPING INDEX dbo.rs_threads.rs_threads_idx >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.rs_threads.rs_threads_idx >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_mat_status') AND name='rs_mat_status_idx')
BEGIN
    DROP INDEX rs_mat_status.rs_mat_status_idx
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_mat_status') AND name='rs_mat_status_idx')
        PRINT '<<< FAILED DROPPING INDEX dbo.rs_mat_status.rs_mat_status_idx >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.rs_mat_status.rs_mat_status_idx >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_lastcommit') AND name='rs_lastcommit_idx')
BEGIN
    DROP INDEX rs_lastcommit.rs_lastcommit_idx
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_lastcommit') AND name='rs_lastcommit_idx')
        PRINT '<<< FAILED DROPPING INDEX dbo.rs_lastcommit.rs_lastcommit_idx >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.rs_lastcommit.rs_lastcommit_idx >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_TYPE_OUTPUT') AND name='uidx_std_type_output_01')
BEGIN
    DROP INDEX STD_TYPE_OUTPUT.uidx_std_type_output_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_TYPE_OUTPUT') AND name='uidx_std_type_output_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.STD_TYPE_OUTPUT.uidx_std_type_output_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.STD_TYPE_OUTPUT.uidx_std_type_output_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_RANKING') AND name='uidx_result_ranking_02')
BEGIN
    DROP INDEX RESULT_RANKING.uidx_result_ranking_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_RANKING') AND name='uidx_result_ranking_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT_RANKING.uidx_result_ranking_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT_RANKING.uidx_result_ranking_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_RANKING') AND name='idx_RESULT_RANKING_01')
BEGIN
    DROP INDEX RESULT_RANKING.idx_RESULT_RANKING_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_RANKING') AND name='idx_RESULT_RANKING_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT_RANKING.idx_RESULT_RANKING_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT_RANKING.idx_RESULT_RANKING_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_QUESTION') AND name='idx_result_comp_question_01')
BEGIN
    DROP INDEX RESULT_COMPONENT_QUESTION.idx_result_comp_question_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_QUESTION') AND name='idx_result_comp_question_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT_COMPONENT_QUESTION.idx_result_comp_question_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT_COMPONENT_QUESTION.idx_result_comp_question_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_LINK') AND name='AK_RESULT_COMPONENT_LINK')
BEGIN
    DROP INDEX RESULT_COMPONENT_LINK.AK_RESULT_COMPONENT_LINK
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_LINK') AND name='AK_RESULT_COMPONENT_LINK')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT_COMPONENT_LINK.AK_RESULT_COMPONENT_LINK >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT_COMPONENT_LINK.AK_RESULT_COMPONENT_LINK >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_LAYOUT_TYPE') AND name='repl_376085795_250')
BEGIN
    DROP INDEX RESULT_COMPONENT_LAYOUT_TYPE.repl_376085795_250
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_LAYOUT_TYPE') AND name='repl_376085795_250')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT_COMPONENT_LAYOUT_TYPE.repl_376085795_250 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT_COMPONENT_LAYOUT_TYPE.repl_376085795_250 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT') AND name='idx_result_component_02')
BEGIN
    DROP INDEX RESULT_COMPONENT.idx_result_component_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT') AND name='idx_result_component_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT_COMPONENT.idx_result_component_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT_COMPONENT.idx_result_component_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT') AND name='idx_result_component_01')
BEGIN
    DROP INDEX RESULT_COMPONENT.idx_result_component_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT') AND name='idx_result_component_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT_COMPONENT.idx_result_component_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT_COMPONENT.idx_result_component_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_05')
BEGIN
    DROP INDEX RESULT.idx_result_05
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_05')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT.idx_result_05 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT.idx_result_05 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_04')
BEGIN
    DROP INDEX RESULT.idx_result_04
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_04')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT.idx_result_04 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT.idx_result_04 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_03')
BEGIN
    DROP INDEX RESULT.idx_result_03
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_03')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT.idx_result_03 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT.idx_result_03 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_02')
BEGIN
    DROP INDEX RESULT.idx_result_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT.idx_result_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT.idx_result_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_01')
BEGIN
    DROP INDEX RESULT.idx_result_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RESULT.idx_result_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RESULT.idx_result_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT_INSTANCE_PARAMETER') AND name='idx_REPORT_INSTANCE_PARAM01')
BEGIN
    DROP INDEX REPORT_INSTANCE_PARAMETER.idx_REPORT_INSTANCE_PARAM01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT_INSTANCE_PARAMETER') AND name='idx_REPORT_INSTANCE_PARAM01')
        PRINT '<<< FAILED DROPPING INDEX dbo.REPORT_INSTANCE_PARAMETER.idx_REPORT_INSTANCE_PARAM01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.REPORT_INSTANCE_PARAMETER.idx_REPORT_INSTANCE_PARAM01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT_INSTANCE') AND name='idx_REPORT_INSTANCE_02')
BEGIN
    DROP INDEX REPORT_INSTANCE.idx_REPORT_INSTANCE_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT_INSTANCE') AND name='idx_REPORT_INSTANCE_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.REPORT_INSTANCE.idx_REPORT_INSTANCE_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.REPORT_INSTANCE.idx_REPORT_INSTANCE_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT') AND name='idx_REPORT_01')
BEGIN
    DROP INDEX REPORT.idx_REPORT_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT') AND name='idx_REPORT_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.REPORT.idx_REPORT_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.REPORT.idx_REPORT_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RELATIONSHIP') AND name='idx_relationship_02')
BEGIN
    DROP INDEX RELATIONSHIP.idx_relationship_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RELATIONSHIP') AND name='idx_relationship_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.RELATIONSHIP.idx_relationship_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RELATIONSHIP.idx_relationship_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RELATIONSHIP') AND name='idx_relationship_01')
BEGIN
    DROP INDEX RELATIONSHIP.idx_relationship_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RELATIONSHIP') AND name='idx_relationship_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RELATIONSHIP.idx_relationship_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RELATIONSHIP.idx_relationship_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_RUN') AND name='idx_RECONSIDERATION_RUN_02')
BEGIN
    DROP INDEX RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_RUN') AND name='idx_RECONSIDERATION_RUN_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_RUN') AND name='idx_RECONSIDERATION_RUN_01')
BEGIN
    DROP INDEX RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_RUN') AND name='idx_RECONSIDERATION_RUN_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_01 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_PAGE') AND name='idx_RECONSIDERATION_PAGE_02')
BEGIN
    DROP INDEX RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_02
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_PAGE') AND name='idx_RECONSIDERATION_PAGE_02')
        PRINT '<<< FAILED DROPPING INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_02 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_02 >>>'
END
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_PAGE') AND name='idx_RECONSIDERATION_PAGE_01')
BEGIN
    DROP INDEX RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_01
    IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_PAGE') AND name='idx_RECONSIDERATION_PAGE_01')
        PRINT '<<< FAILED DROPPING INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_01 >>>'
    ELSE
        PRINT '<<< DROPPED INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_01 >>>'
END
go
CREATE NONCLUSTERED INDEX idx_RECONSIDERATION_PAGE_01
    ON dbo.RECONSIDERATION_PAGE(panel_leader_marker_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_PAGE') AND name='idx_RECONSIDERATION_PAGE_01')
    PRINT '<<< CREATED INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_RECONSIDERATION_PAGE_02
    ON dbo.RECONSIDERATION_PAGE(schedule_page_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_PAGE') AND name='idx_RECONSIDERATION_PAGE_02')
    PRINT '<<< CREATED INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RECONSIDERATION_PAGE.idx_RECONSIDERATION_PAGE_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_RECONSIDERATION_RUN_01
    ON dbo.RECONSIDERATION_RUN(academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_RUN') AND name='idx_RECONSIDERATION_RUN_01')
    PRINT '<<< CREATED INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_RECONSIDERATION_RUN_02
    ON dbo.RECONSIDERATION_RUN(recons_run_status)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RECONSIDERATION_RUN') AND name='idx_RECONSIDERATION_RUN_02')
    PRINT '<<< CREATED INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RECONSIDERATION_RUN.idx_RECONSIDERATION_RUN_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_relationship_01
    ON dbo.RELATIONSHIP(perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RELATIONSHIP') AND name='idx_relationship_01')
    PRINT '<<< CREATED INDEX dbo.RELATIONSHIP.idx_relationship_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RELATIONSHIP.idx_relationship_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_relationship_02
    ON dbo.RELATIONSHIP(related_perorg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RELATIONSHIP') AND name='idx_relationship_02')
    PRINT '<<< CREATED INDEX dbo.RELATIONSHIP.idx_relationship_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RELATIONSHIP.idx_relationship_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_REPORT_01
    ON dbo.REPORT(report_role)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT') AND name='idx_REPORT_01')
    PRINT '<<< CREATED INDEX dbo.REPORT.idx_REPORT_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.REPORT.idx_REPORT_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_REPORT_INSTANCE_02
    ON dbo.REPORT_INSTANCE(report_id,parent_id,report_instance_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT_INSTANCE') AND name='idx_REPORT_INSTANCE_02')
    PRINT '<<< CREATED INDEX dbo.REPORT_INSTANCE.idx_REPORT_INSTANCE_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.REPORT_INSTANCE.idx_REPORT_INSTANCE_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_REPORT_INSTANCE_PARAM01
    ON dbo.REPORT_INSTANCE_PARAMETER(report_instance_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.REPORT_INSTANCE_PARAMETER') AND name='idx_REPORT_INSTANCE_PARAM01')
    PRINT '<<< CREATED INDEX dbo.REPORT_INSTANCE_PARAMETER.idx_REPORT_INSTANCE_PARAM01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.REPORT_INSTANCE_PARAMETER.idx_REPORT_INSTANCE_PARAM01 >>>'
go
CREATE CLUSTERED INDEX idx_result_01
    ON dbo.RESULT(entry_id)
    WITH ALLOW_DUP_ROW
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_01')
    PRINT '<<< CREATED INDEX dbo.RESULT.idx_result_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT.idx_result_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_result_02
    ON dbo.RESULT(academic_year,entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_02')
    PRINT '<<< CREATED INDEX dbo.RESULT.idx_result_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT.idx_result_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_result_03
    ON dbo.RESULT(marker_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_03')
    PRINT '<<< CREATED INDEX dbo.RESULT.idx_result_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT.idx_result_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_result_04
    ON dbo.RESULT(reconsideration_entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_04')
    PRINT '<<< CREATED INDEX dbo.RESULT.idx_result_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT.idx_result_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_result_05
    ON dbo.RESULT(loaded_date,result_type_id,result_code,withdrawn)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT') AND name='idx_result_05')
    PRINT '<<< CREATED INDEX dbo.RESULT.idx_result_05 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT.idx_result_05 >>>'
go
CREATE NONCLUSTERED INDEX idx_result_component_01
    ON dbo.RESULT_COMPONENT(result_component_question_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT') AND name='idx_result_component_01')
    PRINT '<<< CREATED INDEX dbo.RESULT_COMPONENT.idx_result_component_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT_COMPONENT.idx_result_component_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_result_component_02
    ON dbo.RESULT_COMPONENT(result_component_link_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT') AND name='idx_result_component_02')
    PRINT '<<< CREATED INDEX dbo.RESULT_COMPONENT.idx_result_component_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT_COMPONENT.idx_result_component_02 >>>'
go
CREATE NONCLUSTERED INDEX repl_376085795_250
    ON dbo.RESULT_COMPONENT_LAYOUT_TYPE(question_layout_xml)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_LAYOUT_TYPE') AND name='repl_376085795_250')
    PRINT '<<< CREATED INDEX dbo.RESULT_COMPONENT_LAYOUT_TYPE.repl_376085795_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT_COMPONENT_LAYOUT_TYPE.repl_376085795_250 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_RESULT_COMPONENT_LINK
    ON dbo.RESULT_COMPONENT_LINK(result_component_link_id,entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_LINK') AND name='AK_RESULT_COMPONENT_LINK')
    PRINT '<<< CREATED INDEX dbo.RESULT_COMPONENT_LINK.AK_RESULT_COMPONENT_LINK >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT_COMPONENT_LINK.AK_RESULT_COMPONENT_LINK >>>'
go
CREATE NONCLUSTERED INDEX idx_result_comp_question_01
    ON dbo.RESULT_COMPONENT_QUESTION(assessment_session_comp_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_COMPONENT_QUESTION') AND name='idx_result_comp_question_01')
    PRINT '<<< CREATED INDEX dbo.RESULT_COMPONENT_QUESTION.idx_result_comp_question_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT_COMPONENT_QUESTION.idx_result_comp_question_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_RESULT_RANKING_01
    ON dbo.RESULT_RANKING(std_grading_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_RANKING') AND name='idx_RESULT_RANKING_01')
    PRINT '<<< CREATED INDEX dbo.RESULT_RANKING.idx_RESULT_RANKING_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT_RANKING.idx_RESULT_RANKING_01 >>>'
go
CREATE UNIQUE CLUSTERED INDEX uidx_result_ranking_02
    ON dbo.RESULT_RANKING(result_code,std_grading_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RESULT_RANKING') AND name='uidx_result_ranking_02')
    PRINT '<<< CREATED INDEX dbo.RESULT_RANKING.uidx_result_ranking_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RESULT_RANKING.uidx_result_ranking_02 >>>'
go
CREATE UNIQUE CLUSTERED INDEX uidx_std_type_output_01
    ON dbo.STD_TYPE_OUTPUT(output_type,academic_year,std_type_code,assessment_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_TYPE_OUTPUT') AND name='uidx_std_type_output_01')
    PRINT '<<< CREATED INDEX dbo.STD_TYPE_OUTPUT.uidx_std_type_output_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_TYPE_OUTPUT.uidx_std_type_output_01 >>>'
go
CREATE UNIQUE CLUSTERED INDEX rs_lastcommit_idx
    ON dbo.rs_lastcommit(origin,conn_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_lastcommit') AND name='rs_lastcommit_idx')
    PRINT '<<< CREATED INDEX dbo.rs_lastcommit.rs_lastcommit_idx >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.rs_lastcommit.rs_lastcommit_idx >>>'
go
CREATE UNIQUE CLUSTERED INDEX rs_mat_status_idx
    ON dbo.rs_mat_status(subid,[action])
LOCAL INDEX rs_mat_status_idx_1066561394
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_mat_status') AND name='rs_mat_status_idx')
    PRINT '<<< CREATED INDEX dbo.rs_mat_status.rs_mat_status_idx >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.rs_mat_status.rs_mat_status_idx >>>'
go
CREATE UNIQUE CLUSTERED INDEX rs_threads_idx
    ON dbo.rs_threads(id,conn_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_threads') AND name='rs_threads_idx')
    PRINT '<<< CREATED INDEX dbo.rs_threads.rs_threads_idx >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.rs_threads.rs_threads_idx >>>'
go
CREATE UNIQUE CLUSTERED INDEX rs_ticket_idx
    ON dbo.rs_ticket_history(cnt)
LOCAL INDEX rs_ticket_idx_954560995
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.rs_ticket_history') AND name='rs_ticket_idx')
    PRINT '<<< CREATED INDEX dbo.rs_ticket_history.rs_ticket_idx >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.rs_ticket_history.rs_ticket_idx >>>'
go
CREATE UNIQUE CLUSTERED INDEX ident_idx
    ON dbo.text_events(event_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='ident_idx')
    PRINT '<<< CREATED INDEX dbo.text_events.ident_idx >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.text_events.ident_idx >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_provider_qual_year
    ON dbo.SDR_TEC_QUAL(moe_provider_id,moe_qual_number,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_TEC_QUAL') AND name='uidx_provider_qual_year')
    PRINT '<<< CREATED INDEX dbo.SDR_TEC_QUAL.uidx_provider_qual_year >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SDR_TEC_QUAL.uidx_provider_qual_year >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_secondary_course_01
    ON dbo.SECONDARY_COURSE(academic_year,moe_provider_id,location,secondary_course_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE') AND name='idx_secondary_course_01')
    PRINT '<<< CREATED INDEX dbo.SECONDARY_COURSE.idx_secondary_course_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SECONDARY_COURSE.idx_secondary_course_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_stats_entry_prov_03
    ON dbo.STATS_ENTRY_PROVIDER(academic_year,provider_id,provider_location,study_provider_id,study_provider_location,std_number,std_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='uidx_stats_entry_prov_03')
    PRINT '<<< CREATED INDEX dbo.STATS_ENTRY_PROVIDER.uidx_stats_entry_prov_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STATS_ENTRY_PROVIDER.uidx_stats_entry_prov_03 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_stats_entry_prov_res_01
    ON dbo.STATS_ENTRY_PROVIDER_RESULT(stats_entry_provider_id,result_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER_RESULT') AND name='uidx_stats_entry_prov_res_01')
    PRINT '<<< CREATED INDEX dbo.STATS_ENTRY_PROVIDER_RESULT.uidx_stats_entry_prov_res_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STATS_ENTRY_PROVIDER_RESULT.uidx_stats_entry_prov_res_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_AK_STD_STD
    ON dbo.STD(std_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='AK_AK_STD_STD')
    PRINT '<<< CREATED INDEX dbo.STD.AK_AK_STD_STD >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD.AK_AK_STD_STD >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX uidx_std_exemption_01
    ON dbo.STD_EXEMPTION(std_number,crse_endr_exemption_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_EXEMPTION') AND name='uidx_std_exemption_01')
    PRINT '<<< CREATED INDEX dbo.STD_EXEMPTION.uidx_std_exemption_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_EXEMPTION.uidx_std_exemption_01 >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX AK_STD_VER_BUSINESS_K_STD_VERS
    ON dbo.STD_VERSION(std_number,std_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='AK_STD_VER_BUSINESS_K_STD_VERS')
    PRINT '<<< CREATED INDEX dbo.STD_VERSION.AK_STD_VER_BUSINESS_K_STD_VERS >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VERSION.AK_STD_VER_BUSINESS_K_STD_VERS >>>'
go
CREATE UNIQUE NONCLUSTERED INDEX idx_supp_result_unalloc_01
    ON dbo.SUPP_RESULT_UNALLOCATED(nsn,std_number,date_entered)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_UNALLOCATED') AND name='idx_supp_result_unalloc_01')
    PRINT '<<< CREATED INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unalloc_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unalloc_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_risk_iss_index_hist_01
    ON dbo.RISK_ISSUE_INDEX_HIST(prov_risk_issue_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RISK_ISSUE_INDEX_HIST') AND name='idx_risk_iss_index_hist_01')
    PRINT '<<< CREATED INDEX dbo.RISK_ISSUE_INDEX_HIST.idx_risk_iss_index_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RISK_ISSUE_INDEX_HIST.idx_risk_iss_index_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_risk_iss_status_hist_01
    ON dbo.RISK_ISSUE_STATUS_HIST(prov_risk_issue_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RISK_ISSUE_STATUS_HIST') AND name='idx_risk_iss_status_hist_01')
    PRINT '<<< CREATED INDEX dbo.RISK_ISSUE_STATUS_HIST.idx_risk_iss_status_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RISK_ISSUE_STATUS_HIST.idx_risk_iss_status_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_RULES_GRP_QFN_MINOR_VER_ID
    ON dbo.RULES_GROUP(qfn_minor_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.RULES_GROUP') AND name='idx_RULES_GRP_QFN_MINOR_VER_ID')
    PRINT '<<< CREATED INDEX dbo.RULES_GROUP.idx_RULES_GRP_QFN_MINOR_VER_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.RULES_GROUP.idx_RULES_GRP_QFN_MINOR_VER_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_SCHOOL_ASSIST_CD_DTL_01
    ON dbo.SCHOOL_ASSISTANCE_CODE_DTL(assistance_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SCHOOL_ASSISTANCE_CODE_DTL') AND name='idx_SCHOOL_ASSIST_CD_DTL_01')
    PRINT '<<< CREATED INDEX dbo.SCHOOL_ASSISTANCE_CODE_DTL.idx_SCHOOL_ASSIST_CD_DTL_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SCHOOL_ASSISTANCE_CODE_DTL.idx_SCHOOL_ASSIST_CD_DTL_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_sdr_course_student
    ON dbo.SDR_COURSE(student_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_COURSE') AND name='idx_sdr_course_student')
    PRINT '<<< CREATED INDEX dbo.SDR_COURSE.idx_sdr_course_student >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SDR_COURSE.idx_sdr_course_student >>>'
go
CREATE NONCLUSTERED INDEX idx_sdr_tec_qual_number
    ON dbo.SDR_TEC_QUAL(moe_qual_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SDR_TEC_QUAL') AND name='idx_sdr_tec_qual_number')
    PRINT '<<< CREATED INDEX dbo.SDR_TEC_QUAL.idx_sdr_tec_qual_number >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SDR_TEC_QUAL.idx_sdr_tec_qual_number >>>'
go
CREATE NONCLUSTERED INDEX Idx_secondary_course_hist_01
    ON dbo.SECONDARY_COURSE_HIST(secondary_course_id,effective_to_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE_HIST') AND name='Idx_secondary_course_hist_01')
    PRINT '<<< CREATED INDEX dbo.SECONDARY_COURSE_HIST.Idx_secondary_course_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SECONDARY_COURSE_HIST.Idx_secondary_course_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_COURSE_BATCH_INPUT_ID
    ON dbo.SECONDARY_COURSE_INPUT(batch_input_id,secondary_course_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SECONDARY_COURSE_INPUT') AND name='IDX_COURSE_BATCH_INPUT_ID')
    PRINT '<<< CREATED INDEX dbo.SECONDARY_COURSE_INPUT.IDX_COURSE_BATCH_INPUT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SECONDARY_COURSE_INPUT.IDX_COURSE_BATCH_INPUT_ID >>>'
go
CREATE NONCLUSTERED INDEX Idx_sec_course_std_hist_01
    ON dbo.SEC_COURSE_STD_HIST(secondary_course_id,std_number,std_version_number,effective_to_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SEC_COURSE_STD_HIST') AND name='Idx_sec_course_std_hist_01')
    PRINT '<<< CREATED INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX Idx_sec_course_std_hist_02
    ON dbo.SEC_COURSE_STD_HIST(std_number,std_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SEC_COURSE_STD_HIST') AND name='Idx_sec_course_std_hist_02')
    PRINT '<<< CREATED INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SEC_COURSE_STD_HIST.Idx_sec_course_std_hist_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_sop_milestone_01
    ON dbo.SOP_MILESTONE(crse_endr_sop_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SOP_MILESTONE') AND name='idx_sop_milestone_01')
    PRINT '<<< CREATED INDEX dbo.SOP_MILESTONE.idx_sop_milestone_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SOP_MILESTONE.idx_sop_milestone_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_SPER_YTD_RECON_LEARNER_01
    ON dbo.SPER_YTD_RECON_LEARNER(enrolment_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SPER_YTD_RECON_LEARNER') AND name='idx_SPER_YTD_RECON_LEARNER_01')
    PRINT '<<< CREATED INDEX dbo.SPER_YTD_RECON_LEARNER.idx_SPER_YTD_RECON_LEARNER_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SPER_YTD_RECON_LEARNER.idx_SPER_YTD_RECON_LEARNER_01 >>>'
go
CREATE NONCLUSTERED INDEX idx1
    ON dbo.SQR_EVENT(completed_date,system_key,event_table_id,se_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SQR_EVENT') AND name='idx1')
    PRINT '<<< CREATED INDEX dbo.SQR_EVENT.idx1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SQR_EVENT.idx1 >>>'
go
CREATE NONCLUSTERED INDEX idx_sqr_event_date
    ON dbo.SQR_EVENT(completed_date,created_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SQR_EVENT') AND name='idx_sqr_event_date')
    PRINT '<<< CREATED INDEX dbo.SQR_EVENT.idx_sqr_event_date >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SQR_EVENT.idx_sqr_event_date >>>'
go
CREATE NONCLUSTERED INDEX IDX_SRS_REQUEST_03
    ON dbo.SRS_REQUEST(learner_id,sent_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='IDX_SRS_REQUEST_03')
    PRINT '<<< CREATED INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_03 >>>'
go
CREATE NONCLUSTERED INDEX IDX_SRS_REQUEST_04
    ON dbo.SRS_REQUEST(sent_date,learner_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='IDX_SRS_REQUEST_04')
    PRINT '<<< CREATED INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SRS_REQUEST.IDX_SRS_REQUEST_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_srs_request_01
    ON dbo.SRS_REQUEST(learner_id,academic_year)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SRS_REQUEST') AND name='idx_srs_request_01')
    PRINT '<<< CREATED INDEX dbo.SRS_REQUEST.idx_srs_request_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SRS_REQUEST.idx_srs_request_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_standard_input_01
    ON dbo.STANDARD_INPUT(entry_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_01')
    PRINT '<<< CREATED INDEX dbo.STANDARD_INPUT.idx_standard_input_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STANDARD_INPUT.idx_standard_input_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_standard_input_03
    ON dbo.STANDARD_INPUT(learner_input_id,standard_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_03')
    PRINT '<<< CREATED INDEX dbo.STANDARD_INPUT.idx_standard_input_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STANDARD_INPUT.idx_standard_input_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_standard_input_04
    ON dbo.STANDARD_INPUT(result_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STANDARD_INPUT') AND name='idx_standard_input_04')
    PRINT '<<< CREATED INDEX dbo.STANDARD_INPUT.idx_standard_input_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STANDARD_INPUT.idx_standard_input_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_stats_entry_prov_01
    ON dbo.STATS_ENTRY_PROVIDER(academic_year,provider_id,provider_location,std_number,std_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_prov_01')
    PRINT '<<< CREATED INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_stats_entry_prov_02
    ON dbo.STATS_ENTRY_PROVIDER(academic_year,study_provider_id,study_provider_location,std_number,std_version_number)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_prov_02')
    PRINT '<<< CREATED INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_prov_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_stats_entry_provider_04
    ON dbo.STATS_ENTRY_PROVIDER(study_provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_ENTRY_PROVIDER') AND name='idx_stats_entry_provider_04')
    PRINT '<<< CREATED INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_provider_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STATS_ENTRY_PROVIDER.idx_stats_entry_provider_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_STATS_KEY_INDICATOR_02
    ON dbo.STATS_KEY_INDICATOR(moe_provider_id,location)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STATS_KEY_INDICATOR') AND name='idx_STATS_KEY_INDICATOR_02')
    PRINT '<<< CREATED INDEX dbo.STATS_KEY_INDICATOR.idx_STATS_KEY_INDICATOR_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STATS_KEY_INDICATOR.idx_STATS_KEY_INDICATOR_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_STD_std_type_code
    ON dbo.STD(std_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='idx_STD_std_type_code')
    PRINT '<<< CREATED INDEX dbo.STD.idx_STD_std_type_code >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD.idx_STD_std_type_code >>>'
go
CREATE NONCLUSTERED INDEX idx_std_01
    ON dbo.STD(latest_reg_std_version_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD') AND name='idx_std_01')
    PRINT '<<< CREATED INDEX dbo.STD.idx_std_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD.idx_std_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_std_group_01
    ON dbo.STD_GROUP(std_group_id,std_group_type_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP') AND name='idx_std_group_01')
    PRINT '<<< CREATED INDEX dbo.STD_GROUP.idx_std_group_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_GROUP.idx_std_group_01 >>>'
go
CREATE NONCLUSTERED INDEX IDX_STDGRP_CFN_MAP_CFN_ID
    ON dbo.STD_GROUP_CFN_MAPPING(cfn_catg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_CFN_MAPPING') AND name='IDX_STDGRP_CFN_MAP_CFN_ID')
    PRINT '<<< CREATED INDEX dbo.STD_GROUP_CFN_MAPPING.IDX_STDGRP_CFN_MAP_CFN_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_GROUP_CFN_MAPPING.IDX_STDGRP_CFN_MAP_CFN_ID >>>'
go
CREATE NONCLUSTERED INDEX IDX_STD_GRP_CVG_STD_ID
    ON dbo.STD_GROUP_COVERAGE(std_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_COVERAGE') AND name='IDX_STD_GRP_CVG_STD_ID')
    PRINT '<<< CREATED INDEX dbo.STD_GROUP_COVERAGE.IDX_STD_GRP_CVG_STD_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_GROUP_COVERAGE.IDX_STD_GRP_CVG_STD_ID >>>'
go
CREATE NONCLUSTERED INDEX IDX_STDGRP_STD_MAP_STD_ID
    ON dbo.STD_GROUP_STD_MAPPING(std_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_GROUP_STD_MAPPING') AND name='IDX_STDGRP_STD_MAP_STD_ID')
    PRINT '<<< CREATED INDEX dbo.STD_GROUP_STD_MAPPING.IDX_STDGRP_STD_MAP_STD_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_GROUP_STD_MAPPING.IDX_STDGRP_STD_MAP_STD_ID >>>'
go
CREATE NONCLUSTERED INDEX idx_std_minor_version_02
    ON dbo.STD_MINOR_VERSION(std_version_id,level_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='idx_std_minor_version_02')
    PRINT '<<< CREATED INDEX dbo.STD_MINOR_VERSION.idx_std_minor_version_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_MINOR_VERSION.idx_std_minor_version_02 >>>'
go
CREATE NONCLUSTERED INDEX idxw_std_minor_version_01
    ON dbo.STD_MINOR_VERSION(level_code)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='idxw_std_minor_version_01')
    PRINT '<<< CREATED INDEX dbo.STD_MINOR_VERSION.idxw_std_minor_version_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_MINOR_VERSION.idxw_std_minor_version_01 >>>'
go
CREATE NONCLUSTERED INDEX repl_1820712145_249
    ON dbo.STD_MINOR_VERSION(replacement_info_desc)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='repl_1820712145_249')
    PRINT '<<< CREATED INDEX dbo.STD_MINOR_VERSION.repl_1820712145_249 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_MINOR_VERSION.repl_1820712145_249 >>>'
go
CREATE NONCLUSTERED INDEX repl_1820712145_250
    ON dbo.STD_MINOR_VERSION(purpose)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_MINOR_VERSION') AND name='repl_1820712145_250')
    PRINT '<<< CREATED INDEX dbo.STD_MINOR_VERSION.repl_1820712145_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_MINOR_VERSION.repl_1820712145_250 >>>'
go
CREATE NONCLUSTERED INDEX idx_STD_HIST_std_status
    ON dbo.STD_STATUS_HISTORY(std_status_code,std_status_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_STATUS_HISTORY') AND name='idx_STD_HIST_std_status')
    PRINT '<<< CREATED INDEX dbo.STD_STATUS_HISTORY.idx_STD_HIST_std_status >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_STATUS_HISTORY.idx_STD_HIST_std_status >>>'
go
CREATE NONCLUSTERED INDEX uidx_std_status_history_01
    ON dbo.STD_STATUS_HISTORY(std_id,std_status_code,std_status_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_STATUS_HISTORY') AND name='uidx_std_status_history_01')
    PRINT '<<< CREATED INDEX dbo.STD_STATUS_HISTORY.uidx_std_status_history_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_STATUS_HISTORY.uidx_std_status_history_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_STD_VERSION_03
    ON dbo.STD_VERSION(ssb_perorg_role_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_STD_VERSION_03')
    PRINT '<<< CREATED INDEX dbo.STD_VERSION.idx_STD_VERSION_03 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VERSION.idx_STD_VERSION_03 >>>'
go
CREATE NONCLUSTERED INDEX idx_STD_VERSION_04
    ON dbo.STD_VERSION(cfn_catg_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_STD_VERSION_04')
    PRINT '<<< CREATED INDEX dbo.STD_VERSION.idx_STD_VERSION_04 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VERSION.idx_STD_VERSION_04 >>>'
go
CREATE NONCLUSTERED INDEX idx_std_version_01
    ON dbo.STD_VERSION(std_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_01')
    PRINT '<<< CREATED INDEX dbo.STD_VERSION.idx_std_version_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VERSION.idx_std_version_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_std_version_02
    ON dbo.STD_VERSION(std_number,std_version_number,latest_pub_std_minor_ver_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_02')
    PRINT '<<< CREATED INDEX dbo.STD_VERSION.idx_std_version_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VERSION.idx_std_version_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_std_version_07
    ON dbo.STD_VERSION(qual_application_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION') AND name='idx_std_version_07')
    PRINT '<<< CREATED INDEX dbo.STD_VERSION.idx_std_version_07 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VERSION.idx_std_version_07 >>>'
go
CREATE NONCLUSTERED INDEX idx_std_ver_status_history_01
    ON dbo.STD_VERSION_STATUS_HISTORY(std_version_id,std_version_status_code,std_version_status_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VERSION_STATUS_HISTORY') AND name='idx_std_ver_status_history_01')
    PRINT '<<< CREATED INDEX dbo.STD_VERSION_STATUS_HISTORY.idx_std_ver_status_history_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VERSION_STATUS_HISTORY.idx_std_ver_status_history_01 >>>'
go
CREATE NONCLUSTERED INDEX uidx_std_ver_qa_event_hist_01
    ON dbo.STD_VER_QA_EVENT_HISTORY(std_version_id,qa_event_code,qa_event_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.STD_VER_QA_EVENT_HISTORY') AND name='uidx_std_ver_qa_event_hist_01')
    PRINT '<<< CREATED INDEX dbo.STD_VER_QA_EVENT_HISTORY.uidx_std_ver_qa_event_hist_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.STD_VER_QA_EVENT_HISTORY.uidx_std_ver_qa_event_hist_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_supp_result_allocated_01
    ON dbo.SUPP_RESULT_ALLOCATED(result_component_link_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_ALLOCATED') AND name='idx_supp_result_allocated_01')
    PRINT '<<< CREATED INDEX dbo.SUPP_RESULT_ALLOCATED.idx_supp_result_allocated_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SUPP_RESULT_ALLOCATED.idx_supp_result_allocated_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_supp_result_unallocated_02
    ON dbo.SUPP_RESULT_UNALLOCATED(result_component_link_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.SUPP_RESULT_UNALLOCATED') AND name='idx_supp_result_unallocated_02')
    PRINT '<<< CREATED INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unallocated_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SUPP_RESULT_UNALLOCATED.idx_supp_result_unallocated_02 >>>'
go
CREATE NONCLUSTERED INDEX idx_te_reo_indication_01
    ON dbo.TE_REO_INDICATION(te_reo_circular_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.TE_REO_INDICATION') AND name='idx_te_reo_indication_01')
    PRINT '<<< CREATED INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_01 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_01 >>>'
go
CREATE NONCLUSTERED INDEX idx_te_reo_indication_02
    ON dbo.TE_REO_INDICATION(std_number,provider_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.TE_REO_INDICATION') AND name='idx_te_reo_indication_02')
    PRINT '<<< CREATED INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_02 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.TE_REO_INDICATION.idx_te_reo_indication_02 >>>'
go
CREATE NONCLUSTERED INDEX repl_1040211925_250
    ON dbo.ZIM_PERSONALISATION_RUN(failure_message)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.ZIM_PERSONALISATION_RUN') AND name='repl_1040211925_250')
    PRINT '<<< CREATED INDEX dbo.ZIM_PERSONALISATION_RUN.repl_1040211925_250 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ZIM_PERSONALISATION_RUN.repl_1040211925_250 >>>'
go
CREATE NONCLUSTERED INDEX status_date_idx
    ON dbo.text_events(event_date)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='status_date_idx')
    PRINT '<<< CREATED INDEX dbo.text_events.status_date_idx >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.text_events.status_date_idx >>>'
go
CREATE NONCLUSTERED INDEX status_idx
    ON dbo.text_events(event_status)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.text_events') AND name='status_idx')
    PRINT '<<< CREATED INDEX dbo.text_events.status_idx >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.text_events.status_idx >>>'
go
CREATE NONCLUSTERED INDEX idx1
    ON dbo.tmp_delete_standard_input(standard_input_id)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('dbo.tmp_delete_standard_input') AND name='idx1')
    PRINT '<<< CREATED INDEX dbo.tmp_delete_standard_input.idx1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.tmp_delete_standard_input.idx1 >>>'
go
