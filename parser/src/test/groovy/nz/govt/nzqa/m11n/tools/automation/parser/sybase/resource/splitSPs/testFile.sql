USE eqa_prod
go
create procedure dbo.ContactsMergeCopyName
	@ContactMergeRunId		object_id
	,@NameId		object_id
	,@DebugYN		char(1)
	,@ErrorMessage		varchar(255) 	output
as

/*************************************************************************************************/
--	Written by 	JG
--	Written	on	27/06/2005
--	Description	Copies a NAME record (@NameId) from primary contact to secondary contact
--	Links to	PROD-262
--	Note
/*************************************************************************************************/

/* Example >***************************************************************************************/
--	declare @ErrorMessage 	varchar(255)
--  	      	,@Ret   	int
--
--	exec @Ret = ContactsMergeCopyName
--		@ContactMergeRunId		= 0
--		,@NameId		= 0
--		,@DebugYN		= 'N'
--		,@ErrorMessage		= @ErrorMessage   output
--
--	select @ErrorMessage
/* Example <***************************************************************************************/


/* Initialisation ********************************************************************************/
set nocount on

declare	@Error				int
	,@RowCount			int
	,@Counter			int
	,@TranCount			int

select	@Error = 0
	,@RowCount = 0
	,@Counter = 0
	,@TranCount = @@trancount

if @ErrorMessage is null
	select @ErrorMessage = ''

-- Declare procedure specific variables
declare	@PrimaryPerorgId		object_id
	,@SecondaryPerorgId		object_id
	,@RowsInserted			int
	,@RowsUpdated			int
	,@AuditTranId			object_id
	,@NewNameId			object_id
	,@DiaryEventId			object_id


-- Initialise procedure specific variables
select	@PrimaryPerorgId = primary_perorg_id
	,@SecondaryPerorgId = secondary_perorg_id
	,@AuditTranId = audit_tran_id
from	CONTACT_MERGE_RUN
where	contact_merge_run_id = @ContactMergeRunId


if @DebugYN = 'Y'
	select "ContactsMergeCopyName: @NameId=" + convert(varchar(10),@NameId)

/* Procedural logic ******************************************************************************/
begin

	/* Transaction management ****************************************************************/
	if @TranCount = 0
		begin tran
	else
		save tran ContactsMergeCopyName


	exec get_next_id 'OID', 1, @NewNameId output, 0
	insert into NAME
	(
		name_id
		,perorg_id
		,name_type_code
		,preferred_ind
		,surname
		,name1
		,name2
		,name3
		,title
		,audit_tran_id
		,merge_request_number
		,original_reference_id
		,active_ind
	)
	select	@NewNameId
		,@SecondaryPerorgId
		,name_type_code
		,preferred_ind
		,surname
		,name1
		,name2
		,name3
		,title
		,@AuditTranId
		,merge_request_number
		,null
		,active_ind
	from	NAME
	where	name_id = @NameId

	select @Error = @@error, @RowCount = @@rowcount
	if @Error != 0 or @RowCount != 1
	begin
		select	@ErrorMessage = 'ERROR: ' + convert(varchar(10),@Error) + ' occured while creating new NAME for secondary'
			,@Error = 30
		goto ErrorOccured
	end

	exec get_next_id 'OID', 1, @DiaryEventId output, 0
	insert into DIARY_EVENT
	(
		diary_event_id
		,perorg_id
		,event_type
		,audit_tran_id
		,event_subject
		,event_desc
		,created_by
		,event_date_time
		,active_ind
		,original_reference_id
		,current_reference_id
		,previous_reference_id
		,reason_type
		,update_type
		,merge_request_number
	)
	values
	(
		@DiaryEventId
		,@SecondaryPerorgId
		,'NA'			-- Name
		,@AuditTranId
		,'Add Name'
		,null
		,suser_name()
		,getdate()
		,1
		,@NewNameId
		,@NewNameId
		,null
		,'NB'			-- Normal business process
		,'AD'			-- Add
		,null
	)

	select @Error = @@error, @RowCount = @@rowcount
	if @Error != 0 or @RowCount != 1
	begin
		select	@ErrorMessage = 'ERROR: ' + convert(varchar(10),@Error) + ' occured while creating DIARY_EVENT record for new NAME for secondary'
			,@Error = 31
		goto ErrorOccured
	end

	exec get_next_id 'OID', 1, @DiaryEventId output, 0
	insert into DIARY_EVENT
	(
		diary_event_id
		,perorg_id
		,event_type
		,audit_tran_id
		,event_subject
		,event_desc
		,created_by
		,event_date_time
		,active_ind
		,original_reference_id
		,current_reference_id
		,previous_reference_id
		,reason_type
		,update_type
		,merge_request_number
	)
	values
	(
		@DiaryEventId
		,@SecondaryPerorgId
		,'NA'			-- Name
		,@AuditTranId
		,'Set PreferredName'
		,null
		,suser_name()
		,getdate()
		,1
		,@NewNameId
		,@NewNameId
		,null
		,'NB'			-- Normal business process
		,'SP'			-- Set preferred
		,null
	)

	select @Error = @@error, @RowCount = @@rowcount
	if @Error != 0 or @RowCount != 1
	begin
		select	@ErrorMessage = 'ERROR: ' + convert(varchar(10),@Error) + ' occured while creating DIARY_EVENT record for new preferred NAME for secondary'
			,@Error = 31
		goto ErrorOccured
	end


	/* Successful completion *****************************************************************/
	if @TranCount = 0
		if @DebugYN = 'Y'
			rollback tran
		else
			commit


    	goto Finished

end

/* Error processing ******************************************************************************/
ErrorOccured:
	if @TranCount = 0
		rollback tran
	else
		rollback tran ContactsMergeCopyName

	select @ErrorMessage = ltrim(@ErrorMessage)

/* Cleanup processing ****************************************************************************/
Finished:
	if @DebugYN = 'Y'
		print "DBG: ContactsMergeCopyName. ErrorMessage=%1!",@ErrorMessage
	set nocount off
	return @Error
go
EXEC sp_procxmode 'dbo.ContactsMergeCopyName', 'unchained'
go
IF OBJECT_ID('dbo.ContactsMergeCopyName') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.ContactsMergeCopyName >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.ContactsMergeCopyName >>>'
go
GRANT EXECUTE ON dbo.ContactsMergeCopyName TO eqa_user
go
GRANT EXECUTE ON dbo.ContactsMergeCopyName TO eqa_rpt_user
go