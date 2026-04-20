create database users;
use users;

create table userShop (
	id int auto_increment primary key,
    userName varchar(50),
    total_orders int 
);

INSERT INTO userShop (userName, total_orders) VALUES
('Dat', 600),
('An', 250),
('Binh', 50),
('Cuong', NULL),
('Dung', 0),
('Huy', 120),
('Khanh', 800);

SELECT *,
CASE 
	WHEN total_orders IS NULL THEN 'Khách mới'
    WHEN total_orders > 500 THEN 'Kim cương'
    WHEN total_orders BETWEEN 100 AND 500 THEN 'Vàng'
    ELSE 'Silver'
END AS Xep_hang
FROM userShop;
