create database users;
use users;

create table userShop (
	id int auto_increment primary key,
    userName varchar(50),
    total_orders int 
);

SELECT *,
CASE 
	WHEN total_order IS NULL THEN 'Khách mới'
    WHEN total_order > 500 THEN 'Kim cương'
    WHEN total_order BETWEEN 100 AND 500 THEN 'Vàng'
    ELSE 'Silver'
END AS Xep_hang
FROM USERS;

-- Sử dụng case sẽ tự tạo ra 1 cột ảo mới 