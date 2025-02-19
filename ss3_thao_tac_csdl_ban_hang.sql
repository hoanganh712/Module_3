-- Sử dụng cơ sở dữ liệu ss3_thao_tac_csdl_ban_hang --
USE ss3_thao_tac_csdl_ban_hang;

-- Thêm dữ liệu vào bảng Customer
INSERT INTO Customer (cID, cName, cAge) VALUES 
    (1, 'Minh Quan', 10),
    (2, 'Ngoc Oanh', 20),
    (3, 'Hong Ha', 50);

-- Thêm dữ liệu vào bảng Order
INSERT INTO `Order` (oID, cID, oDate, oPrice) VALUES
    (1, 1, '2006-3-21', NULL),
    (2, 2, '2006-3-23', NULL),
    (3, 1, '2006-3-16', NULL);

-- Thêm dữ liệu vào bảng Product
INSERT INTO Product (pID, pName, pPrice) VALUES
    (1, 'May Giat', 3),
    (2, 'Tu Lanh', 5),
    (3, 'Dieu Hoa', 7),
    (4, 'Quat', 1),
    (5, 'Bep dien', 2);

-- Thêm dữ liệu vào bảng OrderDetail
INSERT INTO OrderDetail (oID, pID, odQTY) VALUES
    (1, 1, 3),
    (1, 3, 7),
    (1, 4, 2),
    (2, 1, 1),
    (3, 1, 8),
    (2, 5, 4),
    (2, 3, 3);
