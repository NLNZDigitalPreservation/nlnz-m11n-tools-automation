USE eqa_prod
go
CREATE TRIGGER du_ACCREDITATION ON ACCREDITATION
For DELETE,UPDATE AS
if @@rowcount = 0
  return

declare @type char(1),
        @ins_count int,
        @del_count int

-- find out if update or delete trigger
select @ins_count = count(*) from inserted
select @del_count = count(*) from deleted

if @ins_count > 0 and @del_count > 0
  select @type = "U"
else if  @ins_count=0 and @del_count > 0
  select @type = "D"
else
  select @type = "?"

insert into eqa_aud..A_ACCREDITATION (who,aud_time,aud_action,provider_id
,location
,std_number
,audit_tran_id
)
select   user_name()  , getdate(), @type, provider_id
,location
,std_number
,audit_tran_id
from deleted
go
ALTER TABLE dbo.ACCREDITATION DISABLE TRIGGER dbo.du_ACCREDITATION
go
IF OBJECT_ID('dbo.du_ACCREDITATION') IS NOT NULL
    PRINT '<<< CREATED TRIGGER dbo.du_ACCREDITATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TRIGGER dbo.du_ACCREDITATION >>>'
go