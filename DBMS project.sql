drop database hostel_room_allocation;
create database hostel_room_allocation;
use hostel_room_allocation;
CREATE TABLE student_Information (
    roll_Number INT PRIMARY KEY not null,
    sname VARCHAR(255) not null ,
    gender VARCHAR(10) not null,
    department VARCHAR(255) not null,
    spassword VARCHAR(256) not null,
    batch INT not null
   );

CREATE TABLE rooms(
    room_Number INT not null,
	occupancy_Status VARCHAR(20) not null,
    floor INT not null,
    room_Capacity INT not null,
    hostel_Type varchar(20) not null,
    primary key(room_Number,hostel_type)
);

CREATE TABLE allocated_Rooms(
    roll_Number INT not null,
    room_Number INT not null,
    hostel_type varchar(20) not null,
	move_In_Date DATE,
    move_Out_Date DATE,
    FOREIGN KEY (roll_number) REFERENCES student_Information(roll_Number),
    FOREIGN KEY (room_Number) REFERENCES rooms(room_Number),
    PRIMARY KEY (roll_Number,room_Number)
);

CREATE TABLE roommate_Assignment(
    student1_roll_Number INT not null,
    student2_roll_Number INT not null,
    room_Number INT not null,
	effective_From_Date DATE not null,
    effective_To_Date DATE,
    hostel_type varchar(20),
    FOREIGN KEY (student1_roll_Number) REFERENCES student_Information(roll_Number),
    FOREIGN KEY (student2_roll_Number) REFERENCES student_Information(roll_Number),
    FOREIGN KEY (room_Number) REFERENCES rooms(room_Number),
    primary key(student1_roll_Number,student2_roll_Number)
);
drop table complaints;
CREATE TABLE complaints (
    student_name varchar(20) not null,
	student_Roll_Number INT  not null,
    complaint_description TEXT not null,
    complaint_Status VARCHAR(20) not null,
    FOREIGN KEY (student_roll_Number) REFERENCES student_Information(roll_Number)
);

INSERT INTO rooms VALUES
(1, 'Vacant', 1, 2, 'Boys Hostel'),
(2, 'Vacant', 1, 2, 'Boys Hostel'),
(3, 'Vacant', 1, 2, 'Boys Hostel'),
(4, 'Vacant', 1, 2, 'Boys Hostel'),
(5, 'Vacant', 1, 2, 'Boys Hostel'),
(6, 'Vacant', 1, 2, 'Boys Hostel'),
(7, 'Vacant', 1, 2, 'Boys Hostel'),
(8, 'Vacant', 1, 2, 'Boys Hostel'),
(9, 'Vacant', 1, 2, 'Boys Hostel'),
(10, 'Vacant', 1, 2, 'Boys Hostel'),
(11, 'Vacant', 1, 2, 'Boys Hostel'),
(12, 'Vacant', 1, 2, 'Boys Hostel'),
(13, 'Vacant', 1, 2, 'Boys Hostel'),
(14, 'Vacant', 1, 2, 'Boys Hostel'),
(15, 'Vacant', 1, 2, 'Boys Hostel'),
(16, 'Vacant', 1, 2, 'Boys Hostel'),
(17, 'Vacant', 1, 2, 'Boys Hostel'),
(18, 'Vacant', 1, 2, 'Boys Hostel'),
(19, 'Vacant', 1, 2, 'Boys Hostel'),
(20, 'Vacant', 1, 2, 'Boys Hostel'),
(21, 'Vacant', 2, 2, 'Boys Hostel'),
(22, 'Vacant', 2, 2, 'Boys Hostel'),
(23, 'Vacant', 2, 2, 'Boys Hostel'),
(24, 'Vacant', 2, 2, 'Boys Hostel'),
(25, 'Vacant', 2, 2, 'Boys Hostel'),
(26, 'Vacant', 2, 2, 'Boys Hostel'),
(27, 'Vacant', 2, 2, 'Boys Hostel'),
(28, 'Vacant', 2, 2, 'Boys Hostel'),
(29, 'Vacant', 2, 2, 'Boys Hostel'),
(30, 'Vacant', 2, 2, 'Boys Hostel'),
(31, 'Vacant', 2, 2, 'Boys Hostel'),
(32, 'Vacant', 2, 2, 'Boys Hostel'),
(33, 'Vacant', 2, 2, 'Boys Hostel'),
(34, 'Vacant', 2, 2, 'Boys Hostel'),
(35, 'Vacant', 2, 2, 'Boys Hostel'),
(36, 'Vacant', 2, 2, 'Boys Hostel'),
(37, 'Vacant', 2, 2, 'Boys Hostel'),
(38, 'Vacant', 2, 2, 'Boys Hostel'),
(39, 'Vacant', 2, 2, 'Boys Hostel'),
(40, 'Vacant', 2, 2, 'Boys Hostel'),
(41, 'Vacant', 3, 2, 'Boys Hostel'),
(42, 'Vacant', 3, 2, 'Boys Hostel'),
(43, 'Vacant', 3, 2, 'Boys Hostel'),
(44, 'Vacant', 3, 2, 'Boys Hostel'),
(45, 'Vacant', 3, 2, 'Boys Hostel'),
(46, 'Vacant', 3, 2, 'Boys Hostel'),
(47, 'Vacant', 3, 2, 'Boys Hostel'),
(48, 'Vacant', 3, 2, 'Boys Hostel'),
(49, 'Vacant', 3, 2, 'Boys Hostel'),
(50, 'Vacant', 3, 2, 'Boys Hostel'),
(51, 'Vacant', 3, 2, 'Boys Hostel'),
(52, 'Vacant', 3, 2, 'Boys Hostel'),
(53, 'Vacant', 3, 2, 'Boys Hostel'),
(54, 'Vacant', 3, 2, 'Boys Hostel'),
(55, 'Vacant', 3, 2, 'Boys Hostel'),
(56, 'Vacant', 3, 2, 'Boys Hostel'),
(57, 'Vacant', 3, 2, 'Boys Hostel'),
(58, 'Vacant', 3, 2, 'Boys Hostel'),
(59, 'Vacant', 3, 2, 'Boys Hostel'),
(60, 'Vacant', 3, 2, 'Boys Hostel'),
(1, 'Vacant', 1, 2, 'Girls Hostel'),
(2, 'Vacant', 1, 2, 'Girls Hostel'),
(3, 'Vacant', 1, 2, 'Girls Hostel'),
(4, 'Vacant', 1, 2, 'Girls Hostel'),
(5, 'Vacant', 1, 2, 'Girls Hostel'),
(6, 'Vacant', 1, 2, 'Girls Hostel'),
(7, 'Vacant', 1, 2, 'Girls Hostel'),
(8, 'Vacant', 1, 2, 'Girls Hostel'),
(9, 'Vacant', 1, 2, 'Girls Hostel'),
(10, 'Vacant', 1, 2, 'Girls Hostel'),
(11, 'Vacant', 1, 2, 'Girls Hostel'),
(12, 'Vacant', 1, 2, 'Girls Hostel'),
(13, 'Vacant', 1, 2, 'Girls Hostel'),
(14, 'Vacant', 1, 2, 'Girls Hostel'),
(15, 'Vacant', 1, 2, 'Girls Hostel'),
(16, 'Vacant', 1, 2, 'Girls Hostel'),
(17, 'Vacant', 1, 2, 'Girls Hostel'),
(18, 'Vacant', 1, 2, 'Girls Hostel'),
(19, 'Vacant', 1, 2, 'Girls Hostel'),
(20, 'Vacant', 1, 2, 'Girls Hostel'),
(21, 'Vacant', 2, 2, 'Girls Hostel'),
(22, 'Vacant', 2, 2, 'Girls Hostel'),
(23, 'Vacant', 2, 2, 'Girls Hostel'),
(24, 'Vacant', 2, 2, 'Girls Hostel'),
(25, 'Vacant', 2, 2, 'Girls Hostel'),
(26, 'Vacant', 2, 2, 'Girls Hostel'),
(27, 'Vacant', 2, 2, 'Girls Hostel');
 
CREATE TABLE roommate_request (
    student_name VARCHAR(255),
    student_roll_Number INT,
    new_Roommate_Roll INT,
    request_description TEXT,
    request_Status VARCHAR(20),
    PRIMARY KEY (student_roll_Number, new_Roommate_Roll)
);

DROP PROCEDURE IF EXISTS handle_roommate_requests;
DELIMITER //

CREATE PROCEDURE handle_roommate_requests()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE r1 INT;
    DECLARE r2 INT;
    DECLARE room_num INT;
    DECLARE gender1 VARCHAR(10);
    DECLARE gender2 VARCHAR(10);
    DECLARE hostel_type1 VARCHAR(20);
    DECLARE hostel_type2 VARCHAR(20);

    DECLARE request_cursor CURSOR FOR
        SELECT student_roll_Number, new_Roommate_Roll
        FROM roommate_request
        WHERE request_Status = 'pending'
        ORDER BY student_roll_Number, new_Roommate_Roll;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    START TRANSACTION;

    OPEN request_cursor;

    read_loop: LOOP
        FETCH request_cursor INTO r1, r2;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Check if both students have requested each other as new roommates
        IF (SELECT COUNT(*) FROM roommate_request WHERE student_roll_Number = r1 AND new_Roommate_Roll = r2 AND request_Status = 'pending') > 0
           AND (SELECT COUNT(*) FROM roommate_request WHERE student_roll_Number = r2 AND new_Roommate_Roll = r1 AND request_Status = 'pending') > 0 THEN

            -- Retrieve genders of both students
            SELECT gender INTO gender1 FROM student_Information WHERE roll_Number = r1;
            SELECT gender INTO gender2 FROM student_Information WHERE roll_Number = r2;

            -- Determine the hostel type based on the student's gender
            SET hostel_type1 = CASE gender1 WHEN 'Male' THEN 'Boys Hostel' ELSE 'Girls Hostel' END;
            SET hostel_type2 = CASE gender2 WHEN 'Male' THEN 'Boys Hostel' ELSE 'Girls Hostel' END;

            -- Check if both students have the same gender and hostel type
            IF gender1 = gender2 AND hostel_type1 = hostel_type2 THEN
                -- Check if both students are not already allocated a room
                IF (SELECT COUNT(*) FROM allocated_Rooms WHERE roll_Number = r1) = 0 AND (SELECT COUNT(*) FROM allocated_Rooms WHERE roll_Number = r2) = 0 THEN
                    -- Allocate a new room for both students in the appropriate hostel
                    SELECT room_Number
                    INTO room_num
                    FROM rooms
                    WHERE occupancy_Status = 'Vacant'
                        AND hostel_type = hostel_type1
                    LIMIT 1;

                    -- Update room availability status
                    UPDATE rooms
                    SET occupancy_Status = 'Occupied'
                    WHERE room_Number = room_num
                        AND hostel_type = hostel_type1;

                    -- Insert room allocation into allocated_Rooms table
                    INSERT INTO allocated_Rooms (roll_Number, room_Number, hostel_type, move_In_Date)
                    VALUES (r1, room_num, hostel_type1, CURDATE()),
                           (r2, room_num, hostel_type2, CURDATE());

                    -- Insert new roommate assignment
                    INSERT INTO roommate_Assignment (student1_roll_Number, student2_roll_Number, room_Number, effective_From_Date, hostel_type)
                    VALUES (r1, r2, room_num, CURDATE(), hostel_type1);

                    -- Update request status to 'Approved' for both students
                    UPDATE roommate_request
                    SET request_Status = 'Approved'
                    WHERE (student_roll_Number = r1 AND new_Roommate_Roll = r2)
                       OR (student_roll_Number = r2 AND new_Roommate_Roll = r1)
                       AND request_Status = 'pending';
                END IF;
            END IF;
        END IF;
    END LOOP;

    CLOSE request_cursor;
    COMMIT;
END //

DELIMITER ;

CALL handle_roommate_requests();

CREATE TABLE room_Cleaning_Schedule (
    schedule_ID INT PRIMARY KEY not null,
    room_Number INT not null,
    hostel_type varchar(20),
    cleaning_day varchar(20),
    cleaning_Status VARCHAR(20) not null,
    FOREIGN KEY (room_Number) REFERENCES rooms(room_Number)
  );

INSERT INTO room_Cleaning_Schedule (schedule_ID, room_Number, hostel_type, cleaning_day, cleaning_Status)
SELECT
    ROW_NUMBER() OVER () AS schedule_ID,
    room_Number,
    hostel_Type,
    CASE 
        WHEN hostel_Type = 'Boys Hostel' AND floor = 1 THEN 'Monday'
        WHEN hostel_Type = 'Boys Hostel' AND floor = 2 THEN 'Tuesday'
        WHEN hostel_Type = 'Boys Hostel' AND floor = 3 THEN 'Wednesday'
        WHEN hostel_Type = 'Girls Hostel' AND floor = 1 THEN 'Thursday'
        WHEN hostel_Type = 'Girls Hostel' AND floor = 2 THEN 'Friday'
        WHEN hostel_Type = 'Girls Hostel' AND floor = 3 THEN 'Saturday'
        ELSE 'Invalid'
    END AS cleaning_day,
    'Pending' AS cleaning_Status
FROM rooms;


UPDATE room_Cleaning_Schedule rcs
    JOIN rooms r ON rcs.room_Number = r.room_Number and rcs.hostel_Type = r.hostel_Type
    SET rcs.cleaning_day = 
      CASE 
          WHEN r.hostel_Type = 'Boys Hostel' AND r.floor = 1 THEN 'Monday'
          WHEN r.hostel_Type = 'Boys Hostel' AND r.floor = 2 THEN 'Tuesday'
          WHEN r.hostel_Type = 'Boys Hostel' AND r.floor = 3 THEN 'Wednesday'
          WHEN r.hostel_Type = 'Girls Hostel' AND r.floor = 1 THEN 'Thursday'
          WHEN r.hostel_Type = 'Girls Hostel' AND r.floor = 2 THEN 'Friday'
          WHEN r.hostel_Type = 'Girls Hostel' AND r.floor = 3 THEN 'Saturday'
          ELSE 'Invalid'
      END,
      rcs.cleaning_Status = 
      CASE 
          WHEN DAYOFWEEK(CURDATE()) > 
               CASE 
                   WHEN rcs.cleaning_day = 'Monday' THEN 2
                   WHEN rcs.cleaning_day = 'Tuesday' THEN 3
                   WHEN rcs.cleaning_day = 'Wednesday' THEN 4
                   WHEN rcs.cleaning_day = 'Thursday' THEN 5
                   WHEN rcs.cleaning_day = 'Friday' THEN 6
                   WHEN rcs.cleaning_day = 'Saturday' THEN 7
                   ELSE 1 -- Default for 'Invalid'
               END THEN 'Completed'
          ELSE 'Pending'
      END;
drop table roommate_Request;

create table warden
( username varchar(20),
spassword varchar(256),
hostel_Type varchar(20));

INSERT INTO warden 
VALUES ('Sumit Mishra', '3caeb1fe9939783e2a8f3649df883ff935b2e4bfa66cd08bc258e169f686d692','Boys Hostel'),
('Rusha Patra','1e91794853ef3013a3a7f4eefaf3d6549668ebed2543bc60e03563f8dcb7dc3e','Girls Hostel');




