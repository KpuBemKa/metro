USE [METRO Cash&Carry];
GO

/*
	Select all the employees with their managers
*/

SELECT
	e.Surname,
	e.Name,
	d.Department,
	CONCAT(m.Surname, SPACE(1), m.Name) AS [Manager]
FROM
	Employees AS e
	INNER JOIN Departments AS d ON e.Department_ID = d.ID_Department
	INNER JOIN Managers AS m ON d.Manager_ID = m.ID_Manager
GO