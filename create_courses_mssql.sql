USE School;

DROP TABLE IF EXISTS course;

DROP TABLE IF EXISTS student;

DROP TABLE IF EXISTS assignment;

CREATE TABLE course (
    id          INT         NOT NULL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
)

CREATE TABLE student (
    id          INT         NOT NULL PRIMARY KEY,
    last_name   VARCHAR(20) NOT NULL,
    first_name  VARCHAR(20) NOT NULL
)

CREATE TABLE assignment (
    id              INT         NOT NULL PRIMARY KEY,
    assignment_name VARCHAR(20) NOT NULL,
    due_date        DATETIME    NOT NULL,
    submit_date     DATETIME    NOT NULL,
    grade           DECIMAL     NOT NULL,
    course_id       INT         NOT NULL,
    student_id      INT         NOT NULL,
)
-- could also use TRUNCATE TABLE instead of DROP / CREATE
INSERT INTO course (id,course_name) 
VALUES (1,'Math'),
       (2,'Science'),
       (3,'Social Studies'),
	   (4,'English')

INSERT INTO student (id, last_name,first_name)
VALUES (1,'Joe','Bobby'),
	   (2,'Smith','Joe'),
	   (3,'Winkle','Perry'),
	   (4,'Legend','Iam'),
	   (5,'Mary','Poppins'),
	   (6,'Bell','Tinker')

DECLARE @today DATETIME = GETDATE();

INSERT INTO assignment (id,assignment_name,due_date,submit_date,grade,course_id,student_id)
VALUES (1,'math 1',           @today, DATEADD(DAY, +30, @today),  40, 1, 1),
	   (2,'math 2',           @today, DATEADD(DAY, +11, @today),  50, 1, 2),
	   (3,'science 1',        @today, DATEADD(DAY,  -1, @today),  60, 2, 3),
	   (4,'science 2',        @today, DATEADD(DAY,  -1, @today),  80, 2, 4),
	   (5,'social studies 1', @today, DATEADD(DAY, +15, @today),  65, 3, 5),
	   (6,'social studies 2', @today, DATEADD(DAY,  +9, @today),  90, 3, 6),
	   (7,'english 1',        @today, DATEADD(DAY,  +5, @today), 100, 4, 3),
	   (8,'english 2',        @today, DATEADD(DAY, +50, @today),  85, 4, 6)


