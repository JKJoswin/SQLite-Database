create table salesman(
s_id text Primarykey,
s_name text,
city text,
commission real);

insert into salesman(s_id, s_name, city, commission) values("S101","Tony Stark","New York",0.15);
insert into salesman(s_id, s_name, city, commission) values("S102","Steve Roger","D.C.Washington",0.10);
insert into salesman(s_id, s_name, city, commission) values("S103","Nick Fury","Ohio",0.20);
insert into salesman(s_id, s_name, city, commission) values("S104","Bruce Banner","Chicago",0.25);
insert into salesman(s_id, s_name, city, commission) values("S105","Peter Parker","New Jersey",0.30);

create table if not exists customer(
c_id text Primarykey,
c_name text,
city text,
grade text,
s_id text);

insert into customer(c_id, c_name, city, grade, s_id) values("C101","Elon Musk","New York", "A", "S101");
insert into customer(c_id, c_name, city, grade, s_id) values("C102","Jeff Bezos","D.C.Washington", "B", "S102");
insert into customer(c_id, c_name, city, grade, s_id) values("C103","Mark Zuckerberg","Ohio", "C", "S103");
insert into customer(c_id, c_name, city, grade, s_id) values("C104","Larry Ellison","Chicago", "D", "S104");
insert into customer(c_id, c_name, city, grade, s_id) values("C105","Bernard Arnault","New Jersey", "E", "S105");

create table if not exists orders(
o_no text Primarykey,
o_pur_amt real,
order_date text,
c_id text,
s_id text);

insert into orders(o_no, o_pur_amt, order_date, c_id, s_id) values("O101",1000.0 ,"01/01/2025" , "C101", "S101");
insert into orders(o_no, o_pur_amt, order_date, c_id, s_id) values("O102",900.0 ,"01/02/2025" , "C102", "S102");
insert into orders(o_no, o_pur_amt, order_date, c_id, s_id) values("O103",800.0 ,"01/03/2025" , "C103", "S103");
insert into orders(o_no, o_pur_amt, order_date, c_id, s_id) values("O104",700.0 ,"01/04/2025" , "C104", "S104");
insert into orders(o_no, o_pur_amt, order_date, c_id, s_id) values("O105",600.0 ,"01/05/2025" , "C105", "S105");

select customer.c_name, salesman.s_name from customer join salesman where customer.s_id = salesman.s_id;

select customer.city, salesman.city from orders join salesman on orders.s_id = salesman.s_id join customer on orders.c_id = customer.c_id where customer.city <> salesman.city;

select orders.o_no, customer.c_name from orders join customer on orders.c_id = customer.c_id;

select customer.c_name as "Customer Name", customer.grade as Grade from orders join salesman on orders.s_id = salesman.s_id join customer on orders.c_id = customer.c_id where customer.grade is not null;

select customer.c_name as "Customer Name", customer.city as "Customer City", salesman.s_name as "Salesman Name", salesman.commission as "Salesman Commission" from customer join salesman on customer.s_id = salesman.s_id where salesman.commission between 0.12 and 0.15;

select customer.c_name as "Customer Name", orders.o_no as "Order No.", salesman.commission as "Salesman Commission", orders.o_pur_amt * salesman.commission as "Commission Amount" from orders join salesman on orders.s_id = salesman.s_id join customer on orders.c_id = customer.c_id where customer.grade="A" or customer.grade="D";

select * from customer join orders on customer.c_id = orders.c_id where orders.order_date="01/01/2025" or orders.order_date="01/04/2025";