--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from employees as e
join salaries as s on e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
--extract the years first, then set year = 1986
select first_name, last_name, hire_date, DATE_PART('year', hire_date) as hired_year from employees where hired_year = '1986';
--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name  from department as d 
join dept_manager as m on d.dept_no = m.dept_no
join employees as e on m.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name
select de.emp_no, e.last_name, e.first_name, d.dept_name from department as d
join dept_employee as de on d.dept_no = de.dept_no
join employees as e on e.emp_no = de.emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees where first_name = 'Hercules' AND last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name
select de.emp_no, e.last_name, e.first_name, d.dept_name from department as d
join dept_employee as de on d.dept_no = de.dept_no
join employees as e on e.emp_no = de.emp_no
where dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
select de.emp_no, e.last_name, e.first_name, d.dept_name from department as d
join dept_employee as de on d.dept_no = de.dept_no
join employees as e on e.emp_no = de.emp_no
where dept_name = 'Sales' OR  dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
select last_name, count(last_name) as frequency from employees
group by  last_name
order by frequency DESC;


select * from department;
select * from employees where emp_title_id = 'd007';
select * from dept_employee 