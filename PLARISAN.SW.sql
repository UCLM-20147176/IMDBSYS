CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'John', 'Smith', 101),
(2, 'Jane', 'Doe', 102),
(3, 'Mike', 'Johnson', 101),
(4, 'Emily', 'Davis', 103),
(5, 'Sarah', 'Parker', 102);



Select * FROM Employees

SELECT COUNT(*) AS TotalEmployees FROM Employees;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleAmount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductID, SaleAmount) VALUES
(1, 1001, 150.00),
(2, 1002, 200.00),
(3, 1003, 50.00),
(4, 1001, 120.00);

SELECT SUM(SaleAmount) AS TotalSalesAmount FROM Sales;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(101, 'Laptop', 1200.00),
(102, 'Smartphone', 800.00),
(103, 'Tablet', 300.00),
(104, 'Smartwatch', 200.00);

SELECT MIN(Price) AS LowestPrice, MAX(Price) AS HighestPrice FROM Products;

ALTER TABLE Employees ADD Salary INT 


UPDATE Employees SET Salary = '60000' WHERE EmployeeID = '1';
UPDATE Employees SET Salary = '70000' WHERE EmployeeID = '2';
UPDATE Employees SET Salary = '50000' WHERE EmployeeID = '3';
UPDATE Employees SET Salary = '80000' WHERE EmployeeID = '4';
UPDATE Employees SET Salary = '75000' WHERE EmployeeID = '5';


SELECT AVG(Salary) AS AverageSalary FROM Employees;

SELECT COUNT(DISTINCT DepartmentID) AS DistinctDepartments FROM Employees;

SELECT DepartmentID, COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY DepartmentID ORDER BY DepartmentID;

SELECT ProductID, SUM(SaleAmount) AS TotalSales FROM Sales GROUP BY ProductID ORDER BY ProductID;

SELECT DepartmentID, AVG(Salary) AS AverageSalary FROM Employees GROUP BY DepartmentID ORDER BY DepartmentID;

SELECT DepartmentID, COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY DepartmentID HAVING COUNT(*) > 1 ORDER BY DepartmentID;

SELECT DepartmentID, COUNT(*) AS NumberOfEmployees, MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary FROM Employees GROUP BY DepartmentID ORDER BY DepartmentID;

