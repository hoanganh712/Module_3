create database if not exists cau_1;
use cau_1;
-- Thêm thông tin cho bảng vi_tri
INSERT INTO vi_tri (id, ten_vi_tri) VALUES
(1, 'Lễ tân'),
(2, 'Phục vụ'),
(3, 'Chuyên viên'),
(4, 'Giám sát'),
(5, 'Quản lý'),
(6, 'Giám đốc');

-- Thêm thông tin cho bảng trinh_do
INSERT INTO trinh_do (id, ten_trinh_do) VALUES
(1, 'Đại học'),
(2, 'Đại học'),
(3, 'Đại học'),
(4, 'Đại học');

-- Thêm thông tin cho bảng bo_phan
INSERT INTO bo_phan (id, ten_bo_phan) VALUES
(1, 'Sale - Marketing'),
(2, 'Hành Chính'),
(3, 'Phục vụ'),
(4, 'Quản lý');

-- Thêm thông tin cho bảng nhan_vien
INSERT INTO nhan_vien (id, ho_ten, ngay_sinh, so_cmnd, so_dt, email, trinh_do_id, vi_tri_id, bo_phan_id, luong) VALUES
(1, 'Nguyen Van Trung', '08-03-1997', '123456789', '0123456789', 'trung@example.com', 3, 1, 2, 10000000),
(2, 'Tran Thi Thu', '20-10-1998', '234567890', '0987654321', 'thu@example.com', 2, 2, 3, 8000000),
(3, 'Hoang Thi Loan', '27-07-1999', '345678901', '0912345678', 'loan@example.com', 4, 4, 1, 15000000);

-- Thêm thông tin cho bảng loai_khach
INSERT INTO loai_khach (id, ten_loai_khach) VALUES
(1, 'Diamond'),
(2, 'Platinium'),
(3, 'Gold'),
(4, 'Silver'),
(5, 'Member');

-- Thêm thông tin cho bảng khach_hang
INSERT INTO khach_hang (id, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dt, email, dia_chi, loai_khach_id) VALUES
(1, 'Nguyen Hoang Anh', '07-12-2002', 'Nam', '456789012', '0934567890', 'anh@example.com', 'Hà Nội ', 1),
(2, 'Pham Phu Duc', '19-11-2002', 'Nam', '567890123', '0945678901', 'duc@example.com', 'Hà Nội', 2),
(3, 'Nguyen Tuan Khai', '21-02-2002', 'Nam', '678901234', '0956789012', 'khai@example.com', 'Hà Nội', 1);

-- Thêm thông tin cho bảng hop_dong
INSERT INTO hop_dong (id, so_hop_dong, ngay_bat_dau, ngay_ket_thuc, so_tien_coc, tong_tien_thanh_toan, khach_hang_id) VALUES
(1, 'HD001', '01-02-2025', '06-02-2025', 1000000, 5000000, 1),
(2, 'HD002', '02-03-2025', '05-03-2025', 3000000, 5000000, 3);

-- Thêm thông tin cho bảng kieu_thue
INSERT INTO kieu_thue (id, ten_kieu_thue) VALUES
(1, 'Theo giờ'),
(2, 'Theo ngày'),
(3, 'Theo tháng'),
(4, 'Theo năm');

-- Thêm thông tin cho bảng dich_vu
INSERT INTO dich_vu (id, ten_dich_vu, dien_tich_su_dung, chi_phi_thue, so_luong_nguoi_toi_da, kieu_thue_id) VALUES
(1, 'Villa', 200.5, 3000000, 6, 4),
(2, 'House', 100.0, 2000000, 4, 3),
(3, 'Room', 30.0, 500000, 2, 2);

-- Thêm thông tin cho bảng dich_vu_di_kem
INSERT INTO dich_vu_di_kem (id, ten_dich_vu, don_vi, gia_tien) VALUES
(1, 'Massage', 'Lần', 500000),
(2, 'Karaoke', 'Giờ', 300000),
(3, 'Thuê xe', 'Ngày', 1000000);

-- Thêm thông tin cho bảng hop_dong_chi_tiet
INSERT INTO hop_dong_chi_tiet (id, hop_dong_id, dich_vu_di_kem_id, so_luong) VALUES
(1, 1, 1, 2),
(2, 1, 2, 3),
(3, 2, 3, 1);
