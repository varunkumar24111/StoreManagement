CREATE procedure ref.spInsertBranches
@BranchId int = null,
@BranchName nvarchar(100),
@Address_Id int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ref.Branches WHERE BranchId = @BranchId)
    BEGIN
	
        UPDATE ref.Branches
		set 
			BranchName = @BranchName,
			Address_Id = @Address_Id
			where BranchId =@BranchId;
    END
	
    ELSE
    BEGIN
		insert into ref.Branches (BranchName, Address_Id)
		values (
				@BranchName,
				@Address_Id
				);
    END
END

