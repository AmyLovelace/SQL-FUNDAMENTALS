-- Exercise
-- Given the following tables, list1 and list2, find the customers who are in both lists.

-- List1:

-- CUSTOMER
-- Juan
-- Maria
-- Carlos
-- Ana
-- Luis
-- Pedro
-- Carmen
-- List2:

-- CUSTOMER
-- Ana
-- Luis
-- Pedro
-- Carmen
-- Juan
-- Maria
-- Sofia


SELECT customer FROM list1 INTERSECT SELECT customer FROM list2