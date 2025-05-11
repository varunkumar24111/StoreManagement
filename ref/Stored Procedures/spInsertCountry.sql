CREATE procedure ref.spInsertCountry
@Country_Id int = null,
@Country_name nvarchar(100)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.Country WHERE Country_Id = @Country_Id)
    BEGIN
	
        UPDATE ref.Country
		set 
			Country_name = @Country_name
			where Country_Id = @Country_Id; 
    END
	
    ELSE
    BEGIN
		insert into ref.Country (Country_name)
		values (
				@Country_name
				);
    END
END