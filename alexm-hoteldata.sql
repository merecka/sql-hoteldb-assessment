USE alexmhoteldb;

INSERT INTO `room` VALUES (201,'Double',0,2,4,199.99,10),(202,'Double',1,2,4,174.99,10),(203,'Double',0,2,4,199.99,10),(204,'Double',1,2,4,174.99,10),(205,'Single',0,2,2,174.99,0),(206,'Single',1,2,2,149.99,0),(207,'Single',0,2,2,174.99,0),(208,'Single',1,2,2,149.99,0),(301,'Double',0,2,4,199.99,10),(302,'Double',1,2,4,174.99,10),(303,'Double',0,2,4,199.99,10),(304,'Double',1,2,4,174.99,10),(305,'Single',0,2,2,174.99,0),(306,'Single',1,2,2,149.99,0),(307,'Single',0,2,2,174.99,0),(308,'Single',1,2,2,149.99,0),(401,'Suite',1,3,8,399.99,20),(402,'Suite',1,3,8,399.99,20);

INSERT INTO `guest` VALUES (1,'Alex','Merecka','123 Some Street','Houston','TX','77006','713-123-4567'),(2,'Mack','Simmer','379 Old Shore Street','Council Bluffs','IA','51501','291-553-0508'),(3,'Bettyann','Seery','750 Wintergreen Dr.','Wasilla','AK','99654','478-277-9632'),(4,'Duane','Cullison','9662 Foxrun Lane','Harlingen','TX','78552','308-494-0198'),(5,'Karie','Yang','9378 W. Augusta Ave.','West Deptford','NJ','8096','214-730-0298'),(6,'Aurore','Lipton','762 Wild Rose Street','Saginaw','MI','48601','377-507-0974'),(7,'Zachery','Luechtefeld','7 Poplar Dr.','Arvada','CO','80003','814-485-2615'),(8,'Jeremiah','Pendergrass','70 Oakwood St.','Zion','IL','60099','279-491-0960'),(9,'Walter','Holaway','7556 Arrowhead St.','Cumberland','RI','2864','446-396-6785'),(10,'Wilfred','Vise','77 West Surrey Street','Oswego','NY','13126','834-727-1001'),(11,'Maritza','Tilton','939 Linda Rd.','Burke','VA','22015','446-351-6860'),(12,'Joleen','Tison','87 Queen St.','Drexel Hill','PA','19026','231-893-2755');

INSERT INTO `reservation` VALUES (1,2,1,0,'2023-02-02','2023-02-04',299.98),(2,3,2,1,'2023-02-05','2023-02-10',999.95),(3,4,2,0,'2023-02-22','2023-02-24',349.98),(4,5,2,2,'2023-03-06','2023-03-07',199.99),(5,1,1,1,'2023-03-17','2023-03-20',524.97),(6,6,3,0,'2023-03-18','2023-03-23',924.95),(7,7,2,2,'2023-03-29','2023-03-31',349.98),(8,8,2,0,'2023-03-31','2023-04-05',874.95),(9,9,1,0,'2023-04-09','2023-04-13',799.96),(10,10,1,1,'2023-04-23','2023-04-24',174.99),(11,11,2,4,'2023-05-30','2023-06-02',1199.97),(12,12,2,0,'2023-06-10','2023-06-14',599.96),(13,12,1,0,'2023-06-10','2023-06-14',599.96),(14,6,3,0,'2023-06-17','2023-06-18',184.99),(15,1,2,0,'2023-06-28','2023-07-02',699.96),(16,9,3,1,'2023-07-13','2023-07-14',184.99),(17,10,4,2,'2023-07-18','2023-07-21',1259.97),(18,3,2,1,'2023-07-28','2023-07-29',199.99),(19,3,1,0,'2023-08-30','2023-09-01',349.98),(20,2,2,0,'2023-09-16','2023-09-17',149.99),(21,5,2,2,'2023-09-13','2023-09-15',399.98),(22,4,2,2,'2023-11-22','2023-11-25',1199.97),(23,2,2,0,'2023-11-22','2023-11-25',449.97),(24,2,2,2,'2023-11-22','2023-11-25',599.97),(25,11,2,0,'2023-12-24','2023-12-28',699.96);

INSERT INTO `amenities` VALUES ('Jacuzzi',25.00),('Microwave',0.00),('Oven',0.00),('Refrigerator',0.00);

INSERT INTO `roomreservation` VALUES (1,1,308),(2,2,203),(3,3,305),(4,4,201),(5,5,307),(6,6,302),(7,7,202),(8,8,304),(9,9,301),(10,10,207),(11,11,401),(12,12,206),(13,13,208),(14,14,304),(15,15,205),(16,16,204),(17,17,401),(18,18,303),(19,19,305),(20,20,208),(21,21,203),(22,22,401),(23,23,206),(24,24,301),(25,25,302);

INSERT INTO `roomamenities` VALUES (201,'Microwave'),(201,'Jacuzzi'),(202,'Refrigerator'),(203,'Microwave'),(203,'Jacuzzi'),(204,'Refrigerator'),(205,'Microwave'),(205,'Refrigerator'),(205,'Jacuzzi'),(206,'Microwave'),(206,'Refrigerator'),(207,'Microwave'),(207,'Refrigerator'),(207,'Jacuzzi'),(208,'Microwave'),(208,'Refrigerator'),(301,'Microwave'),(301,'Jacuzzi'),(302,'Refrigerator'),(303,'Microwave'),(303,'Jacuzzi'),(304,'Refrigerator'),(305,'Microwave'),(305,'Refrigerator'),(305,'Jacuzzi'),(306,'Microwave'),(306,'Refrigerator'),(307,'Microwave'),(307,'Refrigerator'),(307,'Jacuzzi'),(308,'Microwave'),(308,'Refrigerator'),(401,'Microwave'),(401,'Refrigerator'),(401,'Oven'),(402,'Microwave'),(402,'Refrigerator'),(402,'Oven');

SET SQL_SAFE_UPDATES = 0;

DELETE FROM RoomReservation WHERE ReservationId = 8;

DELETE FROM reservation WHERE GuestId = 8;

DELETE FROM guest WHERE GuestId = 8;

SET SQL_SAFE_UPDATES = 1;