CREATE procedure ref.spInsertStorageSpace
@StorageSpaceId int = null,
@StorageSpacehName nvarchar(100)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.StorageSpace WHERE StorageSpaceId = @StorageSpaceId)
    BEGIN
	
        UPDATE ref.StorageSpace
		set 
			StorageSpacehName = @StorageSpacehName
			where StorageSpaceId =@StorageSpaceId;
    END
	
    ELSE
    BEGIN
		insert into ref.StorageSpace (StorageSpacehName)
		values (
				@StorageSpacehName
				);
    END
END