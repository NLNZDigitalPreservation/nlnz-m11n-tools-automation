USE eqa_prod
go
CREATE TABLE dbo.CFN_CATEGORY
(
cfn_catg_id OBJECT_ID NOT NULL,
cfn_depth_code code_2 NOT NULL,
cfn_catg_status_code code_2 NOT NULL,
cfn_system_code code_2 NOT NULL,
primary_language_code language NULL,
alternate_language_code language NULL,
cfn_catg_number varchar(8) NULL,
cfn_catg_name name NOT NULL,
cfn_catg_name_umlauts name NOT NULL,
cfn_catg_name_alt_lang name NULL,
cfn_catg_descr_text TEXT_STRING NULL,
parent_cfn_catg_id OBJECT_ID NULL,
audit_tran_id OBJECT_ID NOT NULL,
ts timestamp NOT NULL,
bsas_accreditation_level code_2 NULL,
expire_by_date datetime NULL,
cfn_catg_status_date datetime NOT NULL,
cfn_catg_external_id varchar(8) NULL,
star_excluded_level_code code_2 NULL,
cfn_catg_notes varchar(1000) NULL,
CONSTRAINT PK_CFN_CATEGORY
PRIMARY KEY CLUSTERED (cfn_catg_id),
CONSTRAINT CHK_CFN_CATEGORY_BSAS_ACCR_LVL
CHECK (bsas_accreditation_level in ('01','02','03','04')),
CONSTRAINT CHK_CFN_CATEGORY_STAR_EXCL_LVL
CHECK (star_excluded_level_code in ('01','02','03','04'))
)
LOCK DATAROWS
go
IF OBJECT_ID('dbo.CFN_CATEGORY') IS NOT NULL
PRINT '<<< CREATED TABLE dbo.CFN_CATEGORY >>>'
ELSE
PRINT '<<< FAILED CREATING TABLE dbo.CFN_CATEGORY >>>'
go
GRANT REFERENCES ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT SELECT ON dbo.CFN_CATEGORY TO read_only
go
GRANT SELECT ON dbo.CFN_CATEGORY TO rma_users
go
GRANT INSERT ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT DELETE ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT UPDATE ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.CFN_CATEGORY TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.CFN_CATEGORY TO eqa_user
go
