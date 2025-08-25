-- ===========================================================================================================
--       EMPLOYEE REPORT
-- ============================================================================================================


1 --Q1. Show all employees' first name, last name and job title. 
SELECT first_name, last_name, job_title
FROM employee;

-- Q2:-Show the names of all departments and their IDs.
SELECT department_id,
department_name FROM
department;

--Q3: Show the leaves which are still Pending.
SELECT * FROM leaveID
WHERE status = 'Pending';


--Q4. Show employee ID and full name (first + last) of all employees who are Active.
SELECT employee_id, first_name || ' ' || last_name AS full_name
FROM employee
WHERE status = 'Active';

--*Q5. Show employee names with their department names.
SELECT e.first_name, e.last_name, d.department_name
FROM employee e
JOIN department d ON e.department_id = d.department_id;

--Q6. Show payroll details for all employees having net salary more than 50,000.
SELECT employee_id, payment_date,net_salary
FROM payroll
WHERE net_salary > 50000;

--Q7. List employees who took leave in January 2025.
SELECT employee_id, leave_type, start_date, end_date
FROM leaveid
WHERE start_date BETWEEN '2022-01-01' AND '2022-01-31';

--Q8. Show total leaves taken by each employee.
SELECT employee_id, COUNT(*) AS
total_leaves
FROM leaveid
GROUP BY employee_id;

--Q9: Count those leaves which are of "sick leave" type. 
SELECT COUNT(*) AS
sick_leave_count
FROM leaveid
WHERE leave_type = 'Sick Leave';


--Q10. Show employee name and their latest attendance status.
SELECT a.employee_id, e.first_name, e.last_name, a.status, a.date FROM attendence a
JOIN employee e ON a.employee_id = e.employee_id
WHERE a.status = 'Present';

--Successfully solved real-world SQL queries using PostgreSQL, demonstrating proficiency in 
--data extraction, joins, filtering, and date-based analysis — ready to apply these skills in a 
--Data Analyst role.
--===============================================================================================================

