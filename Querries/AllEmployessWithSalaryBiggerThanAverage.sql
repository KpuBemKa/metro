USE [METRO Cash&Carry];
GO

/*
	Select all employees with salaty bigger than average
*/

SELECT
	e.Surname,
	e.Name,
	e.Salary
FROM
	Employees AS e
WHERE
	e.Salary >= (
		SELECT
			AVG(Employees.Salary)
		FROM
			Employees
	);
GO