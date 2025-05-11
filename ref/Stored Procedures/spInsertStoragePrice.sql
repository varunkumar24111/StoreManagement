Create procedure ref.spInsertStoragePrice
@StoragePriceId int = null,
@StoragePriceName nvarchar(100),
@City_Id int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.StoragePrice WHERE StoragePriceId = @StoragePriceId)
    BEGIN
	
        UPDATE ref.StoragePrice
		set 
			StoragePriceName = @StoragePriceName,
			City_Id = @City_Id
			where StoragePriceId = @StoragePriceId;
    END
	
    ELSE
    BEGIN
		insert into ref.StoragePrice (StoragePriceName, City_Id)
		values (
				@StoragePriceName,
				@City_Id
				);
    END
END


