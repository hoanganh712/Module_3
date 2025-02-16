-- tao csdl---
create database if not exists ss1_quan_ly_sinh_vien;
use quan_ly_sinh_vien
-- tao bang  --
create table Class(
	id int primary key auto_increment,
    `name` varchar(100) not null default("abc")
);
create table Teacher(
	id int primary key auto_increment,
    `name` varchar(100) not null default("abc"),
    age int(5)
);