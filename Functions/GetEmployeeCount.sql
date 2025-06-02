CREATE FUNCTION Employee.GetEmployeeAge (@EmployeeId INT)
RETURNS INT
AS
BEGIN
  DECLARE @Age INT;
  SELECT @Age = DATEDIFF(YEAR, HireDate, GETDATE())
  FROM Employee.Employee
  WHERE EmployeeId = @EmployeeId;
  RETURN @Age;
END;
GO
