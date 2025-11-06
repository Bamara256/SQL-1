create table emplo(id int, name varchar(30), sal int,bonus int);
insert into emplo values(13,'anna',90000,242);
insert into emplo values(8,'sala',10000,2412);
select * from emplo
create trigger t33
on emplo
for insert
as
if(select salary from inserted)>100000
begin
print 'salary amount cannot exceed 100000'
rollback
end
