DROP DATABASE IF EXISTS groupify;

CREATE DATABASE groupify;

USE groupify;

CREATE TABLE students (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE preferences (
  id int NOT NULL AUTO_INCREMENT,
  from_student int NOT NULL,
  to_student int NOT NULL,
  preference_type ENUM("YES", "NO", "VETO") NOT NULL,
  PRIMARY KEY (ID)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < schema.sql
 *  to create the database and the tables.*/

/* For the record, these preferences were generated randomly.
 * Please don't read into them. :) */

INSERT INTO students (id, name) VALUES (1, "Albrey");
INSERT INTO students (id, name) VALUES (2, "Allen");
INSERT INTO students (id, name) VALUES (3, "Asif");
INSERT INTO students (id, name) VALUES (4, "Beth");
INSERT INTO students (id, name) VALUES (5, "Cody");
INSERT INTO students (id, name) VALUES (6, "Dan");
INSERT INTO students (id, name) VALUES (7, "Fred");
INSERT INTO students (id, name) VALUES (8, "Hailey");
INSERT INTO students (id, name) VALUES (9, "Heather");
INSERT INTO students (id, name) VALUES (10, "Joel");
INSERT INTO students (id, name) VALUES (11, "John");
INSERT INTO students (id, name) VALUES (12, "Kan");
INSERT INTO students (id, name) VALUES (13, "Linden");
INSERT INTO students (id, name) VALUES (14, "Liz");
INSERT INTO students (id, name) VALUES (15, "Magee");
INSERT INTO students (id, name) VALUES (16, "Marcus");
INSERT INTO students (id, name) VALUES (17, "Marlene");
INSERT INTO students (id, name) VALUES (18, "Mohammed");
INSERT INTO students (id, name) VALUES (19, "Mylani");
INSERT INTO students (id, name) VALUES (20, "Omar");
INSERT INTO students (id, name) VALUES (21, "Rebecca");
INSERT INTO students (id, name) VALUES (22, "Robin");
INSERT INTO students (id, name) VALUES (23, "Sophie");
INSERT INTO students (id, name) VALUES (24, "Tom");


INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 2, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 3, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 12, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 13, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 15, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 17, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 19, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 20, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 23, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (1, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 1, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 3, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 12, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 13, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 15, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 19, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 17, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 20, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (2, 22, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 1, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 2, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 12, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 13, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 15, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 17, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 19, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 20, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (3, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 3, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 12, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 23, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (4, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 1, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 2, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 15, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 19, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 20, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 3, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 12, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 13, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (5, 17, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 23, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 2, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 3, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 7, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 9, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 11, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 13, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 17, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 18, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 19, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 20, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (6, 21, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 12, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 2, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 3, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 9, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 11, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 13, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 17, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 18, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 19, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 20, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (7, 21, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 1, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 3, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (8, 17, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (9, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (9, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (9, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (9, 1, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (9, 3, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (9, 13, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 1, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 2, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 12, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 19, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (10, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 19, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 4, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 6, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (11, 22, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (12, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (12, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (12, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (12, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (12, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (12, 13, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (12, 19, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 2, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 12, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 17, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (13, 19, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (14, 2, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (14, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (14, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (14, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (14, 20, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (14, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 2, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 6, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (15, 13, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 12, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 11, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (16, 20, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (17, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (17, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (17, 20, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 23, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 12, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (18, 17, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (19, 1, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (19, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (19, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (19, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (19, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (19, 4, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 1, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (20, 11, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 7, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 9, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 18, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 22, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (21, 23, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (22, 6, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (22, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (22, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (22, 11, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (22, 14, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (22, 21, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (22, 24, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (23, 2, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (23, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (23, 5, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (23, 8, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (23, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (23, 16, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (23, 1, "NO");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (24, 4, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (24, 10, "YES");
INSERT INTO preferences (from_student, to_student, preference_type) VALUES (24, 22, "YES");