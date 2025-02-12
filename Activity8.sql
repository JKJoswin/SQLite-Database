create table if not exists department(
emp_id text Primarykey,
name text,
dep_id text,
manager_id text,
salary real);

insert into department(emp_id, name, dep_id, manager_id, salary) values("E101","Jackie Chan","D104","M104",625000);
insert into department(emp_id, name, dep_id, manager_id, salary) values("E102","Bruce Lee","D104","M104",576000);
insert into department(emp_id, name, dep_id, manager_id, salary) values("E103","Mohammed Ali","D104","M104",432000);
insert into department(emp_id, name, dep_id, manager_id, salary) values("E104","Mike Tyson","D103","M103",216000);
insert into department(emp_id, name, dep_id, manager_id, salary) values("E105","Dustin Porier","D103","M103",200000);

select count(*) as count, dep_id from department group by dep_id;

select sum(salary) as "total salary", dep_id from department group by dep_id;

select sum(salary) as "total salary", dep_id, count(*) as count from department group by dep_id;

select sum(salary) as "total salary", dep_id from department where manager_id="M103" group by dep_id;

select dep_id, count(dep_id) as count from department group by dep_id having count(dep_id)>2;