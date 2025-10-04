 create database Sakala;
 create table schools(
 student_id int , name varchar(20), major varchar(20) primary key(student_id));
 exec sp_help schools;
 ---adds new colunm to table
  alter table schools
  add duration timestamp;
   alter table schools
  add gpa decimal(3,2);
  ---deletes colunm from table
  alter table schools
  drop column duration;
  ---inserting values into the table
 INSERT INTO schools (student_id, name, major, gpa)
VALUES (1, 'jack','Math',5.0),(2,'maddu', 'Physics',4.02),(3,'Newton','Math',4.02);
select * from schools
delete from schools
where student_id = 4;
insert into schools values(4,'Twal', 'physiology', 5.0);
insert into schools values(5,'Twal', 5.0);
delete from schools where student_id = 5;
update schools
set major = 'Biology'
where student_id = '3'

update schools
set gpa = '3.08'
where major = 'Biology';

# SQL-1
starter for sql
