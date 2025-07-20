/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

Founder ---> Lead Manager ---> Senior Manager ---> Manager ---> Employee

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, 
total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
*/

SELECT 
  C.company_code, 
  C.founder,
  COUNT(DISTINCT(LM.lead_manager_code)) as Total_No_of_Lead_Managers,
  COUNT(DISTINCT(SM.Senior_Manager_code)) as Total_No_of_Senior_Managers,
  COUNT(DISTINCT(M.manager_code)) as Total_No_of_Managers,
  COUNT(DISTINCT(E.employee_code)) as Total_No_of_Employees
FROM Company C
LEFT JOIN Lead_Manager LM 
    ON C.company_code = LM.company_code
LEFT JOIN Senior_Manager SM 
    ON C.company_code = SM.company_code
LEFT JOIN Manager M 
    ON C.company_code = M.company_code
LEFT JOIN Employee E 
    ON C.company_code = E.company_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code;
