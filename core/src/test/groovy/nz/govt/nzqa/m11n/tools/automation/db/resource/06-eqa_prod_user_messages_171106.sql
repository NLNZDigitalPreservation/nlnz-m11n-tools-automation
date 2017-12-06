USE eqa_prod
go
EXEC sp_addmessage 20000,'Duplicate STD Number encountered','us_english'
go
IF EXISTS (SELECT * FROM sysusermessages WHERE error=20000)
    PRINT '<<< CREATED USER MESSAGE 20000 >>>'
ELSE
    PRINT '<<< FAILED CREATING USER MESSAGE 20000 >>>'
go
EXEC sp_addmessage 20010,'Qual check error in %1!: %2! %3!','us_english'
go
IF EXISTS (SELECT * FROM sysusermessages WHERE error=20010)
    PRINT '<<< CREATED USER MESSAGE 20010 >>>'
ELSE
    PRINT '<<< FAILED CREATING USER MESSAGE 20010 >>>'
go
