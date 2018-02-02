USE eqa_prod
go
IF EXISTS (SELECT * FROM systypes WHERE name='COUNT_1')
BEGIN
    EXEC sp_droptype 'COUNT_1'
    IF EXISTS (SELECT * FROM systypes WHERE name='COUNT_1')
        PRINT '<<< FAILED DROPPING DATATYPE COUNT_1 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE COUNT_1 >>>'
END
go