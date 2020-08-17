create table employees(
	emp_no int Primary Key, 
 	emp_title varchar(10), 
 	birth_date date not null, 
 	first_name varchar(30) not null, 
	last_name varchar(30) not null, 
 	sex varchar(1) not null, 
 	hire_date date not null	
);
create table titles(
	title_id varchar(10) Primary Key,
	title varchar(30) not null
);
ALTER TABLE employees
ADD FOREIGN KEY (emp_title) REFERENCES titles(title_id);

create table departments (
	dept_no varchar(10) PRIMARY KEY,
	dept_name varchar(30)
);

create table dept_manager (
	dept_no varchar(10) not null,
	emp_no int not null
);
ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

create table salaries (
	emp_no int not null,
	salary int not null
);
ALTER TABLE salaries
ADD FOREIGN KEY (emp_no) References employees (emp_no);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(10) not null
);
ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no);
ALTER TABLE dept_emp
ADD FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

--IMPORTED THE CSVs USING THE PGADMIN TOOL
