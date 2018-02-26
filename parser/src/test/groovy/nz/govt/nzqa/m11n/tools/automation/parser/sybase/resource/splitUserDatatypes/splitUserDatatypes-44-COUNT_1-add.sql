USE eqa_prod
go
EXEC sp_addtype 'COUNT_1','int','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='COUNT_1')
    PRINT '<<< CREATED DATATYPE COUNT_1 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE COUNT_1 >>>'
go
