

#Q1. MGS Exercise 8-1 [5 points]

# HERE I write a SELECT statement that returns A column that uses the FORMAT function to return the list_price column with 2
#digits to the right of the decimal point, A column that uses the CAST function to return the discount_percent column as
#an integer, A column named discount_amount that uses the list_price and discount_percent, a columns to calculate the discount amount and uses the ROUND function to round
#the result so it has 2 decimal digits A column named month_day_added that uses the DATE_FORMAT function (as
#part of your solution) to return the date_added column in this format: MM-DD

USE my_guitar_shop;
SELECT 
   FORMAT(list_price, 2) AS listPrice ,  ROUND(list_price - (list_price - CAST(discount_percent AS UNSIGNED)),2) AS discount_amount,
   DATE_FORMAT(date_added, "%M %D") AS month_day_added
FROM products;

#Q2.MGS Exercise 9-2 [5 points]

# Here I Write a SELECT statement that returns The order_date column , A column that uses the DATE_FORMAT function to return the four-digit year
#that's stored in the order_date column , A column that uses the DATE_FORMAT function to return the order_date column in this format: Mon-DD-YYYY.
#A column that uses the DATE_FORMAT function to return the order_date column with only the hours, minutes and seconds on a 12-hour clock with an am/pm
#indicator.○ A column that uses the DATE_FORMAT function to return the order_date column in this format: MM/DD/YY HH:MI.

USE my_guitar_shop;
SELECT DATE_FORMAT(order_date,"%Y") AS order_dateY, DATE_FORMAT(order_date,"%b-%e-%Y") AS order_dateDayAndYear,
 DATE_FORMAT(order_date, '%l-%i-%p') AS order_dateMinSec12Hours, DATE_FORMAT(order_date, '%m/%e/%y %H:%I') AS order_dateLastQuestion
FROM orders;

#--------Task 2. Software Expert (SWE) Database---
#Q1. SWE Exercise 1 [5 points]
# Here we Display the average evaluation score for consultant 'Janet Park' and  Round the retrieved
#value to two decimal places.
USE swexpert;
SELECT CONCAT_WS( "__","Janet Park" , ROUND(AVG(score),2)) AS averageEvaluationScore
FROM evaluation; 


#Q2. SWE Exercise 2 [5 points]
# Here we select the project Id , consultant Id and the Total of months We use LPAD

USE swexpert;
SELECT LPAD(p_id, 15, ' ')AS ProjectId,
		LPAD(c_id,15, ' ') AS  ConsultantId,
        LPAD(TRUNCATE(DATEDIFF(roll_off_date,roll_on_date) /30.4,0),10 ,' ') AS months
FROM project_consultant;

