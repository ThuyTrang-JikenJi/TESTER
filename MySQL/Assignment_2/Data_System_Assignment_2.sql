
INSERT INTO Department  (department_id,department_name) 
VALUES
						(1,N'Phòng Marketing'),
	                    (2,N'Hành chính'),
						(3,N'Nhân sự'),
						(4,N'Kỹ thuật'),
						(5,N'Tài chính'),
                        (6,N'Công nghệ thông tin');
						
INSERT INTO `Position`  (position_id,position_name) 
VALUES
						(1,N'Nhân viên bán hàng'),
						(2,N'Nhân viên thu ngân'),
						(3,N'Nhân viên chăm sóc khách hàng'),
						(4,N'Quản lý nhân sự'),
                        (5,N'Nhân viên kỹ thuật'),
						(6,N'Quản lý kỹ thuật'),
						(7,N'Nhân viên kế toán'),
                        (8,N'Trưởng phòng kế toán'),
                        (9,N'Phó phòng kế toán'),
						(10,N'Dev'),
                        (11,N'Tester'),
						(12,N'PM');                        
                        
 INSERT INTO `Account`  (account_id,email,username,fullname,department_id,position_id,createDate) 
VALUES
						(1,'minhhang123@gmail.com',N'Minh Hằng',N'Nguyễn Minh Hằng',1,1, '2010-03-01'),
						(2,'anan000@gmail.com',N'An An',N'Huỳnh Nguyễn An An',2,2, '2010-04-01'),
						(3,'minhquan@gmail.com',N'Minh Quân',N'Nguyễn Minh Quân',3,3, '2011-03-11'),
                        (4,'ansuong@gmail.com',N'An Sương',N'Nguyễn An Sương',4,4, '2012-03-21'),
						(5,'binhan000@gmail.com',N'Bình An',N'Phan Bình An',5,5, '2011-07-01'),
						(6,'phuongnga@gmail.com',N'Phương Nga',N'Nguyễn Phương Nga',6,6, '2011-03-21'),
                        (7,'myanh@gmail.com',N'Mỹ Anh',N'Chu Mỹ Anh',1,7, '2011-08-21'),
						(8,'thanhthanh@gmail.com',N'Thanh Thanh',N'Nguyễn Thanh Thanh',2,8, '2014-03-01'),
						(9,'kieuanh@gmail.com',N'Kiều Anh',N'Hà Kiều Anh',3,9, '2013-03-22'),
						(10,'giabao@gmail.com',N'Gia Bảo',N'Nguyễn Gia Bảo',4,10, '2015-03-06'),
                        (11,'khoa12345h@gmail.com',N'Khoa',N'Nguyễn Thanh Khoa',5,11, '2013-03-01'),
						(12,'thuylinh@gmail.com',N'Thùy Linh',N'Nguyễn Thị Thùy Linh',6,12, '2012-03-01');

INSERT INTO `Group`   (group_id,group_name,creator_id,create_date) 
VALUES
						(1,'Nhóm 1',1,'2015-06-01'),
						(2,'Nhóm 2',2,'2016-05-01'),
						(3,'Nhóm 3',3,'2014-04-01'),
						(4,'Nhóm 4',4,'2017-03-01'),
                        (5,'Nhóm 5',5,'2016-03-01'),
                        (6,'Nhóm 6',6,'2017-03-01');
                        
 INSERT INTO GroupAccount (group_id,account_id,join_date)
VALUES 
                        (1,1,'2014-02-26'),
						(2,2,'2017-11-12'),
						(3,3,'2018-01-03'),
						(4,4,'2016-10-11'),
                        (5,5,'2018-01-01'),
                        (6,6,'2019-12-21'),
						(1,7,'2020-02-26'),
						(2,8,'2017-11-12'),
						(3,9,'2019-01-03'),
						(4,10,'2016-10-11'),
                        (5,11,'2018-01-01'),
                        (6,2,'2019-12-21');
                        
INSERT INTO TypeQuestion  (type_id,type_name)
VALUES
						(1,'Essay'),
						(2,'Multiple-Choice');
                        
INSERT INTO CategoryQuestion   (category_id,category_name)
VALUES
								(1,'Java'),
								(2,'Python'),
								(3,'JS'),
								(4,'MySQL'),
                                (5,'MVC');
                                
INSERT INTO Question (question_id,content,category_id,type_id,creator_id,create_date)
VALUES

					(1,N'Java là gì',1,1,10,'2020-08-21'),
					(2,N'Python là gì',2,2,5,'2020-02-11'),
                    (3,N'Js là gì',3,1,7,'2020-01-30'),
                    (4,N'MySQL là gì',4,2,4,'2020-08-17'),
                    (5,N'MVC là gì',5,1,12,'2020-08-20');
                    
INSERT INTO `Answer` (answer_id,content,question_id,is_correct)
VALUES
					(1,N'là ngôn ngữ tiếng việt',1,'fail'),
                    (2,N'là ngôn ngữ lập trình',2,'true'),
                    (3,N'Là ngôn ngữ tiếng anh',3,'fail'),
                    (4,N'Truy vấn cơ sở dữ liệu',4,'true'),
                    (5,N'ngôn ngữ lt hướng đối tượng',5,'true');
                    
INSERT INTO Exam (exam_id,`code`,Title,category_id,Duration,creator_id,create_date)
VALUES 
				(1,'C1','Java',1,'01:00:00',1,'2020-07-01'),
                (2,'C2','Python',2,'02:00:00',3,'2020-08-03'),
                (3,'C3','Js',3,'01:30:00',5,'2020-08-03'),
                (4,'C4','MySQL',4,'00:30:00',7,'2020-11-11'),
                (5,'C5','MVC',5,'01:00:00',9,'2020-11-11');
INSERT INTO ExamQuestion	(exam_id,question_id)
VALUES
							(1,1),
                            (2,2),
                            (3,3),
                            (4,4),
                            (5,5);

                        