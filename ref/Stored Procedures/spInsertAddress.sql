CREATE procedure ref.spInsertAddress
@Address_Id int = null,
@Address1 nvarchar(100),
@Address2 nvarchar(100),
@Address3 nvarchar(100),
@Country_Id int,
@Province_Id int,
@City_Id int,
@Zip_Code nvarchar(7),
@AddressTypeId int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.Address WHERE Address_Id = @Address_Id)
    BEGIN
	
        UPDATE ref.Address
		set 
			Address1 = @Address1,
			Address2 = @Address2,
			Address3 = @Address3,
			Country_Id = @Country_Id,
			Province_Id = @Province_Id,
			City_Id = @City_Id,
			Zip_Code = @Zip_Code,
			AddressTypeId = @AddressTypeId
			where Address_Id = @Address_Id;
    END
	
    ELSE
    BEGIN
		insert into ref.Address (Address1, Address2, Address3, Country_Id, Province_Id, City_Id, Zip_Code, AddressTypeId)
		values (
				@Address1,
				@Address2,
				@Address3,
				@Country_Id,
				@Province_Id,
				@City_Id,
				@Zip_Code,
				@AddressTypeId
				);
    END
END