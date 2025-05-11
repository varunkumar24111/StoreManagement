CREATE procedure ref.spInsertProvince
@Province_Id int = null,
@Province_name nvarchar(100),
@Country_Id int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.Province WHERE Province_Id = @Province_Id)
    BEGIN
	
        UPDATE ref.Province
		set 
			Province_name = @Province_name,
			Country_Id = @Country_Id
			where Province_Id = @Province_Id;
    END
	
    ELSE
    BEGIN
		insert into ref.Province (Province_name, Country_Id)
		values (
				@Province_name,
				@Country_Id
				);
    END
END