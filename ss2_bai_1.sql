create database if not exists ss2_bai_1;
use ss2_bai_1;
-- tao bang --
create table phieuxuat (
    sopx int auto_increment primary key,
    ngayxuat date
);

create table vattu (
    mavtu int auto_increment primary key,
    tenvtu varchar(255) not null,
    dgnhap double,
    slnhap int
);

create table phieunhap (
    sopn int auto_increment primary key,
    ngaynhap date
);

create table dondh (
    sodh int auto_increment primary key,
    ngaydh date,
    mancc int,
    foreign key (mancc) references nhacc(mancc)
);

create table nhacc (
    mancc int auto_increment primary key,
    tenncc varchar(255),
    diachi varchar(255),
    sdt varchar(20)
);

create table chitietphieuxuat (
    sopx int,
    mavtu int,
    dgxuat double,
    slxuat int,
    primary key (sopx, mavtu),
    foreign key (sopx) references phieuxuat(sopx),
    foreign key (mavtu) references vattu(mavtu)
);

create table chitietphieunhap (
    sopn int,
    mavtu int,
    dgnhap double,
    slnhap int,
    primary key (sopn, mavtu),
    foreign key (sopn) references phieunhap(sopn),
    foreign key (mavtu) references vattu(mavtu)
);

create table chitietdondathang (
    sodh int,
    mavtu int,
    primary key (sodh, mavtu),
    foreign key (sodh) references dondh(sodh),
    foreign key (mavtu) references vattu(mavtu)
);

create table cungcap (
    mancc int,
    mavtu int,
    primary key (mancc, mavtu),
    foreign key (mancc) references nhacc(mancc),
    foreign key (mavtu) references vattu(mavtu)
);
