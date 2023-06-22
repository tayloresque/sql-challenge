CREATE TABLE "Departments" (
    "DeptNo" varchar   NOT NULL,
    "DeptName" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "DeptNo"
     )
);

CREATE TABLE "DepartmentEmployees" (
    "EmpNo" int   NOT NULL,
    "DeptNo" varchar   NOT NULL,
    CONSTRAINT "pk_DepartmentEmployees" PRIMARY KEY (
        "EmpNo","DeptNo"
     )
);

CREATE TABLE "DepartmentManagers" (
    "DeptNo" varchar   NOT NULL,
    "EmpNo" int   NOT NULL,
    CONSTRAINT "pk_DepartmentManagers" PRIMARY KEY (
        "DeptNo","EmpNo"
     )
);

CREATE TABLE "Employees" (
    "EmpNo" int   NOT NULL,
    "EmpTitleID" varchar   NOT NULL,
    "BirthDate" varchar   NOT NULL,
    "FirstName" varchar   NOT NULL,
    "LastName" varchar   NOT NULL,
    "Sex" varchar   NOT NULL,
    "HireDate" varchar   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "EmpNo"
     )
);

CREATE TABLE "Salaries" (
    "EmpNo" int   NOT NULL,
    "Salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "EmpNo"
     )
);

CREATE TABLE "Titles" (
    "TitleID" varchar   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "TitleID"
     )
);

ALTER TABLE "DepartmentEmployees" ADD CONSTRAINT "fk_DepartmentEmployees_EmpNo" FOREIGN KEY("EmpNo")
REFERENCES "Employees" ("EmpNo");

ALTER TABLE "DepartmentEmployees" ADD CONSTRAINT "fk_DepartmentEmployees_DeptNo" FOREIGN KEY("DeptNo")
REFERENCES "Departments" ("DeptNo");

ALTER TABLE "DepartmentManagers" ADD CONSTRAINT "fk_DepartmentManagers_DeptNo" FOREIGN KEY("DeptNo")
REFERENCES "Departments" ("DeptNo");

ALTER TABLE "DepartmentManagers" ADD CONSTRAINT "fk_DepartmentManagers_EmpNo" FOREIGN KEY("EmpNo")
REFERENCES "Employees" ("EmpNo");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_EmpTitleID" FOREIGN KEY("EmpTitleID")
REFERENCES "Titles" ("TitleID");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_EmpNo" FOREIGN KEY("EmpNo")
REFERENCES "Employees" ("EmpNo");