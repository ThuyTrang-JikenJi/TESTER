-- Question 2: lấy ra tất cả các phòng ban
SELECT *
FROM department;
-- Question 3: lấy ra id của phòng ban "Sale"
SELECT department_id
FROM department
WHERE department_name = 'Sale';
-- Question 4: lấy ra thông tin account có full name dài nhất và sắp xếp chúng theo thứ tự giảm dần
SELECT *
FROM `account`
WHERE CHAR_length(fullname) = (SELECT MAX(CHAR_LENGTH(fullname))
                          FROM `account`) ;
-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id= 3
SELECT *
FROM `account`
WHERE CHAR_length(fullname) = (SELECT MAX(CHAR_LENGTH(fullname))
                          FROM `account`) AND department_id =3;
-- Question 6: lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT *
FROM `group`
WHERE create_date <= '2016-05-01';

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời
SELECT *, COUNT(answer_id) as soluongcautraloi
FROM `Answer`
Group by (question_id)
having count(answer_id) >=4;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT *
FROM exam
WHERE Duration >= '01:00:00' and create_date < '2020-09-03';
-- Question 9: Lấy ra 5 group được tạo gần đây nhất
SELECT *
FROM `group`
ORDER BY  create_date  desc
LIMIT 5;
-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT *, COUNT(department_id)
FROM account
WHERE department_id='2';
-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "N" và kết thúc bằng chữ "g"
SELECT *
FROM `account`
WHERE  fullname like 'N%g' ;
-- Question 12: xóa tất cả các exam được tạo trước ngày 20/12/2019
DELETE 
FROM exam
WHERE create_date < '2020-08-03';
-- Question 13: xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
DELETE 
FROM Question
WHERE content like 'Java%';
-- Question 14: update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `Account`
SET fullname ='Nguyễn Bá Lộc',
	email ='loc.nguyenba@vti.com.vn'
WHERE account_id = 5;
-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE `Account`
SET department_id = 4
WHERE account_id = 5;

SELECT *
FROM `account`;
SELECT *
FROM Question






