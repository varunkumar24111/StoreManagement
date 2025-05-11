Create procedure ref.spInsertAddressType
@AddressTypeId int = null,
@AddressType varchar(20)

AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.AddressType WHERE AddressTypeId = @AddressTypeId)
    BEGIN
	
        UPDATE ref.AddressType
		set 
			AddressType = @AddressType
			where AddressTypeId = @AddressTypeId;
    END
	
    ELSE
    BEGIN
		insert into ref.AddressType (AddressType)
		values (
				@AddressType
				);
    END
END

