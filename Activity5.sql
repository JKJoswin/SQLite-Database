create table products(pid text Primarykey,
pname text,
pprice real,
pcom int);

insert into products(pid, pname, pprice, pcom) values("P101","pen",59.00,5);
insert into products(pid, pname, pprice, pcom) values("P102","pencil",29.00,3);
insert into products(pid, pname, pprice, pcom) values("P103","motherboard",3200.00,15);
insert into products(pid, pname, pprice, pcom) values("P104","keyboard",1099.00,12);
insert into products(pid, pname, pprice, pcom) values("P105","computer mouse",699.00,9);

select min(pprice) as "minimum price" from products;

select max(pprice) as "maximum price" from products;