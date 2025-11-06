create table person(PersonalID int,Firstname varchar(50), lastname varchar(50),dob date);
---insert into records into the person table
---insert into person(personid,firstname ,lastname,DOB)
insert into person values(1, 'jao','dow','1990-05-25');
insert into person values(1, 'john','smith','1998-10-25');
insert into person values(1, 'jo','bao','1978-03-12');
select * from person
create trigger checkbirthdate1
on person
for update
as
if (select DOB from inserted) >getdate()
begin 
print 'date of birth cannot be greater than todays date'
rollback
end
update person set DOB ='7-20-2025' where firstname ='jo';
select * from person
