SELECT * FROM ocd_patient.ocd_patient_dataset;
select * from ocd_patient_dataset;
select count(gender) from ocd_patient_dataset;
select Gender, count('Patient IdiagnosesD') as patient_id , avg(Age) from ocd_patient_dataset group by 1;

SELECT Gender,
count(`Patient ID`) as patient_count,
avg(`Y-BOCS Score (Obsessions)`) as avg_obs_score
FROM ocd_patient_dataset
Group By 1;

SELECT 'Education Level' as stutus,
count(`Patient ID`) as patient_count,
avg(`Y-BOCS Score (Obsessions)`) as avg_obs_score
FROM ocd_patient_dataset
Group By 1;

select * from ocd_patient_dataset where Ethnicity = 'Asian';

select Ethnicity , count('Asian') from ocd_patient_dataset group by Ethnicity;

select Patient_ID from ocd_patient_dataset where OCD_Diagnosis_Date between '20-01-2021' And '20-12-2021';

select max(age) as Age, max(Duration_sym_months) as months from ocd_patient_dataset;

select min(Age) as Min_acidity from ocd_patient_dataset;
select max(Age) as Min_acidity from ocd_patient_dataset;

select max(Ethnicity) from ocd_patient_dataset group by Depression_Diagnosis;

select Marital_Status , count(Marital_Status) from ocd_patient_dataset where Depression_Diagnosis = 'yes' and Ethnicity = 'Asian' group by 1;

select Marital_Status , count(Marital_Status) from ordersocd_patient_dataset where Depression_Diagnosis = 'yes' and Ethnicity = 'Asian' and Anxiety_Diagnosis = 'yes' group by 1;

select Education_level , count(Education_level) from ocd_patient_dataset where Depression_Diagnosis = 'yes' group by 1;  

select count(Patient_ID) from ocd_patient_dataset where Family_hist_ocd = 'no' and Depression_Diagnosis = 'yes' group by Depression_Diagnosis;

select age,count(age) from ocd_patient_dataset where age > 20 and age <= 30 and Depression_Diagnosis = 'yes' group by age order by 1;
select age,count(age) from ocd_patient_dataset where age > 20 and age <= 30 and Depression_Diagnosis = 'no' group by age order by 1;

select * from diagnoses limit 5;

select Ethnicity from ocd_patient_dataset;

use classicmodels;

delimiter && 
create procedure allemp() 
begin 
select * from employees;
end && 
delimiter;

call allemp();

DELIMITER && 
create procedure jobTitle (JT varchar(20))
begin 
select ememployeeNumber, firstName, lastName from employees
where jobTitle = JT;
end &&
DELIMITER ;
DELIMITER && 
create procedure job (@JT varchar(20))
begin 
select ememployeeNumber, firstName, lastName from employees
where job = JT;
end &&


DELIMITER ;
drop procedure GetEmployeesByJobTitle;
jobTitle

DELIMITER && 
create procedure GetEmployeesByJobTitle(in jobTitle varchar(20))
begin 
select employeeNumber, firstName, lastName, jobTitle from employees
where jobTitle = jobTitle;
end &&
DELIMITER ;
call GetEmployeesByJobTitle('President');
use hr;
DELIMITER && 
create procedure sortsal(in msalary int)
begin
select first_name,salary from employees
order by salary desc limit msalary;
end &&
DELIMITER ;

call sortsal(5);

DELIMITER && 
create procedure salaryupdate(in usalary float,id int)
begin 
update employees set salary = usalary where employee_id = id;
end &&
DELIMITER ;

call salaryupdate(1800 , 101);
select * from employees;

create view emp 
as select first_name,last_name,salary from employees;
select * from emp;
