Create procedure ref.spInsertCustomer
@CustomerId int = null,
@CustomerName varchar(50),
@CustomerTypeId int

AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.Customer WHERE CustomerId = @CustomerId)
    BEGIN
	
        UPDATE ref.Customer
		set 
			CustomerName = @CustomerName,
			CustomerTypeId = @CustomerTypeId
			where CustomerId = @CustomerId;
    END
	
    ELSE
    BEGIN
		insert into ref.Customer (CustomerName, CustomerTypeId)
		values (
				@CustomerName,
				@CustomerTypeId
				);
    END
END
