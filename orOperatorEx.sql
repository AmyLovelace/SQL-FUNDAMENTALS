-- Using two conditions with an "or" operator
-- There is a customer table with the fields id, name, city and balance. The city is text type, the balance is an integer.

-- Select those clients from the clients table who are from the city 'Madrid' or whose balance is negative.

--CORRECT ANSWER

SELECT * FROM customers WHERE city = 'Madrid' or balance < 0;