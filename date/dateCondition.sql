-- Getting yesterday's date
-- Just as it is possible to add dates, it is also possible to subtract them:

-- DATE('now', '-1 day') DATE('now', '-1 week')

-- It is important to clarify that when we do not specify the sign, it is assumed that it is positive, this means that

-- DATE('now', '1 day')

-- is the same as

-- DATE('now', '+1 day')

-- Exercise:
-- Suppose we have a table called earnings with columns "id" (unique identifier), "date" (record date), and "amount" (earning of the day).

-- Shows the amount corresponding to yesterday.


SELECT amount FROM earnings WHERE date = DATE('now','-1 day');