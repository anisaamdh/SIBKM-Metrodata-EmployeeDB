-- =============================================
-- Author:		Siti Anisa M
-- Create date: 07-06-2024
-- Description:	<Description,,>
-- =============================================

-- SP ADD DATA PERMISSIONS
CREATE PROCEDURE AddPermission (
    @id int, 
    @name varchar(100)
)
AS
BEGIN
    DECLARE @errorMessage nvarchar(500);

    BEGIN TRY
        INSERT INTO tbl_permissions (id, name)
        VALUES (@id, @name);
    END TRY
    BEGIN CATCH
        SET @errorMessage = ERROR_MESSAGE();
        RAISERROR ('Error adding permission: %s', 16, 1, @errorMessage);
    END CATCH;
END;

--USE ADD DATA PERMISSIONS
EXEC AddPermission @id = 28, @name = 'Read Access';

--RESULT ADD DATA PERMISSIONS
SELECT * FROM tbl_permissions;