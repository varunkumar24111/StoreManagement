Create procedure ref.spInsertCustomerType
@CustomerTypeId int = null,
@CustomerType varchar(20)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.CustomerType WHERE CustomerTypeId = @CustomerTypeId)
    BEGIN
	
        UPDATE ref.CustomerType
		set 
			CustomerType = @CustomerType
			where CustomerTypeId = @CustomerTypeId;
    END
	
    ELSE
    BEGIN
		insert into ref.CustomerType (CustomerType)
		values (
				@CustomerType
				);
    END
END