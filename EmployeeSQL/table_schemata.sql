CREATE TABLE titles(
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

CREATE TABLE employees(
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_data DATE, 
    first_name VARCHAR, 
    last_name VARCHAR,
    sex CHAR(1),
    hire_date DATE,
    UNIQUE (emp_no),
    FOREIGN KEY (emp_title_id)REFERENCES titles(title_id)
);

CREATE TABLE departments(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE dept_manager(
    dept_no VARCHAR,
    FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
    emp_no INTEGER,
    FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
    emp_no INTEGER,
    FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
    dept_no VARCHAR,
    FOREIGN KEY (dept_no)REFERENCES departments(dept_no)
);

CREATE TABLE salaries(
    emp_no INTEGER,
    salary INTEGER,
    FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
);
