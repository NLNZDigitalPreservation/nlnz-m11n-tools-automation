USE eqa_prod
go
EXEC sp_unbindefault 'yn_ind'
go
IF EXISTS (SELECT * FROM systypes WHERE name='yn_ind')
BEGIN
    EXEC sp_droptype 'yn_ind'
    IF EXISTS (SELECT * FROM systypes WHERE name='yn_ind')
        PRINT '<<< FAILED DROPPING DATATYPE yn_ind >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE yn_ind >>>'
END
go
EXEC sp_unbindefault 'yn'
go
IF EXISTS (SELECT * FROM systypes WHERE name='yn')
BEGIN
    EXEC sp_droptype 'yn'
    IF EXISTS (SELECT * FROM systypes WHERE name='yn')
        PRINT '<<< FAILED DROPPING DATATYPE yn >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE yn >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='wwwaddr')
BEGIN
    EXEC sp_droptype 'wwwaddr'
    IF EXISTS (SELECT * FROM systypes WHERE name='wwwaddr')
        PRINT '<<< FAILED DROPPING DATATYPE wwwaddr >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE wwwaddr >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='usr')
BEGIN
    EXEC sp_droptype 'usr'
    IF EXISTS (SELECT * FROM systypes WHERE name='usr')
        PRINT '<<< FAILED DROPPING DATATYPE usr >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE usr >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='uni_name')
BEGIN
    EXEC sp_droptype 'uni_name'
    IF EXISTS (SELECT * FROM systypes WHERE name='uni_name')
        PRINT '<<< FAILED DROPPING DATATYPE uni_name >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE uni_name >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='sortkey')
BEGIN
    EXEC sp_droptype 'sortkey'
    IF EXISTS (SELECT * FROM systypes WHERE name='sortkey')
        PRINT '<<< FAILED DROPPING DATATYPE sortkey >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE sortkey >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='reference')
BEGIN
    EXEC sp_droptype 'reference'
    IF EXISTS (SELECT * FROM systypes WHERE name='reference')
        PRINT '<<< FAILED DROPPING DATATYPE reference >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE reference >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='provider_type')
BEGIN
    EXEC sp_droptype 'provider_type'
    IF EXISTS (SELECT * FROM systypes WHERE name='provider_type')
        PRINT '<<< FAILED DROPPING DATATYPE provider_type >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE provider_type >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='postcode')
BEGIN
    EXEC sp_droptype 'postcode'
    IF EXISTS (SELECT * FROM systypes WHERE name='postcode')
        PRINT '<<< FAILED DROPPING DATATYPE postcode >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE postcode >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='pin')
BEGIN
    EXEC sp_droptype 'pin'
    IF EXISTS (SELECT * FROM systypes WHERE name='pin')
        PRINT '<<< FAILED DROPPING DATATYPE pin >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE pin >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='phone_num')
BEGIN
    EXEC sp_droptype 'phone_num'
    IF EXISTS (SELECT * FROM systypes WHERE name='phone_num')
        PRINT '<<< FAILED DROPPING DATATYPE phone_num >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE phone_num >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='oid')
BEGIN
    EXEC sp_droptype 'oid'
    IF EXISTS (SELECT * FROM systypes WHERE name='oid')
        PRINT '<<< FAILED DROPPING DATATYPE oid >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE oid >>>'
END
go
EXEC sp_unbindefault 'ny_ind'
go
IF EXISTS (SELECT * FROM systypes WHERE name='ny_ind')
BEGIN
    EXEC sp_droptype 'ny_ind'
    IF EXISTS (SELECT * FROM systypes WHERE name='ny_ind')
        PRINT '<<< FAILED DROPPING DATATYPE ny_ind >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE ny_ind >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='number_4')
BEGIN
    EXEC sp_droptype 'number_4'
    IF EXISTS (SELECT * FROM systypes WHERE name='number_4')
        PRINT '<<< FAILED DROPPING DATATYPE number_4 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE number_4 >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='number_3')
BEGIN
    EXEC sp_droptype 'number_3'
    IF EXISTS (SELECT * FROM systypes WHERE name='number_3')
        PRINT '<<< FAILED DROPPING DATATYPE number_3 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE number_3 >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='number_2')
BEGIN
    EXEC sp_droptype 'number_2'
    IF EXISTS (SELECT * FROM systypes WHERE name='number_2')
        PRINT '<<< FAILED DROPPING DATATYPE number_2 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE number_2 >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='nsn')
BEGIN
    EXEC sp_droptype 'nsn'
    IF EXISTS (SELECT * FROM systypes WHERE name='nsn')
        PRINT '<<< FAILED DROPPING DATATYPE nsn >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE nsn >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='name')
BEGIN
    EXEC sp_droptype 'name'
    IF EXISTS (SELECT * FROM systypes WHERE name='name')
        PRINT '<<< FAILED DROPPING DATATYPE name >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE name >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='mark')
BEGIN
    EXEC sp_droptype 'mark'
    IF EXISTS (SELECT * FROM systypes WHERE name='mark')
        PRINT '<<< FAILED DROPPING DATATYPE mark >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE mark >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='long_name')
BEGIN
    EXEC sp_droptype 'long_name'
    IF EXISTS (SELECT * FROM systypes WHERE name='long_name')
        PRINT '<<< FAILED DROPPING DATATYPE long_name >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE long_name >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='language')
BEGIN
    EXEC sp_droptype 'language'
    IF EXISTS (SELECT * FROM systypes WHERE name='language')
        PRINT '<<< FAILED DROPPING DATATYPE language >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE language >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='id')
BEGIN
    EXEC sp_droptype 'id'
    IF EXISTS (SELECT * FROM systypes WHERE name='id')
        PRINT '<<< FAILED DROPPING DATATYPE id >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE id >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='grade')
BEGIN
    EXEC sp_droptype 'grade'
    IF EXISTS (SELECT * FROM systypes WHERE name='grade')
        PRINT '<<< FAILED DROPPING DATATYPE grade >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE grade >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='emailaddr')
BEGIN
    EXEC sp_droptype 'emailaddr'
    IF EXISTS (SELECT * FROM systypes WHERE name='emailaddr')
        PRINT '<<< FAILED DROPPING DATATYPE emailaddr >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE emailaddr >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='dt')
BEGIN
    EXEC sp_droptype 'dt'
    IF EXISTS (SELECT * FROM systypes WHERE name='dt')
        PRINT '<<< FAILED DROPPING DATATYPE dt >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE dt >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='descr_short')
BEGIN
    EXEC sp_droptype 'descr_short'
    IF EXISTS (SELECT * FROM systypes WHERE name='descr_short')
        PRINT '<<< FAILED DROPPING DATATYPE descr_short >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE descr_short >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='descr')
BEGIN
    EXEC sp_droptype 'descr'
    IF EXISTS (SELECT * FROM systypes WHERE name='descr')
        PRINT '<<< FAILED DROPPING DATATYPE descr >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE descr >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_4')
BEGIN
    EXEC sp_droptype 'code_4'
    IF EXISTS (SELECT * FROM systypes WHERE name='code_4')
        PRINT '<<< FAILED DROPPING DATATYPE code_4 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE code_4 >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_3')
BEGIN
    EXEC sp_droptype 'code_3'
    IF EXISTS (SELECT * FROM systypes WHERE name='code_3')
        PRINT '<<< FAILED DROPPING DATATYPE code_3 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE code_3 >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_2')
BEGIN
    EXEC sp_droptype 'code_2'
    IF EXISTS (SELECT * FROM systypes WHERE name='code_2')
        PRINT '<<< FAILED DROPPING DATATYPE code_2 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE code_2 >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_1')
BEGIN
    EXEC sp_droptype 'code_1'
    IF EXISTS (SELECT * FROM systypes WHERE name='code_1')
        PRINT '<<< FAILED DROPPING DATATYPE code_1 >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE code_1 >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='amt')
BEGIN
    EXEC sp_droptype 'amt'
    IF EXISTS (SELECT * FROM systypes WHERE name='amt')
        PRINT '<<< FAILED DROPPING DATATYPE amt >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE amt >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='addr_line')
BEGIN
    EXEC sp_droptype 'addr_line'
    IF EXISTS (SELECT * FROM systypes WHERE name='addr_line')
        PRINT '<<< FAILED DROPPING DATATYPE addr_line >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE addr_line >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_USR')
BEGIN
    EXEC sp_droptype 'UNI_USR'
    IF EXISTS (SELECT * FROM systypes WHERE name='UNI_USR')
        PRINT '<<< FAILED DROPPING DATATYPE UNI_USR >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE UNI_USR >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_TEXT')
BEGIN
    EXEC sp_droptype 'UNI_TEXT'
    IF EXISTS (SELECT * FROM systypes WHERE name='UNI_TEXT')
        PRINT '<<< FAILED DROPPING DATATYPE UNI_TEXT >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE UNI_TEXT >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_EADDR')
BEGIN
    EXEC sp_droptype 'UNI_EADDR'
    IF EXISTS (SELECT * FROM systypes WHERE name='UNI_EADDR')
        PRINT '<<< FAILED DROPPING DATATYPE UNI_EADDR >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE UNI_EADDR >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_DESCR_SHORT')
BEGIN
    EXEC sp_droptype 'UNI_DESCR_SHORT'
    IF EXISTS (SELECT * FROM systypes WHERE name='UNI_DESCR_SHORT')
        PRINT '<<< FAILED DROPPING DATATYPE UNI_DESCR_SHORT >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE UNI_DESCR_SHORT >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_DESCR')
BEGIN
    EXEC sp_droptype 'UNI_DESCR'
    IF EXISTS (SELECT * FROM systypes WHERE name='UNI_DESCR')
        PRINT '<<< FAILED DROPPING DATATYPE UNI_DESCR >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE UNI_DESCR >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_ADDR_LINE')
BEGIN
    EXEC sp_droptype 'UNI_ADDR_LINE'
    IF EXISTS (SELECT * FROM systypes WHERE name='UNI_ADDR_LINE')
        PRINT '<<< FAILED DROPPING DATATYPE UNI_ADDR_LINE >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE UNI_ADDR_LINE >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='TEXT_STRING')
BEGIN
    EXEC sp_droptype 'TEXT_STRING'
    IF EXISTS (SELECT * FROM systypes WHERE name='TEXT_STRING')
        PRINT '<<< FAILED DROPPING DATATYPE TEXT_STRING >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE TEXT_STRING >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='OBJECT_ID')
BEGIN
    EXEC sp_droptype 'OBJECT_ID'
    IF EXISTS (SELECT * FROM systypes WHERE name='OBJECT_ID')
        PRINT '<<< FAILED DROPPING DATATYPE OBJECT_ID >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE OBJECT_ID >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='LONGNAME')
BEGIN
    EXEC sp_droptype 'LONGNAME'
    IF EXISTS (SELECT * FROM systypes WHERE name='LONGNAME')
        PRINT '<<< FAILED DROPPING DATATYPE LONGNAME >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE LONGNAME >>>'
END
go
IF EXISTS (SELECT * FROM systypes WHERE name='IMAGES')
BEGIN
    EXEC sp_droptype 'IMAGES'
    IF EXISTS (SELECT * FROM systypes WHERE name='IMAGES')
        PRINT '<<< FAILED DROPPING DATATYPE IMAGES >>>'
    ELSE
        PRINT '<<< DROPPED DATATYPE IMAGES >>>'
END
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
EXEC sp_addtype 'COUNT_1','int','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='COUNT_1')
    PRINT '<<< CREATED DATATYPE COUNT_1 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE COUNT_1 >>>'
go
EXEC sp_addtype 'IMAGES','image','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='IMAGES')
    PRINT '<<< CREATED DATATYPE IMAGES >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE IMAGES >>>'
go
EXEC sp_addtype 'LONGNAME','varchar(200)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='LONGNAME')
    PRINT '<<< CREATED DATATYPE LONGNAME >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE LONGNAME >>>'
go
EXEC sp_addtype 'OBJECT_ID','numeric(12,0)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='OBJECT_ID')
    PRINT '<<< CREATED DATATYPE OBJECT_ID >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE OBJECT_ID >>>'
go
EXEC sp_addtype 'TEXT_STRING','text','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='TEXT_STRING')
    PRINT '<<< CREATED DATATYPE TEXT_STRING >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE TEXT_STRING >>>'
go
EXEC sp_addtype 'UNI_ADDR_LINE','univarchar(160)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_ADDR_LINE')
    PRINT '<<< CREATED DATATYPE UNI_ADDR_LINE >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE UNI_ADDR_LINE >>>'
go
EXEC sp_addtype 'UNI_DESCR','univarchar(510)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_DESCR')
    PRINT '<<< CREATED DATATYPE UNI_DESCR >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE UNI_DESCR >>>'
go
EXEC sp_addtype 'UNI_DESCR_SHORT','univarchar(200)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_DESCR_SHORT')
    PRINT '<<< CREATED DATATYPE UNI_DESCR_SHORT >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE UNI_DESCR_SHORT >>>'
go
EXEC sp_addtype 'UNI_EADDR','univarchar(510)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_EADDR')
    PRINT '<<< CREATED DATATYPE UNI_EADDR >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE UNI_EADDR >>>'
go
EXEC sp_addtype 'UNI_TEXT','unitext','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_TEXT')
    PRINT '<<< CREATED DATATYPE UNI_TEXT >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE UNI_TEXT >>>'
go
EXEC sp_addtype 'UNI_USR','univarchar(60)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='UNI_USR')
    PRINT '<<< CREATED DATATYPE UNI_USR >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE UNI_USR >>>'
go
EXEC sp_addtype 'addr_line','varchar(80)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='addr_line')
    PRINT '<<< CREATED DATATYPE addr_line >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE addr_line >>>'
go
EXEC sp_addtype 'amt','money','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='amt')
    PRINT '<<< CREATED DATATYPE amt >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE amt >>>'
go
EXEC sp_addtype 'code_1','char(1)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_1')
    PRINT '<<< CREATED DATATYPE code_1 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE code_1 >>>'
go
EXEC sp_addtype 'code_2','char(2)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_2')
    PRINT '<<< CREATED DATATYPE code_2 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE code_2 >>>'
go
EXEC sp_addtype 'code_3','char(3)','NOT NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_3')
    PRINT '<<< CREATED DATATYPE code_3 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE code_3 >>>'
go
EXEC sp_addtype 'code_4','char(4)','NOT NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='code_4')
    PRINT '<<< CREATED DATATYPE code_4 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE code_4 >>>'
go
EXEC sp_addtype 'descr','varchar(255)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='descr')
    PRINT '<<< CREATED DATATYPE descr >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE descr >>>'
go
EXEC sp_addtype 'descr_short','varchar(100)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='descr_short')
    PRINT '<<< CREATED DATATYPE descr_short >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE descr_short >>>'
go
EXEC sp_addtype 'dt','datetime','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='dt')
    PRINT '<<< CREATED DATATYPE dt >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE dt >>>'
go
EXEC sp_addtype 'emailaddr','varchar(255)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='emailaddr')
    PRINT '<<< CREATED DATATYPE emailaddr >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE emailaddr >>>'
go
EXEC sp_addtype 'grade','char(2)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='grade')
    PRINT '<<< CREATED DATATYPE grade >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE grade >>>'
go
EXEC sp_addtype 'id','numeric(12,0)','NOT NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='id')
    PRINT '<<< CREATED DATATYPE id >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE id >>>'
go
EXEC sp_addtype 'language','varchar(20)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='language')
    PRINT '<<< CREATED DATATYPE language >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE language >>>'
go
EXEC sp_addtype 'long_name','varchar(100)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='long_name')
    PRINT '<<< CREATED DATATYPE long_name >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE long_name >>>'
go
EXEC sp_addtype 'mark','numeric(4,0)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='mark')
    PRINT '<<< CREATED DATATYPE mark >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE mark >>>'
go
EXEC sp_addtype 'name','varchar(100)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='name')
    PRINT '<<< CREATED DATATYPE name >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE name >>>'
go
EXEC sp_addtype 'nsn','numeric(12,0)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='nsn')
    PRINT '<<< CREATED DATATYPE nsn >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE nsn >>>'
go
EXEC sp_addtype 'number_2','numeric(2,0)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='number_2')
    PRINT '<<< CREATED DATATYPE number_2 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE number_2 >>>'
go
EXEC sp_addtype 'number_3','numeric(3,0)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='number_3')
    PRINT '<<< CREATED DATATYPE number_3 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE number_3 >>>'
go
EXEC sp_addtype 'number_4','numeric(4,0)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='number_4')
    PRINT '<<< CREATED DATATYPE number_4 >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE number_4 >>>'
go
EXEC sp_addtype 'ny_ind','smallint','NOT NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='ny_ind')
    PRINT '<<< CREATED DATATYPE ny_ind >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE ny_ind >>>'
go
EXEC sp_bindefault 'dbo.default_n','ny_ind'
go
EXEC sp_addtype 'oid','numeric(18,0)','NOT NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='oid')
    PRINT '<<< CREATED DATATYPE oid >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE oid >>>'
go
EXEC sp_addtype 'phone_num','varchar(15)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='phone_num')
    PRINT '<<< CREATED DATATYPE phone_num >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE phone_num >>>'
go
EXEC sp_addtype 'pin','varchar(10)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='pin')
    PRINT '<<< CREATED DATATYPE pin >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE pin >>>'
go
EXEC sp_addtype 'postcode','varchar(7)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='postcode')
    PRINT '<<< CREATED DATATYPE postcode >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE postcode >>>'
go
EXEC sp_addtype 'provider_type','varchar(5)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='provider_type')
    PRINT '<<< CREATED DATATYPE provider_type >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE provider_type >>>'
go
EXEC sp_addtype 'reference','varchar(20)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='reference')
    PRINT '<<< CREATED DATATYPE reference >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE reference >>>'
go
EXEC sp_addtype 'sortkey','int','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='sortkey')
    PRINT '<<< CREATED DATATYPE sortkey >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE sortkey >>>'
go
EXEC sp_addtype 'uni_name','univarchar(200)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='uni_name')
    PRINT '<<< CREATED DATATYPE uni_name >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE uni_name >>>'
go
EXEC sp_addtype 'usr','varchar(30)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='usr')
    PRINT '<<< CREATED DATATYPE usr >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE usr >>>'
go
EXEC sp_addtype 'wwwaddr','varchar(255)','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='wwwaddr')
    PRINT '<<< CREATED DATATYPE wwwaddr >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE wwwaddr >>>'
go
EXEC sp_addtype 'yn','smallint','NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='yn')
    PRINT '<<< CREATED DATATYPE yn >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE yn >>>'
go
EXEC sp_bindefault 'dbo.Default_1','yn'
go
EXEC sp_addtype 'yn_ind','smallint','NOT NULL'
go
IF EXISTS (SELECT * FROM systypes WHERE name='yn_ind')
    PRINT '<<< CREATED DATATYPE yn_ind >>>'
ELSE
    PRINT '<<< FAILED CREATING DATATYPE yn_ind >>>'
go
EXEC sp_bindefault 'dbo.default_y','yn_ind'
go
