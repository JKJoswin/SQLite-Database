create table product(productid text Primarykey,
productname text,
supplierid text,
categoryid text,
unit text,
price real);

insert into product(productid, productname, supplierid, categoryid, unit, price) values("p101","pen","S101","C101","50 pens x 50 boxes",59.00);
insert into product(productid, productname, supplierid, categoryid, unit, price) values("p102","torch","S102","C102","25 torchs x 45 boxes",99.00);
insert into product(productid, productname, supplierid, categoryid, unit, price) values("p103","watch","S103","C103","10 watches x 30 boxes",599.00);
insert into product(productid, productname, supplierid, categoryid, unit, price) values("p104","acrylic set","S104","C104","5 acrylic set x 20 boxes",699.00);
insert into product(productid, productname, supplierid, categoryid, unit, price) values("p105","canvas","S105","C105","5 canvas x 35 boxes",299.00);

select count(price) as productcount from product;

select sum(price) as totalsum from product;

select avg(price) as averageprice from product;