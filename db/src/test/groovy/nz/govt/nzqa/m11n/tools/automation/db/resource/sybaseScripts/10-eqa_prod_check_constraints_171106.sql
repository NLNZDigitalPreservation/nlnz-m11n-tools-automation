USE eqa_prod
go
ALTER TABLE dbo.CFN_CATEGORY
    ADD CONSTRAINT CHK_CFN_CATEGORY_BSAS_ACCR_LVL
    CHECK (bsas_accreditation_level in ('01','02','03','04'))
go
ALTER TABLE dbo.CFN_CATEGORY
    ADD CONSTRAINT CHK_CFN_CATEGORY_STAR_EXCL_LVL
    CHECK (star_excluded_level_code in ('01','02','03','04'))
go
ALTER TABLE dbo.COMPASSIONATE
    ADD CONSTRAINT CHK_SCHOOL_SUPPORT_IND
    CHECK (school_support_ind is null or school_support_ind = 0 or school_support_ind = 1 )
go
ALTER TABLE dbo.ENTRY_PERSONALISATION
    ADD CONSTRAINT CKT_ENTRY_PERSONALISATION
    CHECK ((marker_allocation_group_id is null and marker_panel_ag_id is not null) or
          (marker_allocation_group_id is not null and marker_panel_ag_id is null))
go
ALTER TABLE dbo.MARKER_CODE
    ADD CONSTRAINT MARKER_COD_assign_233413220
    CHECK (assigned_marker_code between 1000 and 9999)
go
ALTER TABLE dbo.PERORG
    ADD CONSTRAINT CKT_PERORG
    CHECK (not (perorg_type_code = 'O' and is_learner = 1))
go
ALTER TABLE dbo.PERSONALISATION_EXCEPTION
    ADD CONSTRAINT CKT_PERSONALISATION_EXCEPTION
    CHECK ((provider_id is null and std_number is not null) or
     (provider_id is not null and std_number is null))
go
ALTER TABLE dbo.QFN_EXEMPTION_ITEM
    ADD CONSTRAINT CHK_QFN_EXMPTION_ITEM_LVLCRD
    CHECK ((cfn_catg_id is null and qfn_rule_id is null and exempted_credits is null and exempted_level_code is null) 
    or ((cfn_catg_id is not null or qfn_rule_id is not null) and exempted_credits is not null and exempted_level_code is not null))
go
ALTER TABLE dbo.QFN_EXEMPTION_ITEM
    ADD CONSTRAINT CHK_QFN_EXMPTION_ITEM_REF
    CHECK ((qfn_version_id is null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is null) or
       (qfn_version_id is not null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is null) or
       (qfn_version_id is null and std_version_id is not null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is null) or
       (qfn_version_id is null and std_version_id is null and cfn_catg_id is not null and qfn_rule_id is null and excluded_exemption_id is null) or
       (qfn_version_id is null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is not null and excluded_exemption_id is null) or
       (qfn_version_id is null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is not null))
go
ALTER TABLE dbo.QFN_EXEMPTION_ITEM
    ADD CONSTRAINT CHK_QFN_EXMPTION_ITEM_TYPE
    CHECK ((qfn_version_id is not null and qfn_exmptn_item_type_code = "01") or
       (std_version_id is not null) or
       ((cfn_catg_id is not null or qfn_rule_id is not null) and qfn_exmptn_item_type_code = "02") or
       (excluded_exemption_id is not null and qfn_exmptn_item_type_code = "03"))
go
ALTER TABLE dbo.QUAL_APP_APP_MAPPING
    ADD CONSTRAINT CHK_QUAL_MAPPING_ROW_UNIQUE
    CHECK (qual_application1_id < qual_application2_id)
go
