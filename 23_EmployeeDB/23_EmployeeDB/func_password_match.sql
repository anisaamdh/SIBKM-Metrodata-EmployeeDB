-- F-05: function password_match
CREATE FUNCTION func_password_match (@password VARCHAR(255), @newPassword VARCHAR(255))
RETURNS BIT
AS
BEGIN
	DECLARE @isValid BIT;
	SET @isValid = 0;
	
	IF (@password = @newPassword)
	SET @isValid = 1;
	
	RETURN @isValid;
END;