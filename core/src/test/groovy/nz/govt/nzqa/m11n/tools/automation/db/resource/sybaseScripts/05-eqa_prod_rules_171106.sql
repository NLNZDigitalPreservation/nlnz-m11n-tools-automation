USE eqa_prod
go
IF OBJECT_ID('dbo.R_yn') IS NOT NULL
BEGIN
    DROP RULE dbo.R_yn
    IF OBJECT_ID('dbo.R_yn') IS NOT NULL
        PRINT '<<< FAILED DROPPING RULE dbo.R_yn >>>'
    ELSE
        PRINT '<<< DROPPED RULE dbo.R_yn >>>'
END
go
CREATE RULE dbo.R_yn AS @column in (0,1)
go
IF OBJECT_ID('dbo.R_yn') IS NOT NULL
    PRINT '<<< CREATED RULE dbo.R_yn >>>'
ELSE
    PRINT '<<< FAILED CREATING RULE dbo.R_yn >>>'
go
