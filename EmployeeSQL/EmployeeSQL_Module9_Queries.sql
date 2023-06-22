SELECT e."LastName", e."FirstName", e."Sex", s."Salary"
FROM "Employees" as e
INNER JOIN "Salaries" as s ON
(e."EmpNo" = s."EmpNo");

SELECT "FirstName", "LastName", "HireDate"
FROM "Employees"
WHERE "HireDate" BETWEEN '1/01/1986' AND '12/31/1986';

SELECT dm."DeptNo", d."DeptName", e."LastName", e."FirstName", d."DeptName"
FROM "DepartmentManagers" as dm
INNER JOIN "Employees" as e ON
(dm."EmpNo" = e."EmpNo")
INNER JOIN "Departments" as d ON
(dm."DeptNo" = d."DeptNo");

SELECT de."DeptNo", de."EmpNo", e."LastName", e."FirstName", d."DeptName"
FROM "DepartmentEmployees" as de
INNER JOIN "Employees" as e ON
(de."EmpNo" = e."EmpNo")
INNER JOIN "Departments" as d ON
(de."DeptNo" = d."DeptNo");

SELECT "FirstName", "LastName", "Sex"
FROM "Employees"
WHERE "FirstName" = 'Hercules'
AND "LastName" LIKE 'B%';

SELECT de."EmpNo", e."LastName", e."FirstName", d."DeptName"
FROM "DepartmentEmployees" as de
INNER JOIN "Employees" as e ON
(de."EmpNo" = e."EmpNo")
INNER JOIN "Departments" as d ON
(de."DeptNo" = d."DeptNo")
WHERE "DeptName" = 'Sales';

SELECT de."EmpNo", e."LastName", e."FirstName", d."DeptName"
FROM "DepartmentEmployees" as de
INNER JOIN "Employees" as e ON
(de."EmpNo" = e."EmpNo")
INNER JOIN "Departments" as d ON
(de."DeptNo" = d."DeptNo")
WHERE "DeptName" = 'Sales' OR "DeptName" = 'Development';

SELECT "LastName", COUNT(*) AS "Last Name Count"
FROM "Employees"
GROUP BY "LastName" 
ORDER BY "Last Name Count" DESC;


