create table orders(
orderno text Primarykey,
purch_amt real,
orderdate text,
salesmanid text,
customerid text);

insert into orders(orderno,purch_amt,orderdate,salesmanid,customerid) values("Order-10",15000,"03/01/2025","5001","C101");
insert into orders(orderno,purch_amt,orderdate,salesmanid,customerid) values("Order-11",18000,"03/02/2025","5002","C102");
insert into orders(orderno,purch_amt,orderdate,salesmanid,customerid) values("Order-12",21000,"03/03/2025","5003","C103");
insert into orders(orderno,purch_amt,orderdate,salesmanid,customerid) values("Order-13",24000,"03/04/2025","5004","C104");

select * from orders;