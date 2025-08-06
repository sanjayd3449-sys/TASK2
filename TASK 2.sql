CREATE DATABASE CollegeDBt;
USE CollegeDBt;

-- Department Table
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY identity,
    Department_Name VARCHAR(100)
)

select * from Department

-- Student Table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY identity,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    DOB DATE,
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
)

insert into Student (Name,Email,Phone,DOB,Department_ID) values('karthik','karthik@gmail.com',16782809,'2025-08-21',1)
insert into	Student (Name,Email,Phone,DOB,Department_ID) values('vishal','vishal@gmail.com',716877360,'2025-08-24',2)
insert into	Student (Name,Email,Phone,DOB,Department_ID) values('sanjeev','sanjeev@gmail.com',3763823873,'2025-08-23',4)
insert into	Student (Name,Email,Phone,DOB,Department_ID) values('manoj','manoj@gmail.com',32636547334,'2025-08-2',1)
insert into	Student (Name,Email,Phone,DOB,Department_ID) values('abhi','abhi@gmail.com',35266651676,'2025-08-3',2)
insert into	Student (Name,Email,Phone,DOB,Department_ID) values('keerthi','keerthi@gmail.com',63848625882,'2025-08-4',6)
insert into	Student (Name,Email,Phone,DOB,Department_ID) values('loki','loki@gmail.com',476763847398,'2025-08-5',5)
insert into	Student (Name,Email,Phone,DOB,Department_ID) values('naveen','naveer@gmail.com',636483923,'2025-08-6',6)

-- Course Table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY identity,
    Course_Name VARCHAR(100),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
)

-- Faculty Table
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY identity,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Subject VARCHAR(100),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
)


insert into Department  values('mcom')
insert into Department (Department_Name) values('mba')
insert into Department (Department_Name) values('mca')
insert into Department (Department_Name) values('mca')
insert into Department (Department_Name) values('mca')
insert into Department (Department_Name) values('mba')
insert into Department (Department_Name) values('mba')



insert into Course( Course_Name, Department_ID)values 
('sql',1),
('power_BI',2),
('sql',3),
('sql',4),
('sql',5),
('power_BI',6),
('power_BI',1),
('power_BI',3)


insert into Faculty (Name,Email,Subject,Department_ID)   values ('shubham','shubham@gmail.com','finance',1)
insert into Faculty (Name,Email,Subject,Department_ID)  values	('kavitha','kavitha@gmail.com','HR',1)
insert into Faculty (Name,Email,Subject,Department_ID)  values	('pooja','pooja@gmail.com','python',2)
insert into Faculty (Name,Email,Subject,Department_ID)  values	('noorjan','noorjan@gmail.com','c',3)
insert into Faculty (Name,Email,Subject,Department_ID)  values	('bartesh','bartesh@gmail.com','marketing',4)
insert into Faculty (Name,Email,Subject,Department_ID)  values	('hina','hina@gmail.com','java',5)

select * from Faculty

--UPDATE STATEMENT

update Faculty set Name='jayasima' where Subject='java'
update Faculty set Email='jayasima@gmail.com' where Subject='java'


update Student set DOB='2000-06-02' where  Student_ID=1
update Student set DOB='2000-10-19' where  Student_ID=2
update Student set DOB='2000-11-08' where  Student_ID=3
update Student set DOB='2000-03-22' where  Student_ID=5


select * from Department
select * from Student where dob>'2025-01-01' 

--DELETE STATEMENT

delete from  Student where dob>'2025-01-01'

delete from Department where Department_ID in (2,3,6)
delete from Student where Department_ID in (2,3,6)
delete from Course where Department_ID in (2,3,6)

delete from Faculty where Department_ID in (2,3,6)















