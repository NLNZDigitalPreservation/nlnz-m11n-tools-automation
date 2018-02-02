USE eqa_prod
go
CREATE TABLE dbo.ACADEMIC_YEAR
(
academic_year char(4) NOT NULL,
academic_year_desc descr NOT NULL,
academic_year_start datetime NOT NULL,
academic_year_end datetime NOT NULL,
academic_year_type varchar(4) NOT NULL,
academic_year_sort_order sortkey NOT NULL,
CONSTRAINT PK_ACADEMIC_YEAR
PRIMARY KEY CLUSTERED (academic_year)
)
LOCK DATAROWS
go
IF OBJECT_ID('dbo.ACADEMIC_YEAR') IS NOT NULL
PRINT '<<< CREATED TABLE dbo.ACADEMIC_YEAR >>>'
ELSE
PRINT '<<< FAILED CREATING TABLE dbo.ACADEMIC_YEAR >>>'
go
GRANT REFERENCES ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT SELECT ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT SELECT ON dbo.ACADEMIC_YEAR TO read_only
go
GRANT SELECT ON dbo.ACADEMIC_YEAR TO rma_users
go
GRANT INSERT ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT DELETE ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT UPDATE ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT DELETE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT TRUNCATE TABLE ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT UPDATE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user
go
GRANT TRANSFER TABLE ON dbo.ACADEMIC_YEAR TO eqa_user
go
