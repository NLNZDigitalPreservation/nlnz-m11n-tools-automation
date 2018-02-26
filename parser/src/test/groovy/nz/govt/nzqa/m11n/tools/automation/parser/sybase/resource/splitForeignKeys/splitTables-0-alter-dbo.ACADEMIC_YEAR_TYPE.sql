USE eqa_prod
go
ALTER TABLE dbo.ACADEMIC_YEAR
    ADD CONSTRAINT FK_ACA_YEAR_ACA_YEAR_TYPE
    FOREIGN KEY (academic_year_type)
    REFERENCES dbo.ACADEMIC_YEAR_TYPE (academic_year_type)
go