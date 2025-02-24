create database if not exists cau_6_den_cau_8;
use cau_6_den_cau_8;
SELECT dv.id AS ma_dich_vu, dv.ten_dich_vu, dv.dien_tich_su_dung AS dien_tich, dv.chi_phi_thue, lvdv.ten_loai_dich_vu
FROM dich_vu dv
LEFT JOIN loai_dich_vu lvdv ON dv.loai_dich_vu_id = lvdv.id
LEFT JOIN hop_dong_chi_tiet hdct ON dv.id = hdct.dich_vu_id
LEFT JOIN hop_dong hd ON hd.id = hdct.hop_dong_id AND hd.ngay_bat_dau BETWEEN '2021-01-01' AND '2021-03-31'
WHERE hd.id IS NULL;
SELECT dv.id AS ma_dich_vu, dv.ten_dich_vu, dv.dien_tich_su_dung AS dien_tich, dv.so_luong_nguoi_toi_da AS so_nguoi_toi_da, dv.chi_phi_thue, lvdv.ten_loai_dich_vu
FROM dich_vu dv
LEFT JOIN loai_dich_vu lvdv ON dv.loai_dich_vu_id = lvdv.id
WHERE dv.id IN (
    SELECT DISTINCT dv.id
    FROM dich_vu dv
    JOIN hop_dong_chi_tiet hdct ON dv.id = hdct.dich_vu_id
    JOIN hop_dong hd ON hd.id = hdct.hop_dong_id
    WHERE hd.ngay_bat_dau BETWEEN '2020-01-01' AND '2020-12-31'
) AND dv.id NOT IN (
    SELECT DISTINCT dv.id
    FROM dich_vu dv
    JOIN hop_dong_chi_tiet hdct ON dv.id = hdct.dich_vu_id
    JOIN hop_dong hd ON hd.id = hdct.hop_dong_id
    WHERE hd.ngay_bat_dau BETWEEN '2021-01-01' AND '2021-12-31'
);
SELECT DISTINCT ho_ten FROM khach_hang;
