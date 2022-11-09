create database incarddb;
use incarddb;

create table `customer` (
	`cust_id` varchar(20) not null,
	`cust_pw` varchar(20) not null,
	`cust_name` varchar(20) not null,
	`cust_email` varchar(20) not null,
	`cust_tel` varchar(20) not null,
    primary key (`cust_id`)
);

insert into `customer` values('cust', '123', '홍길동', 'abcd123@naver.com', '010-1234-5678');