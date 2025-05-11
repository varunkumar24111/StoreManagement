CREATE procedure ref.spInsertCity
@City_Id int = null,
@City_name nvarchar(100),
@Province_Id int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.City WHERE City_Id = @City_Id)
    BEGIN
	
        UPDATE ref.City
		set 
			City_name = @City_name,
			Province_Id = @Province_Id
			where City_Id = @City_Id;
    END
	
    ELSE
    BEGIN
		insert into ref.City (City_name, Province_Id)
		values (
				@City_name,
				@Province_Id
				);
    END
END