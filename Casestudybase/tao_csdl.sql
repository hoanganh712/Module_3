create database if not exists tao_csdl;
use tao_csdl;
-- tao bang vi tri --
CREATE TABLE vi_tri (
    id INT PRIMARY KEY,
    ten_vi_tri VARCHAR(50)
);
-- tao bang trinh do --
CREATE TABLE trinh_do (
    id INT PRIMARY KEY,
    ten_trinh_do VARCHAR(50)
);
-- tao bang bo phan --
CREATE TABLE bo_phan (
    id INT PRIMARY KEY,
    ten_bo_phan VARCHAR(50)
);
-- tao bang nhan vien --
CREATE TABLE nhan_vien (
    id INT PRIMARY KEY,
    ho_ten VARCHAR(100),
    ngay_sinh DATE,
    so_cmnd VARCHAR(20),
    so_dt VARCHAR(15),
    email VARCHAR(100),
    trinh_do_id INT,
    vi_tri_id INT,
    bo_phan_id INT,
    luong DECIMAL(15, 2),
    FOREIGN KEY (trinh_do_id) REFERENCES trinh_do(id),
    FOREIGN KEY (vi_tri_id) REFERENCES vi_tri(id),
    FOREIGN KEY (bo_phan_id) REFERENCES bo_phan(id)
);
-- tao bang loai khach hang -- 
CREATE TABLE loai_khach (
    id INT PRIMARY KEY,
    ten_loai_khach VARCHAR(50)
);
-- tao bang khach hang --
CREATE TABLE khach_hang (
    id INT PRIMARY KEY,
    ho_ten VARCHAR(100),
    ngay_sinh DATE,
    gioi_tinh VARCHAR(10),
    so_cmnd VARCHAR(20),
    so_dt VARCHAR(15),
    email VARCHAR(100),
    dia_chi VARCHAR(200),
    loai_khach_id INT,
    FOREIGN KEY (loai_khach_id) REFERENCES loai_khach(id)
);
-- tao bang hop dong --
CREATE TABLE hop_dong (
    id INT PRIMARY KEY,
    so_hop_dong VARCHAR(50),
    ngay_bat_dau DATE,
    ngay_ket_thuc DATE,
    so_tien_coc DECIMAL(15, 2),
    tong_tien_thanh_toan DECIMAL(15, 2),
    khach_hang_id INT,
    FOREIGN KEY (khach_hang_id) REFERENCES khach_hang(id)
);
-- tao bang dich vu --
CREATE TABLE dich_vu (
    id INT PRIMARY KEY,
    ten_dich_vu VARCHAR(100),
    dien_tich_su_dung DECIMAL(10, 2),
    chi_phi_thue DECIMAL(15, 2),
    so_luong_nguoi_toi_da INT,
    kieu_thue_id INT,
    FOREIGN KEY (kieu_thue_id) REFERENCES kieu_thue(id)
);
-- tao bang dich vu di kem -- 
CREATE TABLE dich_vu_di_kem (
    id INT PRIMARY KEY,
    ten_dich_vu VARCHAR(100),
    don_vi VARCHAR(50),
    gia_tien DECIMAL(15, 2)
);
-- tao bang kieu thue --
CREATE TABLE kieu_thue (
    id INT PRIMARY KEY,
    ten_kieu_thue VARCHAR(50)
);
-- tao bang hop dong chi tiet --
CREATE TABLE hop_dong_chi_tiet (
    id INT PRIMARY KEY,
    hop_dong_id INT,
    dich_vu_di_kem_id INT,
    so_luong INT,
    FOREIGN KEY (hop_dong_id) REFERENCES hop_dong(id),
    FOREIGN KEY (dich_vu_di_kem_id) REFERENCES dich_vu_di_kem(id)
);
