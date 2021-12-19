DROP TABLE IF EXISTS `Application`;
CREATE TABLE `Application` (
  `Application_id` int(100) NOT NULL AUTO_INCREMENT,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Application_id`),
  KEY `Student_id` (`Student_id`),
  KEY `Hostel_id` (`Hostel_id`),
  CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `Student` (`Student_id`),
  CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`)
);

--
-- Dumping data for table `Application`
--

LOCK TABLES `Application` WRITE;

INSERT INTO `Application` VALUES (1,'B160497CS',1,1,NULL,'I am a handicapped, so I would like to have a room at ground floor ');

UNLOCK TABLES;
