create database if not exists ss3_truy_van_du_lieu_sv;
use ss3_truy_van_du_lieu_sv;

create table class (
    id int primary key auto_increment,
    name varchar(100) not null,
    start_date date,
    status int
);

create table teacher (
     id int primary key auto_increment,
     name varchar(100) not null,
     age int not null check(age > 0),
     country varchar(100) not null
);

create table student (
    id int primary key auto_increment,
    name varchar(100) not null,
    address varchar(255),
    phone varchar(15),
    status int,
    class_id int,
    foreign key (class_id) references class(id)
);

create table subject (
    id int primary key auto_increment,
    name varchar(100) not null,
    credit int not null,
    status int
);

create table mark (
    id int primary key auto_increment,
    subject_id int,
    student_id int,
    mark int,
    exam_times int,
    foreign key (subject_id) references subject(id),
    foreign key (student_id) references student(id)
);
insert into class (name, start_date, status) values
('b1', '19-11-2002', 1),
('b2', '22-02-2002', 2),
('c3', '15-7-2002', 3);

insert into student (name, address, phone, status, class_id) values
('hung', 'ha noi', '098765432', 1, 1),
('duc', 'ha noi', 0973338001, 1, 2),
('khai', 'ha noi', '098734562', 1, 3);