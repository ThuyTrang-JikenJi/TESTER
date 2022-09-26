SELECT *
FROM `account`;

SELECT *
FROM `account`
WHERE  department_id is null ;
-- username LIKE 'm%'/ '    : không chắc chắn chữ gì, giống như chữ 
-- biết choinhs xác thì dùng dấu "=" thay like

-- dieu kien where
-- department_id  IN(2,7) : chonj 2 hoac 7
-- department_id  NOT IN(2,7) : khong chonj 2 hoac 7
-- department_id  >=3 and department_id  <=5 
-- department_id BETWEEN 3 and 5
SELECT *
FROM `account`
order by account_id desc;
-- department_id asc tăng dần 
--  desc    giảm dần
-- timnhs toán
SELECT count(1) -- đếm xem có bao nhiêu bản ghi(khác null)
FROM `account`
order by account_id desc;
-- count(*) -- đếm xem có bao nhiêu bản ghi( khi nào null hết thì dừng)

SELECT sum(position_id)
FROM `account`;
SELECT min(position_id)
FROM `account`;
SELECT max(position_id)
FROM `account`;
SELECT avg(position_id) -- tính trung bình
FROM `account`


-- GROUP BY: NHONMS HAY DÙNG ĐỂ TÍNH COUNT(THUOCTINH) as "HAHA": ĐẶT TÊN CHO CỘT, BẢNG
-- LIMIT 5; GIỚI HẠN SỐ BẢN GHI
-- 
UPDATE `department`
SET department_name = 'Sale' --- THAY DDỔI DỮ LIỆU MỚI LÀ GÌ
WHERE department_id = '1';
-- XÓA 
DELETE 
FROM `department`
WHERE department_id = '6'