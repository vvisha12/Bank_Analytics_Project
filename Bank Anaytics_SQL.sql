create database project;
use project;

# KPI 1:YEAR WISE LOAN AMOUNT STATS #
select issue_d as year, sum(loan_amnt) as total from bank group by issue_d;

# KPI 2:GRADE AND SUB GRADE WISE REVOL_BAL #
select grade, sub_grade, sum(revol_bal) as total from bank group by grade, sub_grade order by grade;

# KPI 3:Total Payment for Verified Status Vs Total Payment for Non Verified Status #
select verification_status, round(sum(total_pymnt),2) as total from bank where verification_status in ('Verified', 'Not Verified') group by verification_status;

# KPI 4:State wise and last_credit_pull_d wise loan status #
select addr_state, last_credit_pull_d, loan_status from bank group by addr_state, last_credit_pull_d order by addr_state;

# KPI 5:Home ownership Vs last payment date stats #
select sum(last_pymnt_amnt), home_ownership from bank group by last_pymnt_d, home_ownership order by last_pymnt_amnt desc;