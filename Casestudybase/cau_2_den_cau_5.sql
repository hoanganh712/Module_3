create database if not exists cau_2_den_cau_5;
use cau_2_den_cau_5;
SELECT * FROM nhan_vien
WHERE (ho_ten LIKE 'H%' OR ho_ten LIKE 'T%' OR ho_ten LIKE 'K%')
AND LENGTH(ho_ten) <= 15;
SELECT * FROM khach_hang
WHERE TIMESTAMPDIFF(YEAR, ngay_sinh, CURDATE()) BETWEEN 18 AND 50
AND (dia_chi = 'Đà Nẵng' OR dia_chi = 'Quảng Trị');
SELECT kh.ho_ten, COUNT(hd.id) AS so_lan_dat_phong
FROM khach_hang kh
JOIN hop_dong hd ON kh.id = hd.khach_hang_id
JOIN loai_khach lk ON kh.loai_khach_id = lk.id
WHERE lk.ten_loai_khach = 'Diamond'
GROUP BY kh.ho_ten
ORDER BY so_lan_dat_phong ASC;
SELECT kh.id AS ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.id AS ma_hop_dong, dv.ten_dich_vu, hd.ngay_bat_dau AS ngay_lam_hop_dong, hd.ngay_ket_thuc,
    (dv.chi_phi_thue + COALESCE(hdct.so_luong * dvdk.gia_tien, 0)) AS tong_tien
FROM khach_hang kh
LEFT JOIN hop_dong hd ON kh.id = hd.khach_hang_id
LEFT JOIN hop_dong_chi_tiet hdct ON hd.id = hdct.hop_dong_id
LEFT JOIN dich_vu_di_kem dvdk ON hdct.dich_vu_di_kem_id = dvdk.id
LEFT JOIN dich_vu dv ON dv.id = hdct.dich_vu_id
LEFT JOIN loai_khach lk ON kh.loai_khach_id = lk.id;
