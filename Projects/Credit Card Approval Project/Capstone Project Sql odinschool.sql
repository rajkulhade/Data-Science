                                      ## SQL Capstone Project ##

## Goal of the project ##
-- The goal of predicting credit card approval based on customer information involves using SQL to analyze the customer's financial history and creditworthiness. 
-- The aim is to identify the factors that are most likely to lead to a successful credit card application, such as the customer's credit score, 
-- income, age, and employement years.

## Data cleaning ##
-- Have cleaned the data by removing any duplicate records, filling in missing values, and converting data types where necessary.

## Using cleaned data for SQL part of the project ##
use capstone_project;

## Performing sql task to get answers of sql query ##
-- 1)  Group the customers based on their income type and find the average of their annual income.
Select Type_Income, avg(Income) as Avg_annual_income from Capstone_sqlfile
Group by Type_Income
order by avg(Income) desc;

-- 2) Find the female owners of cars and property.
Select Gender, Has_a_Car, Has_a_Property from Capstone_sqlfile
where Gender = "F"
having Has_a_car = "Y" and Has_a_Property = "Y";

-- 3) Find the male customers who are staying with their families.
Select ID as Male_Customer_id , Family_Members from capstone_sqlfile
where Gender = "M"
having Family_Members>=2;

-- 4) Please list the top five people having the highest income.
select ID as Customer_id, Income from capstone_sqlfile 
order by Income desc
limit 5;

-- 5) How many married people are having bad credit?
select Marital_status, count(Outcome) as bad_Credit from capstone_sqlfile
where Marital_status ="Married" and  outcome = 1;

-- 6 What is the highest education level and what is the total count?
select count(Education_level) as Total_Education_Count from capstone_sqlfile;

-- 7) Between married males and females, who is having more bad credit? 
select Gender, Marital_status, count(Outcome) as Bad_Credit from capstone_sqlfile
where Outcome = 1 and Marital_status = "Married"
group by Gender
order by count(Outcome) desc
Limit 1;



