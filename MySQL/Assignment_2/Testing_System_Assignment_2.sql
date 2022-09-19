DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE  Department(
 department_id       TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 department_name   	 VARCHAR(30) UNIQUE KEY
);

CREATE TABLE  `Position`(
position_id         TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
position_name       ENUM('Nhân viên bán hàng','Nhân viên thu ngân','Nhân viên chăm sóc khách hàng','Quản lý nhân sự',
                        'Nhân viên kỹ thuật','Quản lý kỹ thuật','Nhân viên kế toán','Trưởng phòng kế toán',
                       'Phó phòng kế toán','Dev','Tester','PM') 
);

CREATE TABLE   `Account`(
account_id     	 INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email         	 VARCHAR(50) UNIQUE KEY,
username       	 VARCHAR(30) UNIQUE KEY,
fullname       	 VARCHAR(30),
department_id    TINYINT UNSIGNED,
position_id      TINYINT UNSIGNED,
createDate    	 DATE ,

FOREIGN KEY (department_id) REFERENCES Department (department_id),
FOREIGN KEY (position_id) REFERENCES `Position` (position_id)
);

CREATE TABLE   `Group`(
group_id             SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
group_name      	 VARCHAR(30) UNIQUE KEY ,
creator_id     	     INT UNSIGNED,
create_date          DATE,

FOREIGN KEY  (creator_id) REFERENCES `Account`(account_id)
);

CREATE TABLE  GroupAccount(
group_id         SMALLINT UNSIGNED ,
account_id       INT UNSIGNED,
join_date        DATE,

PRIMARY KEY(group_id,account_id),
FOREIGN KEY  (group_id) REFERENCES `Group`(group_id),
FOREIGN KEY  (account_id) REFERENCES `Account`(account_id)
);

CREATE TABLE  TypeQuestion(
type_id         MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name       ENUM('Essay', 'Multiple-Choice') UNIQUE KEY
);

CREATE TABLE  CategoryQuestion(
category_id         SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_name       VARCHAR(30) UNIQUE KEY
);

CREATE TABLE Question(
question_id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content       VARCHAR(30) ,
category_id   SMALLINT UNSIGNED,
type_id       MEDIUMINT UNSIGNED,
creator_id    INT UNSIGNED,
create_date   DATE,

FOREIGN KEY (category_id) REFERENCES CategoryQuestion (category_id),
FOREIGN KEY (type_id) REFERENCES TypeQuestion(type_id),
FOREIGN KEY (creator_id) REFERENCES `Account` (account_id)
);

CREATE TABLE Answer(
answer_id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content       VARCHAR(30),
question_id   INT UNSIGNED,
is_correct    ENUM('true','fail') ,  -- BOOLEAN

FOREIGN KEY (question_id) REFERENCES Question  (question_id)
);

CREATE TABLE Exam(
exam_id    	SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`code`   	VARCHAR(10) UNIQUE KEY,
Title       VARCHAR(50), 
category_id SMALLINT UNSIGNED,
Duration    TIME,
creator_id  INT UNSIGNED,
create_date DATE,

FOREIGN KEY (category_id) REFERENCES CategoryQuestion (category_id),
FOREIGN KEY (creator_id) REFERENCES `Account` (account_id)
);

CREATE TABLE ExamQuestion(
exam_id 	SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
question_id INT UNSIGNED,

FOREIGN KEY (question_id) REFERENCES Question  (question_id)
);



                        
                        
                        
                        