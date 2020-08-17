--Part 1
select employees.emp_no, 
	employees.first_name, 
	employees.last_name, 
	employees.sex, 
	salaries.salary
FROM salaries 
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

--Part 2 
select employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE EXTRACT (year FROM "hire_date") = 1986

--Part 3 
SELECT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no, 
	employees.last_name,
	employees.first_name
From employees
JOIN dept_manager ON
(employees.emp_no=dept_manager.emp_no)
JOIN departments ON
(departments.dept_no=dept_manager.dept_no);

--Part 4
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from employees
join dept_emp on
(employees.emp_no=dept_emp.emp_no)
join departments on
(departments.dept_no=dept_emp.dept_no);

--Part 5
select first_name, last_name, sex
from employees
where last_name like 'B%'
and first_name = 'Hercules';

--Part 6
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name, 
	departments.dept_name
From dept_emp
JOIN employees ON
(dept_emp.emp_no=employees.emp_no)
JOIN departments ON
(departments.dept_no=dept_emp.dept_no)
where dept_name = 'Sales';

--Part 7
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name, 
	departments.dept_name
From dept_emp
JOIN employees ON
(dept_emp.emp_no=employees.emp_no)
JOIN departments ON
(departments.dept_no=dept_emp.dept_no)
where dept_name = 'Sales' or dept_name = 'Development';

--Part 8
select last_name, count(last_name) as CountOf
from employees
group by last_name