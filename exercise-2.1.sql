create database AllianceFeedbackSystemDb;
use AllianceFeedbackSystemDb;
------------------------------------------------------------------EXERCISE 2.1-------------------------------------------------------------------------------

--------------CREATING TRAINER_INFO TABLE---------------
create table Trainer_Info(Trainer_Id char(20) primary key,Salutation char(7),Trainer_Name char(30),Trainer_Location char(30),Trainer_Track char(15),Trainer_Qualification char(100),Trainer_Experiance int,Trainer_Email char(100),Trainer_Password char(20));
------------INSERTING VALUES IN TRAINER_INFO--------
insert into Trainer_Info values('F001','Mr','PANKAJ GHOSH','Pune','Java','Bachelor of Technology',12,'Pankaj.Ghosh@alliance.com','fact@123');
insert into Trainer_Info values('F002','Mr','SANJAY RADHAKRISHNAN','Banglore','DotNet','Bachelor of Technology',12,'Sanjay.Radhakrishnan@alliance.com','fac2@123');
insert into Trainer_Info values('F003','Mr','VIJAY MATHUR','Chennai','Mainframe','Bachelor of Technology',10,'Vijay.Mathur@alliance.com','fac3@123');
insert into Trainer_Info values('F004','Mrs','NANDINI NAIR','Kolkata','Java','Master of Computer Applications',9,'Nandini.Nair@alliance.com','fac4@123');
insert into Trainer_Info values('F005','Miss','ANITHA PAREKH','Hyderabad','Testing','Master of Computer Applications',6,'Anitha.Parekh@alliance.com','fac5@123');
insert into Trainer_Info values('F006','Mr','MANOJ AGRAWAL','Mumbai','Mainframe','Bachelor of Technology',9,'Manoj.Agrawal@alliance.com','fac6@123');
insert into Trainer_Info values('F007','Ms','MEENA KULKARNI','Coimbatore','Testing','Bachelor of Technology',5,'Meena.Kulkarni@alliance.com','fac7@123');
insert into Trainer_Info values('F009','Mr','SAGAR MENON','Mumbai','Java','Mater of Science In Information',12,'Sagar.Menon@alliance.com','fac8@123');
select * from Trainer_Info;
UPDATE Trainer_Info SET Trainer_Password = 'fac1@123' WHERE Trainer_Id='F001';

-------------CREATING BATCH_INFO TABLE----------
create table Batch_Info(Batch_id char(20) primary key,Batch_Owner char(30),Batch_BU_Name char(30));
--------------INSERTING BATCH VALUES-------------
insert into Batch_Info values('B001','MRS.SWATI ROY','MSP');
insert into Batch_Info values('B002','MRS.ARUNA K','HEALTHCARE');
insert into Batch_Info values('B003','MR.RAJESH KRISHNAN','LIFE SCIENCES');
insert into Batch_Info values('B004','MR.SACHIN SHETTY','BFS');
insert into Batch_Info values('B005','MR.RAMESH PATEL','COMMUNICATIONS');
insert into Batch_Info values('B006','MRS.SUSAN CHERIAN','RETAIL & HOSPITALITY');
insert into Batch_Info values('B007','MRS.SAMPADA JAIN','MSP');
insert into Batch_Info values('B008','MRS.KAVITA REGE','BPO');
insert into Batch_Info values('B009','MR.RAVI SEJPAL','MSP');
select * from Batch_Info;

-------------CREATING MODULE_INFO---------------
create table Module_Info(Module_id char(20) primary key,Module_Name char(40),Module_Duration int);
----------------INSERTING MODULE_INFO VALUES-------
insert into Module_Info values('O10SQL','Oracle 10g SQL',16);
insert into Module_Info values('O10PLSQL','Oracle 10g PL/ SQL',16);
insert into Module_Info values('J2SE','Core Java SE 1.6',288);
insert into Module_Info values('J2EE','Advanced Java EE 1.6',80);
insert into Module_Info values('JAVAFX','JavaFX 2.1',80);
insert into Module_Info values('DOTNT4','.Net Framework 4.0',50);
insert into Module_Info values('SQL2008','MS SQl Server 2008',120);
insert into Module_Info values('MSBI08','MS BI Studio 2008',158);
insert into Module_Info values('SHRPNT','MS Share Point',80);
insert into Module_Info values('ANDRD4','Android 4.0',200);
insert into Module_Info values('EM001','Instructor',0);
insert into Module_Info values('EM002','Course Material',0);
insert into Module_Info values('EM003','Learning Effectiveness',0);
insert into Module_Info values('EM004','Environment',0);
insert into Module_Info values('EM005','Job Impact',0);
insert into Module_Info values('TM001','Attendees',0);
insert into Module_Info values('TM002','Course Material',0);
insert into Module_Info values('TM003','Environment',0);
select * from Module_Info;

-----------------CREATING ASSOCIATE INFO----------------
drop table Associate_Info;
create table Associate_Info(Associate_Id char(20) primary key,Salutation char(7),Associate_Name char(30),Associate_Location char(30),Associate_Track char(15),Associate_Qualification char(200),Associate_Email char(100),Associate_Password char(20));
-----------------------INSERTING VALUES INTO ASSOCIATE_INFO------------------
insert into Associate_Info values('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123');
insert into Associate_Info values('A002','Mrs.','RADHIKA MOHAN','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123');
insert into Associate_Info values('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123');
insert into Associate_Info values('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123');
insert into Associate_Info values('A005','Miss.','LEELA MENON','Kerala','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123');
insert into Associate_Info values('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishnan@cognizant.com','tne6@123');
insert into Associate_Info values('A007','Mr.','PRABHAKAR SHUNMUGHAM','Mumbai','Java','Bachelor of Technology','Prabhakar.Shunmugham@honda.com','tne7@123');
select * from Associate_Info;

--------------CREATING QUESTION-------------
create table Questions(Question_id char(20) primary key,Module_Id char(20),Question_Text char(900));
----------------INSERTING VALUES--------------------------------------
insert into Questions values('Q001','EM001','Instructor knowledgeable and able to handle all your queries');
insert into Questions values('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages');
insert into Questions values('Q003','EM002','The course materials presentation, handson,  etc. refered during the training are relevant and useful.');
insert into Questions values('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.');
insert into Questions values('Q005','EM002','The reference materials suggested for each module are adequate.');
insert into Questions values('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work');
insert into Questions values('Q007','EM003','This training increases my proficiency level ');
insert into Questions values('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.');
insert into Questions values('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.');
insert into Questions values('Q010','EM005','This training will improve your job performance.');
insert into Questions values('Q011','EM005','This training align with the business priorities and goals.');
insert into Questions values('Q012','TM001','Participants were receptive and had attitude towards learning.');
insert into Questions values('Q013','TM001','All participats gained the knowledge and the practical skills after this training.');
insert into Questions values('Q014','TM002','The course materials presentation, handson,  etc. available for the session covers the entire objectives of the course.');
insert into Questions values('Q015','TM002','Complexity of the course is adequate for the particpate level.');
insert into Questions values('Q016','TM002','Case study and practical demos helpful in understanding of the topic');
insert into Questions values('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning.');
insert into Questions values('Q018','TM003','The software/hardware environment provided was adequate  for the purpose of the training.');
select * from Questions;

------------------CREATING ASSOCIATE_STATUS-----------------
create table Associate_Status(Associate_id char(20),Module_Id char(20),Start_Date char(900),End_Date char(20),AFeedbackGiven char(20),TFeedbackGiven char(20));
----------------inserting values in ASSOCIATE_STATUS------------------------
insert into Associate_Status values('A001','O10SQL','B001','F001','2000-12-15','2000-12-25');
insert into Associate_Status values('A002','O10SQL','B001','F001','2000-12-15','2000-12-25');
insert into Associate_Status values('A003','O10SQL','B001','F001','2000-12-15','2000-12-25');
insert into Associate_Status values('A001','O10PLSQL','B002','F002','2001-2-1','2001-2-12');
insert into Associate_Status values('A002','O10PLSQL','B002','F002','2001-2-1','2001-2-12');
insert into Associate_Status values('A003','O10PLSQL','B002','F002','2001-2-1','2001-2-12');
insert into Associate_Status values('A001','J2SE','B003','F003','2002-8-20','2002-10-25');
insert into Associate_Status values('A002','J2SE','B003','F003','2002-8-20','2002-10-25');
insert into Associate_Status values('A001','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into Associate_Status values('A002','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into Associate_Status values('A003','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into Associate_Status values('A004','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into Associate_Status values('A005','JAVAFX','B005','F006','2005-12-4','2005-12-20');
insert into Associate_Status values('A006','JAVAFX','B005','F006','2005-12-4','2005-12-20');
insert into Associate_Status values('A006','SQL2008','B006','F007','2007-6-21','2007-6-28');
insert into Associate_Status values('A007','SQL2008','B006','F007','2007-6-21','2007-6-28');
insert into Associate_Status values('A002','MSBI08','B007','F006','2009-6-26','2009-6-29');
insert into Associate_Status values('A003','MSBI08','B007','F006','2009-6-26','2009-6-29');
insert into Associate_Status values('A004','MSBI08','B007','F006','2009-6-26','2009-6-29');
insert into Associate_Status values('A002','ANDRD4','B008','F005','2010-6-5','2010-6-28');
insert into Associate_Status values('A005','ANDRD4','B008','F005','2010-6-5','2010-6-28');
insert into Associate_Status values('A003','ANDRD4','B009','F005','2011-8-1','2011-8-20');
insert into Associate_Status values('A006','ANDRD4','B009','F005','2011-8-1','2011-8-20');
select * from Associate_Status;

-----------------------CREATING TRAINER FEEDBACK TABLE------------------------------
create table Trainer_Feedback2(Trainer_Id char(20) REFERENCES Trainer_Info(Trainer_Id),Question_Id char(20) REFERENCES Questions(Question_Id),Batch_Id char(20) REFERENCES Batch_Info(Batch_Id),Module_Id char(20) REFERENCES Module_Info(Module_Id),Trainer_Rating int);
select * from Trainer_Feedback2;

-----------------------CREATING ASSOCIATE_FEEDBACK TABLE----------------------
create table Associate_Feedback(Associate_Id char(20) CONSTRAINT fk_associate REFERENCES Associate_Info(Associate_Id),
Question_Id char(20) REFERENCES Questions(Question_Id),Module_Id char(20) REFERENCES Module_Info(Module_Id),Associate_Rating int);
select * from Associate_Feedback;

-----------------------CREATING LOGIN_DETAILS TABLE-----------------------------
create table Login_Details(User_Id char(20),User_Password char(20));

------------------------------------------------------------------------EXERCISE-2.2-----------------------------------------------------------------------

ALTER TABLE Associate_Status ADD Batch_Id char(20) CONSTRAINT fk_batch_id FOREIGN KEY REFERENCES Batch_Info(Batch_Id);
ALTER TABLE Associate_Status ADD Trainer_Id char(20) CONSTRAINT fk_trainer_id FOREIGN KEY REFERENCES Trainer_Info(Trainer_Id);

alter table Associates_Status alter column Start_Date DATE;
alter table Associates_Status alter column End_Date DATE;

------------------------------------------------------------------------EXERCISE 2.4---------------------------------------------------------------------------
--------------UPDATING PASSWORD FOR F004---------------
UPDATE Trainer_Info SET Trainer_Password = 'nn4@123' WHERE Trainer_Id='F004';
select * from Trainer_Info;

------------------------------------------------------------------------EXERCISE 2.6---------------------------------------------------------------------------
--------------DISPLAYING TOP 5 TRAINERS BASED ON EXPERIANCE----
SELECT TOP 5 * FROM Trainer_Info WHERE Trainer_Experiance>=9;
select * from Trainer_Info;

-----------------------------------------------------------------------EXERCISE 2.5----------------------------------------------------------------------------
--------------DELETING RECORDS IN ASSOCIATE_STATUS TABLE-----------------------------------------------------------
DELETE FROM Associate_Status WHERE Associate_id='A003' AND Module_Id='J2EE';
select * from Associate_Status;

-----------------------------------------------------------------------EXERCISE 2.7----------------------------------------------------------------------------
-------------------INSERTING RECORDS INTO LOGIN_DETAILS-------------------------------------------------------------
insert into Login_Details values('U001','Admin1@123');
insert into Login_Details values('U002','Admin2@123');
select * from Login_Details;
BEGIN TRANSACTION;
COMMIT;
ROLLBACK;
select * from Login_Details;

---------------------------------------------------------------------Exercise 2.8----------------------------------------------------------------------------------


-----------------------------------------------------------------------Exercise2.9--------------------------------------------------------------------------
-------------------dropping the login_details table----------------------------------------------------------
drop table Login_Details;