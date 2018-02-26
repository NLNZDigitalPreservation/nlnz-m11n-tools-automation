USE eqa_prod
go
ALTER TABLE dbo.ACCREDITED_ITEM
    ADD CONSTRAINT FK_ACCRED_ITEM_CREATE_CASE
    FOREIGN KEY (created_perorg_case_id)
    REFERENCES dbo.PERORG_CASE (perorg_case_id)
go
