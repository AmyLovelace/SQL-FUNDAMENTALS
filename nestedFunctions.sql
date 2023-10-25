-- Combining functions
-- In SQL we can combine functions. Let's see an example combining LOWER and TRIM:

-- SELECT LOWER(TRIM(email)) as email_clean from users;

-- This query selects the emails from the "users" table, converts them to lowercase, and removes any extra white space around them. The result will be a list of "clean" and lowercase emails.

-- Exercise
-- There is a table of users with the columns first name, last name, email and telephone number. Names, surnames and emails have blank spaces at both the beginning and end and some of them have capital letters.

-- Use what you have learned to select the names, emails and last names, cleaning each of these fields. For the result to be correct you must use the aliases clean_name, clean_surname and clean_email respectively.


SELECT LOWER(TRIM(firstname)) as clean_name, LOWER(TRIM(lastname)) as clean_lastname, LOWER(TRIM(email)) as clean_email FROM users;