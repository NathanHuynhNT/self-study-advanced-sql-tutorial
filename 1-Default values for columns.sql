
--Default values for columns
create table customer1
(
    customer_id number,
    customer_name varchar2(20),
    expiry_date date DEFAULT to_date('31-dec-2099', 'dd-mon-yyyy')
);

select * from customer1;

insert into customer1 (customer_id, customer_name) values (1, 'Nathan Ride');
insert into customer1 (customer_id, customer_name, expiry_date) values (2, 'Nathan Ride 2', default);
insert into customer1 (customer_id, customer_name, expiry_date) values (3, 'Nathan Ride 3', to_date('31-jan-2050', 'dd-mon-yyyy'));

commit;