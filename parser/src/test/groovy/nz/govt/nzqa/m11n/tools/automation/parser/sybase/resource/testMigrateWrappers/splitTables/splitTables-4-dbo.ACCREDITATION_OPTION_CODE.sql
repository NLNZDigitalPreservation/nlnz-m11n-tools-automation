USE a_different_schema
CREATE TABLE dbo.ACCREDITATION_OPTION_CODE
(
accreditation_option_code code_2 NOT NULL,
option_type_desc descr NULL,
priority number_2 NULL,
option_type_maori_desc descr NULL,
accreditation_option_name descr_short NULL,
sortkey sortkey NOT NULL,
active_ind yn_ind NOT NULL,
CONSTRAINT PK_ACCREDITATION_OPTION_CODE
PRIMARY KEY CLUSTERED (accreditation_option_code)
)
LOCK DATAROWS
go
IF OBJECT_ID('dbo.ACCREDITATION_OPTION_CODE') IS NOT NULL
PRINT '<<< CREATED TABLE dbo.ACCREDITATION_OPTION_CODE >>>'
ELSE
PRINT '<<< FAILED CREATING TABLE dbo.ACCREDITATION_OPTION_CODE >>>'
go
GRANT REFERENCES ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT SELECT ON dbo.ACCREDITATION_OPTION_CODE TO read_only
go
GRANT SELECT ON dbo.ACCREDITATION_OPTION_CODE TO rma_users
go
GRANT INSERT ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT DELETE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT UPDATE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACCREDITATION_OPTION_CODE TO eqa_user
go