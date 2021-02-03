create database UMBDB;
USE UMBDB;
--------------------------------------------------------------------SESSION 2 ----------------------------------------------------------------------------------
--------------------------------------------------------EXERCISE 2.2--------------------------------------------------------------------------------------------
-------------------------------------------CREATING STUDENT_INFO TABLE-------------------------------------------------------------------------------
create table Student_Info
(
	Reg_Number Varchar(20),
	Student_Name  Varchar(30),  
	Branch Varchar(30),
	Contact_Number  Varchar(10),
	Date_of_Birth Date, 
	Date_of_Joining Date ,	
	Address Varchar(250),
	Email_id Varchar(250)
    );
    insert into Student_Info values('MC101301','James','MCA','9714589787','12-jan-1984','08-jul-2010','No 10,South Block,Nivea','james.mca@yahoo.com');
    insert into Student_Info values('BEC111402','Manio','ECE','8912457875','23-feb-1983','25-jun-2011','8/12,Park View,Sieera','manioma@gmail.com');
    insert into Student_Info values('BEEI101204','Mike','EI','8974567897','10-feb-1983','25-aug-2010','Cross villa,NY','mike.james@ymail.com');
    insert into Student_Info values('MB111305','Paulson','MBA','8547986123','13-dec-1984','08-aug-2010','Lake view,NJ','paul.son@rediffmail.com');
    select * from Student_Info;


------------------CREATING TABLE FOR SUBJECT_MASTER-------------------------------------------------------------------------------------------------------------
create table Subject_Master2(Subject_Code varchar(10),Subject_Name varchar(30),Weightage INT);

---------------------------inserting values-----------------------------------------------------------------------
insert into Subject_Master2 values('EE01DCF','DCF',30);
insert into Subject_Master2 values('EC02MUP','Microprocessor',40);
insert into Subject_Master2 values('MC06DIP','Digital Image Processing',30);
insert into Subject_Master2 values('MB03MAR','Marketing Techniques',20);
insert into Subject_Master2 values('EI05IP','Instrumentation Precision',40);
insert into Subject_Master2 values('CPSC02DS','Data Structures',40);
select * from Subject_Master2;

-------------------CREATING TABLE FOR STUDENT_MARKS-----------------------------------------------------------------------------------------------------
create table Student_Marks(Reg_Number varchar(10),Subject_Code varchar(10),Semester int,Marks int);
-----------------------------inserting vales------------------------------------------------------------------
insert into Student_Marks values('MC101301','EE01DCF',1,75);
insert into Student_Marks values('MC101301','EC02MUP',1,65);
insert into Student_Marks values('MC101301','MC06DIP',1,70);
insert into Student_Marks values('BEC111402','EE01DCF',1,55);
insert into Student_Marks values('BEC111402','EC02MUP',1,80);
insert into Student_Marks values('BEC111402','MC06DIP',1,60);
insert into Student_Marks values('BEEI101204','EE01DCF',1,85);
insert into Student_Marks values('BEEI101204','EC02MUP',1,78);
insert into Student_Marks values('BEEI101204','MC06DIP',1,80);
insert into Student_Marks values('BEEI101204','MB03MAR',2,75);
insert into Student_Marks values('BEEI101204','EI05IP',2,65);
insert into Student_Marks values('BEEI101204','CPSC02DS',2,75);
insert into Student_Marks values('MB111305','EE01DCF',1,65);
insert into Student_Marks values('MB111305','EC02MUP',1,68);
insert into Student_Marks values('MB111305','MC06DIP',1,63);
insert into Student_Marks values('MB111305','MB03MAR',2,85);
insert into Student_Marks values('MB111305','EI05IP',2,74);
insert into Student_Marks values('MB111305','CPSC02DS',2,62);
select * from Student_Marks;

-------------------------------------------------------------CREATING TABLE FOR STUDENT RESULT----------------------------------------
create table Student_Result3(Reg_Number varchar(20),Semester_Number int,GPA decimal(2,1),Is_Eligible_Scholarship char(3));
-------------------------------------------------------------inserting values----------------------------------------
insert into Student_Result3 values('MC101301',1,7.5,'Y');
insert into Student_Result3 values('BEC111402',1,7.1,'Y');
insert into Student_Result3 values('BEEI101204',1,8.3,'Y');
insert into Student_Result3 values('BEEI101204',2,6.9,'N');
insert into Student_Result3 values('MB111305',1,6.5,'N');
insert into Student_Result3 values('MB111305',2,6.8,'N');
select * from Student_Result3;