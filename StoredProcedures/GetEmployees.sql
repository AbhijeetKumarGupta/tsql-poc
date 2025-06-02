CREATE PROCEDURE Employee.GetEmployeeInfo
@EmployeeId INT
AS
BEGIN
  SELECT FirstName, LastName, HireDate
  FROM Employee.Employee
  WHERE EmployeeId = @EmployeeId;
END;
GO
