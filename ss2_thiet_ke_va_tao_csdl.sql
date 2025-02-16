create database if not exists ss2_thiet_ke_va_tao_csdl;
use ss2_thiet_ke_va_tao_csdl;

create table customer (
    cid bigint auto_increment primary key,
    cname varchar(255) not null,
    cage int not null
);

create table product (
    pid bigint auto_increment primary key,
    pname varchar(255) not null,
    pprice double not null
);

create table orders (
    oid bigint auto_increment primary key,
    cid bigint not null,
    ototalprice double not null,
    foreign key (cid) references customer(cid)
);

create table orderdetail (
    odid bigint auto_increment primary key,
    oid bigint not null,
    pid bigint not null,
    odqty int not null,
    foreign key (oid) references orders(oid),
    foreign key (pid) references product(pid)
);
