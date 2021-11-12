create table users(u_id integer constraint users_pk primary key,U_Name varchar2(20),U_Password varchar2(15));
create sequence users_sq start with 1 increment by 1 maxvalue 1000 minvalue 1;
insert into users (u_id,U_Name,U_Password) values(users_sq.nextval,'israr','israr');
select * from products;

create table products(p_id integer constraint products_pk primary key,P_Name varchar2(20),price number(15),quantity integer default 0);

create sequence products_sq start with 1000 increment by 1 maxvalue 10000 minvalue 1000;
insert into products (p_id,P_Name,price) values(products_sq.nextval,'Chocolate',50);

create table invoice(i_id integer constraint invoice_pk primary key,i_date date,subtotal number(15),discount number(3),total number(15),payment number(15),u_id integer constraint invoice_fk references users(u_id));

create table invoice_list(p_id integer constraint invoice_list_fk references products(p_id),i_id integer constraint invoice_list_fk2 references invoice(i_id),p_price number(15),p_quantity integer,p_subtotal number(15),p_name varchar2(20));

create sequence invoice_sq start with 1 increment by 1 maxvalue 100000 minvalue 1;
