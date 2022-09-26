SELECT *
FROM `account` A -- BANGR TRAI
LEFT JOIN `group` G on A.account_id = G.creator_id;
-- BANG PHAI
-- UNION ALL: GOP KET QUA 2 CAU SELECT LAI - BI TRUNG
-- UNION : GOP LAIJ - NHUNG K BI TRUNG



-- Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT account_id, fullname, A.department_id, department_name
FROM `account` A 
LEFT JOIN department D on A.department_id = D.department_id;
-- uestion 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010
SELECT *
FROM `account` A 
WHERE createDate > '2012-03-21';
-- Question 3: Viết lệnh để lấy ra tất cả các developer
SELECT account_id, fullname, A.department_id, department_name
FROM `account` A 
JOIN department D on A.department_id = D.department_id
WHERE  department_name ='Công nghệ thông tin';
-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT D.department_id, D.department_name, count(account_id) as 'So luong nhan vien'
FROM department D
JOIN `account` A  on A.department_id = D.department_id
GROUP BY D.department_id
HAVING count(account_id) >= 2;
-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
SELECT *
FROM examquestion eq
JOIN exam e  on q.question_id = eq.question_id
 GROUP BY 	EQ.question_id
 HAVING count(question_id);
-- Question 9: Thống kê số lượng account trong mỗi group
SELECT *, count(GA.account_id) as 'So nhan vien'
FROM groupaccount GA 
RIGHT JOIN `group` G on GA.group_id = G.group_id

GROUP BY  GA.group_id;


-- Question 17:
-- a) Lấy các account thuộc nhóm thứ 1
-- b) Lấy các account thuộc nhóm thứ 2
-- c) Ghép 2 kết quả từ câu a) và câu b) sao cho không có record nào trùng nhau

SELECT 		A.account_id, A.fullname, G.group_id
FROM 		GroupAccount G
JOIN 		`Account` A ON A.account_id = G.account_id
WHERE 		G.group_id = 1
UNION
SELECT 		A.account_id, A.fullname, G.group_id
FROM 		GroupAccount G
JOIN 		`Account` A ON A.account_id = G.account_id
WHERE 		G.group_id = 2;
-- Question 18:
-- a) Lấy các group có lớn hơn 5 thành viên  A.account_id, A.fullname, G.group_id
-- b) Lấy các group có nhỏ hơn 7 thành viên
-- c) Ghép 2 kết quả từ câu a) và câu b)
SELECT 		*,COUNT(GA.AccountID)
FROM 		GroupAccount G
JOIN 		`Account` A ON A.account_id = G.account_id
WHERE 		G.group_id = 1



