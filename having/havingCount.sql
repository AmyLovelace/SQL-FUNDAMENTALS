-- Having and account
-- Exercise
-- Given the following table employees

-- FIRST LAST NAME SALARY DEPARTMENT
-- Juan Pérez 3000 Sales
-- María González 3500 Marketing
-- Carlos Rodríguez 4000 Technology
-- Ana Martínez 2800 Human Resources
-- Luis García 3200 Finance
-- Carmen López 3100 Administration
-- José Hernández 2900 Operations
-- Francisco Martín 3400 Legal
-- Laura Sánchez 3300 Shopping
-- Antonio Díaz 3600 Production
-- Sofia Ruiz 2750 Sales
-- Jorge Vargas 3900 Technology
-- Elena Castro 3050 Marketing
-- Pedro Ortega 3150 Finance
-- Create a query that shows the number of users and the department where there is more than one employee. The columns should be named number_of_users and department, respectively.


SELECT COUNT(department) as number_of_users , department FROM employees GROUP BY 2 HAVING number_of_users > 1 ;