CREATE DATABASE projectdatabase;

USE projectdatabase;

CREATE TABLE `category` (
  `catid` int NOT NULL AUTO_INCREMENT,
  `catnm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `college` (
  `clid` int NOT NULL AUTO_INCREMENT,
  `clnm` varchar(50) DEFAULT NULL,
  `ct_catid` int DEFAULT NULL,
  `descrip` varchar(500) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `pic` blob,
  PRIMARY KEY (`clid`),
  KEY `FK1186t4o6kh8liex1sld0nnwbr` (`ct_catid`),
  CONSTRAINT `FK1186t4o6kh8liex1sld0nnwbr` FOREIGN KEY (`ct_catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


delimiter $$
create procedure collegebycategory(in catid int)
begin

select * from college cl inner join category c where c.catid = cl.ct_catid and c.catid = catid;

end$$
delimiter $$;

call collegebycategory(1);


CREATE TABLE `collegebycategory` (
  `clid` int NOT NULL,
  `catid` int NOT NULL,
  `catnm` varchar(255) DEFAULT NULL,
  `descrip` varchar(255) DEFAULT NULL,
  `pic` blob,
  `location` varchar(50) DEFAULT NULL,
  `clnm` varchar(255) DEFAULT NULL,
  `seats` int NOT NULL,
  PRIMARY KEY (`clid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `projectdatabase`.`services` (
  `serviceid` INT NOT NULL AUTO_INCREMENT,
  `servicename` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`serviceid`));


CREATE TABLE `contact` (
  `contactid` int NOT NULL AUTO_INCREMENT,
  `contactname` varchar(50) DEFAULT NULL,
  `sr_serviceid` int DEFAULT NULL,
  `ct_catid` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`contactid`),
  KEY `FK1186t4o6kh8liex1sld0nnubr` (`sr_serviceid`),
  CONSTRAINT `FK1186t4o6kh8liex1sld0nnubr` FOREIGN KEY (`sr_serviceid`) REFERENCES `services` (`serviceid`),
   KEY `FK1186t4o6kh8liex1sld0nmwbr` (`ct_catid`),
  CONSTRAINT `FK1186t4o6kh8liex1sld0nmwbr` FOREIGN KEY (`ct_catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `courses` (
  `crid` int NOT NULL AUTO_INCREMENT,
  `crnm` varchar(50) DEFAULT NULL,
  `ct_catid` int DEFAULT NULL,
  `cl_clid` int DEFAULT NULL,
  `descrip` varchar(500) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `pic` blob,
  PRIMARY KEY (`crid`),
  KEY `FK1186t4o6kh8liex1sld2nnwbr` (`ct_catid`),
  CONSTRAINT `FK1186t4o6kh8liex1sld2nnwbr` FOREIGN KEY (`ct_catid`) REFERENCES `category` (`catid`),
  KEY `FK1186t4o6kh8liex1sld1nnwbr` (`cl_clid`),
  CONSTRAINT `FK1186t4o6kh8liex1sld1nnwbr` FOREIGN KEY (`cl_clid`) REFERENCES `college` (`clid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


delimiter $$
create procedure coursebycategory(in catid int)
begin

select * from courses cr inner join category c where c.catid = cr.ct_catid and c.catid = catid;

end$$
delimiter $$;

call coursebycategory(1);


CREATE TABLE `coursebycategory` (
  `crid` int NOT NULL,
  `catid` int NOT NULL,
  `catnm` varchar(255) DEFAULT NULL,
  `descrip` varchar(255) DEFAULT NULL,
  `pic` blob,
  `crnm` varchar(255) DEFAULT NULL,
  `seats` int NOT NULL,
  PRIMARY KEY (`crid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;