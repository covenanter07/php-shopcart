drop database if exists osdb;
create database osdb default character set utf8 collate utf8_general_ci;
grant all on osdb.* to 'users'@'localhost' identified by 'password';
use ecom;

create table products (
	id int auto_increment primary key, 
	name varchar(255) not null,
	email varchar(255) not null,
	price int(255) not null,
	image varchar(255) not null,	
);
create table carts (
	id int auto_increment primary key, 
	name varchar(255) not null,
	price int(255) not null,
	image varchar(255) not null,
	quantity varchar(255) not null,

);
create table orders (
	id int auto_increment primary key, 
	name varchar(100) not null,
	number varchar(12) not null,
	email varchar(255) not null,
	method varchar(100) not null,
	flat varchar(100) not null,
	street varchar(100) not null,
	city varchar(100) not null,
	state varchar(100) not null,
	country varchar(100) not null,
	pin_code int(10) not null,
    totoal_products varchar(255) not null,
	totoal_price varchar(255) not null,
);