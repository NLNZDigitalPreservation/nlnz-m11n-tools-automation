USE eqa_prod
go
IF OBJECT_ID('dbo.default_y') IS NOT NULL
BEGIN
    DROP DEFAULT dbo.default_y
    IF OBJECT_ID('dbo.default_y') IS NOT NULL
        PRINT '<<< FAILED DROPPING DEFAULT dbo.default_y >>>'
    ELSE
        PRINT '<<< DROPPED DEFAULT dbo.default_y >>>'
END
go
IF OBJECT_ID('dbo.default_n') IS NOT NULL
BEGIN
    DROP DEFAULT dbo.default_n
    IF OBJECT_ID('dbo.default_n') IS NOT NULL
        PRINT '<<< FAILED DROPPING DEFAULT dbo.default_n >>>'
    ELSE
        PRINT '<<< DROPPED DEFAULT dbo.default_n >>>'
END
go
IF OBJECT_ID('dbo.default_0') IS NOT NULL
BEGIN
    DROP DEFAULT dbo.default_0
    IF OBJECT_ID('dbo.default_0') IS NOT NULL
        PRINT '<<< FAILED DROPPING DEFAULT dbo.default_0 >>>'
    ELSE
        PRINT '<<< DROPPED DEFAULT dbo.default_0 >>>'
END
go
IF OBJECT_ID('dbo.Yes') IS NOT NULL
BEGIN
    DROP DEFAULT dbo.Yes
    IF OBJECT_ID('dbo.Yes') IS NOT NULL
        PRINT '<<< FAILED DROPPING DEFAULT dbo.Yes >>>'
    ELSE
        PRINT '<<< DROPPED DEFAULT dbo.Yes >>>'
END
go
IF OBJECT_ID('dbo.Default_1') IS NOT NULL
BEGIN
    DROP DEFAULT dbo.Default_1
    IF OBJECT_ID('dbo.Default_1') IS NOT NULL
        PRINT '<<< FAILED DROPPING DEFAULT dbo.Default_1 >>>'
    ELSE
        PRINT '<<< DROPPED DEFAULT dbo.Default_1 >>>'
END
go
CREATE DEFAULT dbo.Default_1 AS 0
go
IF OBJECT_ID('dbo.Default_1') IS NOT NULL
    PRINT '<<< CREATED DEFAULT dbo.Default_1 >>>'
ELSE
    PRINT '<<< FAILED CREATING DEFAULT dbo.Default_1 >>>'
go
CREATE DEFAULT dbo.Yes AS 1
go
IF OBJECT_ID('dbo.Yes') IS NOT NULL
    PRINT '<<< CREATED DEFAULT dbo.Yes >>>'
ELSE
    PRINT '<<< FAILED CREATING DEFAULT dbo.Yes >>>'
go
CREATE DEFAULT dbo.default_0 AS 0
go
IF OBJECT_ID('dbo.default_0') IS NOT NULL
    PRINT '<<< CREATED DEFAULT dbo.default_0 >>>'
ELSE
    PRINT '<<< FAILED CREATING DEFAULT dbo.default_0 >>>'
go
CREATE DEFAULT dbo.default_n AS 0
go
IF OBJECT_ID('dbo.default_n') IS NOT NULL
    PRINT '<<< CREATED DEFAULT dbo.default_n >>>'
ELSE
    PRINT '<<< FAILED CREATING DEFAULT dbo.default_n >>>'
go
CREATE DEFAULT dbo.default_y AS 1
go
IF OBJECT_ID('dbo.default_y') IS NOT NULL
    PRINT '<<< CREATED DEFAULT dbo.default_y >>>'
ELSE
    PRINT '<<< FAILED CREATING DEFAULT dbo.default_y >>>'
go
