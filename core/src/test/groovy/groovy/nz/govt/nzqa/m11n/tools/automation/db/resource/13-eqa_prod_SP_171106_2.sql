CREATE PROCEDURE w_get_empty_aplan_summaries (
                @academic_year CHAR(4),
                @moe_provider_id OBJECT_ID,
                @location INT
                )
AS
  -- Name:          w_get_empty_aplan_summaries
  -- Description:   Gets all of the moderation assessment plan group (system) summaries for a
  --                given provider and year.
  --
  -- Author:      Paul Wilton
  -- Created:     01/08/2003
  -- Version      $Id: w_get_empty_aplan_summaries.sql,v 1.3 2005/04/10 21:57:53 PaulWil Exp $
  --
  -------------------
DECLARE @year_minus_1     CHAR(4)

SELECT @year_minus_1 = convert(CHAR(4), (convert(INT, @academic_year)-1))

-- attempt to get the moderator_roles for each assessment_subject into temp table
CREATE TABLE #tmp_group_mod
    (
    assessment_subject_id NUMERIC(12) NULL,
    std_group_id NUMERIC(12) NULL,
    moderator_role_id  NUMERIC(12) NULL,
    mod_name VARCHAR(255) NULL,
    )

INSERT INTO #tmp_group_mod
(
    assessment_subject_id,
    std_group_id
)
SELECT DISTINCT
    assessment_subject_id,
    std_group_id
FROM
    MODERATION_ASSESSMENT_PLAN map,
    MODERATION_ASSESSMENT_SUBJ mas
WHERE
    map.academic_year = @year_minus_1
    AND map.moe_provider_id = @moe_provider_id
    AND map.provider_location = @location
    AND mas.assessment_plan_id = map.assessment_plan_id
    AND map.active_ind = 1
    AND mas.active_ind = 1


UPDATE #tmp_group_mod
    set moderator_role_id = mr1.moderator_role_id
FROM
    MODERATION_ASSESSMENT_STD s1,
    MODERATION_REPORT mr1
WHERE
    s1.active_ind = 1
    AND s1.assessment_subject_id = #tmp_group_mod.assessment_subject_id
    AND mr1.moderation_report_id = s1.latest_report_id
    AND s1.assessment_std_id =
        (SELECT MIN(s2.assessment_std_id)
        FROM MODERATION_ASSESSMENT_STD s2, MODERATION_REPORT mr2
        WHERE s2.assessment_subject_id = s1.assessment_subject_id
        AND mr2.moderation_report_id = s2.latest_report_id
        AND mr2.moderator_role_id IS NOT NULL
        )


UPDATE #tmp_group_mod
    SET mod_name = (n.name1 + ' ' + n.surname)
FROM
    MODERATOR_ROLE mr,
    MODERATOR m,
    NAME n
WHERE
    #tmp_group_mod.moderator_role_id = mr.moderator_role_id
    AND m.moderator_id = mr.moderator_id
    AND n.perorg_id =* m.perorg_id
    AND n.preferred_ind = 1
    AND n.active_ind=1


SELECT
	mas.assessment_subject_id,
	mas.std_group_id,
	mas.assessment_subj_status_code,
	s.assessment_subj_status_desc,
	g.std_group_name,
	g.std_group_owner_code,
	tgm.moderator_role_id as last_mod_id,
	tgm.mod_name as last_mod_name
FROM
    MODERATION_ASSESSMENT_PLAN map,
    MODERATION_ASSESSMENT_SUBJ mas,
    MOD_ASSESS_SUBJ_STATUS_CODE s,
    STD_GROUP g,
    #tmp_group_mod tgm
WHERE
    map.academic_year = @academic_year
    AND map.moe_provider_id = @moe_provider_id
    AND map.provider_location = @location
    AND mas.assessment_plan_id = map.assessment_plan_id
    AND s.assessment_subj_status_code = mas.assessment_subj_status_code
    AND g.std_group_id = mas.std_group_id
    AND mas.std_group_id *= tgm.std_group_id
    AND mas.assessment_subj_status_code in ('CO','NZ')
    AND NOT EXISTS (
        SELECT 1 FROM MODERATION_ASSESSMENT_STD std
        WHERE std.assessment_subject_id = mas.assessment_subject_id
        AND std.active_ind = 1
        AND std.assessment_std_status_code != 'DE'
        )
    AND mas.active_ind = 1
    AND map.active_ind = 1

drop table #tmp_group_mod

/* ### DEFNCOPY: END OF DEFINITION */
go
EXEC sp_procxmode 'dbo.w_get_empty_aplan_summaries', 'unchained'
go
IF OBJECT_ID('dbo.w_get_empty_aplan_summaries') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.w_get_empty_aplan_summaries >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.w_get_empty_aplan_summaries >>>'
go
GRANT EXECUTE ON dbo.w_get_empty_aplan_summaries TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_empty_aplan_summaries TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_empty_aplan_summaries TO web_appserver_intranet
go
CREATE PROCEDURE dbo.w_get_enrol_years_for_provider (
                @moe_provider_id NUMERIC(12)
                )
AS
  -- Name:          w_get_enrol_years_for_provider
  -- Description:   returns the years for which a provider has standard subjects
  --
  -- Author:      Adrian Pronk
  -- Created:     02/06/2004
  -- Version      $Revision: 1.4 $

SELECT
    distinct le.academic_year
FROM
    LEARNER_ENROLMENT le,
    ENTRY e
WHERE
       le.provider_id  = @moe_provider_id
   AND le.enrolment_status_code = 'AC'
   AND e.enrolment_id = le.enrolment_id
/* ### DEFNCOPY: END OF DEFINITION */
/* ### DEFNCOPY: END OF DEFINITION */
/* ### DEFNCOPY: END OF DEFINITION */
go
EXEC sp_procxmode 'dbo.w_get_enrol_years_for_provider', 'anymode'
go
IF OBJECT_ID('dbo.w_get_enrol_years_for_provider') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.w_get_enrol_years_for_provider >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.w_get_enrol_years_for_provider >>>'
go
GRANT EXECUTE ON dbo.w_get_enrol_years_for_provider TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrol_years_for_provider TO eqa_user
go
GRANT EXECUTE ON dbo.w_get_enrol_years_for_provider TO web_appserver_intranet
go
CREATE PROCEDURE dbo.w_get_enrolment_by_id (
                @enrolment_id OBJECT_ID
                )
AS
  -- Name:          w_get_enrolment_by_id
  -- Description:   Gets a LearnerEnrolment by given ENROLMENT_ID.
  --
  -- Author:      Paul Wilton
  -- Created:     01/08/2003
  -- Version      $Revision: 1.7 $
  --
  -------------------

SELECT
	e.enrolment_id,
	e.provider_id,
	e.location,
	e.paid_code,
	e.enrolment_status_code,
	e.fin_assist_approved_code,
	e.academic_year,
	e.fin_assist_type_code,
	e.learner_id,
	e.enrolment_date,
	e.local_id,
	e.hsc_ind,
	e.tertiary_release_ind,
	e.fin_assist_benefit_number,
	e.results_held_ind,
	e.fw_flat_fee_applicable,
	e.moe_year_level_code,
	e.admin_group_code,
	e.home_school_ind,
	e.entry_first_recvd_date,
	e.entry_last_recvd_date,
	e.exam_centre_id,
	e.exam_centre_location,
	e.merge_request_number,
	e.sortkey,
	e.withdrawal_date,
	e.leaving_code,
	e.first_batch_input_id,
	e.last_batch_input_id,
	e.student_type,
	st.student_type_desc,
    e.created_user,
    e.created_date,
    e.number_siblings,
    e.fin_assist_app_number,
    e.audit_tran_id,
    lesa.spec_assist_evidence_ind,
    lesa.spec_assist_contact,
    lesa.spec_assist_general_reason,
    lesa.spec_assist_withdrawn_ind,
    lesa.school_contact_name,
    lesa.school_contact_email,
  	lesa.school_contact_phone_num,
  	lesa.assessor_name,
  	lesa.assessor_qualification_name,
	lesa.previous_year_results_ind,
  	lesa.assessment_date,
  	lesa.needs_analysis_ind,
  	lesa.internals_only_ind,
  	lesa.report_available_ind,
  	lesa.medical_disability_ind,
  	lesa.physical_disability_ind,
  	lesa.learning_disability_ind,
    lesa.sensory_disability_ind,
  	lesa.application_number,
    lesa.audit_tran_id as spec_assist_audit_tran_id
FROM
    LEARNER_ENROLMENT e,
    LEARNER_ENROL_SPEC_ASSIST lesa,
    STUDENT_TYPE st
WHERE
	e.enrolment_id = @enrolment_id
	AND e.enrolment_id *= lesa.enrolment_id
	AND e.student_type *=st.student_type


/* ### DEFNCOPY: END OF DEFINITION */
go
EXEC sp_procxmode 'dbo.w_get_enrolment_by_id', 'anymode'
go
IF OBJECT_ID('dbo.w_get_enrolment_by_id') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.w_get_enrolment_by_id >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.w_get_enrolment_by_id >>>'
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO web_appserver_intranet
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO web_appserver_secure
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO eqa_rpt_user
go
GRANT EXECUTE ON dbo.w_get_enrolment_by_id TO eqa_user
go