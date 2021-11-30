-- Solutions are downstairs, line 73

create schema if not exists `tt` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
use tt;

DROP TABLE IF EXISTS students;
CREATE TABLE students (
  student_id serial primary key,
  name VARCHAR(255),
  surname VARCHAR(255),
  group_name VARCHAR(255)
);

DROP TABLE IF EXISTS exams;
CREATE TABLE exams (
  id serial primary key,
  student_id INT,
  exam_name VARCHAR(255),
  result int
);

INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('John', 'Windsy', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Mark', 'Carlson', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Jenny', 'Watson', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Greg', 'Miller', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Annet', 'Worsberry', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Karl', 'Sagan', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Nill', 'Ceffry', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Mike', 'Thron', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Sercy', 'Borlowich', '2');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Andrew', 'Weygan', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Ashly', 'Holmes', '1');
INSERT INTO `tt`.`students` (`name`, `surname`, `group_name`) VALUES ('Ann', 'Kinningston', '1');

INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('1', 'Math', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('1', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('1', 'Physics', '3');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('2', 'Math', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('2', 'Literature', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('2', 'Physics', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('3', 'Math', '2');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('3', 'Literature', '2');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('3', 'Physics', '2');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('4', 'Math', '2');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('4', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('4', 'Physics', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('5', 'Math', '3');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('5', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('5', 'Physics', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('6', 'Math', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('6', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('6', 'Physics', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('7', 'Math', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('7', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('7', 'Physics', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('8', 'Math', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('8', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('8', 'Physics', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('9', 'Math', '2');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('9', 'Literature', '2');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('9', 'Physics', '2');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('10', 'Math', '3');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('10', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('10', 'Physics', '3');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('11', 'Math', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('11', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('11', 'Physics', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('12', 'Math', '4');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('12', 'Literature', '5');
INSERT INTO `tt`.`exams` (`student_id`, `exam_name`, `result`) VALUES ('12', 'Physics', '3');


SELECT students.name, students.surname, exams.student_id FROM exams
	inner join students on students.student_id = exams.student_id where result < 3
	GROUP BY exams.student_id
	HAVING count(exams.student_id) > 2;
    
    
select group_name from students 
	group by group_name
    having count(group_name) > 10;