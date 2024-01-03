create database ProjectCRUDDb
use ProjectCRUDDb

create table Classes
(
ClassId int primary key,
ClassName nvarchar(50) not null
)
drop table Classes

create table Subject(
SubjectId int primary key,
SubjectName nvarchar(50) not null,
TeacherName nvarchar(50) not null
)
drop table Subject

create table Student(
StudentId int primary key,
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
Gender varchar(50) not null,
ClassId int foreign key references Classes(ClassId)
)
drop table Student

select * from Classes
select * from Student
select * from Subject
