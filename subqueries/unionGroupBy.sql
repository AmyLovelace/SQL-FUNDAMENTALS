-- Remove duplicates with union
-- The UNION operator is used to combine the results of two or more SELECT queries into a single result set. The main feature of UNION is that it eliminates duplicate rows from the final result.

-- Exercise
-- You have the users table with the following information:

-- ID NAME SURNAME EMAIL PHONE
-- 1 Juan Pérez juanperez@gmail.com 555-1234
-- 2 María García mariagarcia@hotmail.com 555-5678
-- 3 Pedro López pedrolopez@yahoo.com 555-5678
-- 4 Lucía Sánchez luciasanchez@outlook.com 555-5555
-- 5 Jorge Martínez jorgemartinez@gmail.com 555-5678
-- And the clients table with the following information:

-- ID NAME SURNAME EMAIL PHONE
-- 1 Juan Pérez juanperez@gmail.com 555-1234
-- 2 María García mariagarcia@hotmail.com 555-5678
-- 3 Pedro López pedrolopez@yahoo.com 555-5678
-- 4 Lucía Sánchez luciasanchez@outlook.com 555-5555
-- 5 Jorge Martínez jorgemartinez@gmail.com 555-4321
-- Create a query that shows us each email only once. The column shown should be called unique_mails

SELECT email as unique_mails
FROM users
UNION
SELECT email
FROM clients
GROUP BY email;
