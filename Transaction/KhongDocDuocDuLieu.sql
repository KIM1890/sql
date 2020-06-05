USE BANKING
GO
--doc tai khoan co so du lon nhat
ALTER PROCEDURE readData 
AS
BEGIN
	BEGIN TRAN
		SELECT TOP 1 sotien FROM ATM  ORDER BY sotien DESC
		WAITFOR DELAY '00:00:10';
		SELECT TOP 1 sotien FROM ATM  ORDER BY sotien DESC
		COMMIT
	
END
GO
EXEC readData
GO
