CREATE procedure ref.spInsertOrganizations
@id int = null,
@Organization_Name nvarchar(100),
@Country_id int,
@IsActive bit,
@StorageType1 bit,
@StorageType2 bit,
@StorageType3 bit,
@Subscription_Date datetime,
@Expiration_Date datetime 
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.Organizations WHERE id = @id)
    BEGIN
	
        UPDATE ref.Organizations
        --SET FirstName = @FirstName, LastName = @LastName, Email = @Email
        --WHERE EmployeeID = @EmployeeID;

		set 
			Organization_Name = @Organization_Name,
			Country_id = @Country_id,
			IsActive = @IsActive,
			StorageType1 = @StorageType1,
			StorageType2 = @StorageType2,
			StorageType3 = @StorageType3,
			Subscription_Date = @Subscription_Date,
			Expiration_Date = @Expiration_Date
			where id =@id;
    END
	
    ELSE
    BEGIN
        --INSERT INTO Employees (EmployeeID, FirstName, LastName, Email)
        --VALUES (@EmployeeID, @FirstName, @LastName, @Email);
		insert into ref.Organizations (Organization_Name, Country_id, IsActive, StorageType1, StorageType2, StorageType3, Subscription_Date, Expiration_Date)
		values (
				--@id,
				@Organization_Name,
				@Country_id,
				@IsActive,
				@StorageType1,
				@StorageType2,
				@StorageType3,
				@Subscription_Date,
				@Expiration_Date
				);
    END
END
