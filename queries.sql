-- 1. Total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employees;

-- 2. Average salary of each department
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

-- 3. Count employees in each department
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

-- 4. Maximum and minimum salary by job role
SELECT job_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY job_id;

-- 5. Departments having more than 5 employees
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- 6. Round average salary by department
SELECT department_id, ROUND(AVG(salary), 2) AS rounded_avg_salary
FROM employees
GROUP BY department_id;

-- 7. Count distinct job roles
SELECT COUNT(DISTINCT job_id) AS distinct_jobs
FROM employees;

-- 8. Highest salary by department
SELECT department_id, MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;
