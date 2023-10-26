-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7pgJRc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "dept_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" employees.emp_no   NOT NULL,
    "dept_no" departments.dept_no   NOT NULL,
    "composite" (emp_no,dept_no)   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "composite"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" departments.dept_no   NOT NULL,
    "emp_no" employees.emp_no   NOT NULL,
    "composite" (dept_no,emp_no)   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "composite"
     )
);

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(255)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(255)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" employees.emp_no   NOT NULL,
    "salary" INT   NOT NULL,
    "composite" (emp_no,salary)   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "composite"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(255)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

