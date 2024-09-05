/*
SQLyog Ultimate v9.63 
MySQL - 5.5.24-log : Database - humaira_hrsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`humaira_hrsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `humaira_hrsystem`;

/*Table structure for table `departmentdetails` */

DROP TABLE IF EXISTS `departmentdetails`;

CREATE TABLE `departmentdetails` (
  `Department_ID` int(25) DEFAULT NULL,
  `Department_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departmentdetails` */

insert  into `departmentdetails`(`Department_ID`,`Department_Name`) values (1,'Academic'),(2,'Non-Academic'),(3,'IT'),(4,'HR'),(5,'Marketing'),(6,'Finance'),(8,'Marketing'),(8,'IT 2');

/*Table structure for table `designationdetails` */

DROP TABLE IF EXISTS `designationdetails`;

CREATE TABLE `designationdetails` (
  `Employee_Name` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `designationdetails` */

insert  into `designationdetails`(`Employee_Name`,`Designation`) values ('Asna','IT Specialist'),('Aruna','Lecturer'),('Ayna','Assistant Lecturer'),('Nimal','Accountant'),('Saman Perera','IT Assistant'),('Sadun','HR Assistant');

/*Table structure for table `employeedetails` */

DROP TABLE IF EXISTS `employeedetails`;

CREATE TABLE `employeedetails` (
  `Designation` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `NIC` varchar(12) DEFAULT NULL,
  `Contact_No` varchar(10) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `EPF_No` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employeedetails` */

insert  into `employeedetails`(`Designation`,`Name`,`Age`,`Gender`,`Address`,`NIC`,`Contact_No`,`Department`,`EPF_No`) values ('IT Specialist','Asna',23,'Female','32,Old Tangalle Rd, Matara','199535962312','0772582766','IT ',1110),('Assistant','Ayna',18,'Female','20, New Street, Matara','200515235648','0772544015','Academic',1120),('Lecturer','Aruna',27,'Male','12,Sambodi MW,Matara','200356125489','0772564596','Academic',1130),('Accountant','Nimal',27,'Male','12,Park Rd,Colombo-04','199625635456','0772568956','Finance',1140),('Servant','Kusuma',46,'Female','5,Maddawatta,Matara','197345625896','0772582766','Non-Academic',1150),('Intern','Sadun Gamage',20,'Male','5,Park Street,Colombo-07','200056985632','0778524561','Marketing',1160),('Assistant','Ahamed',20,'Male','25,waidiya rd, Dehiwala','200315624856','0772582766','Finance',1170),('Lecturer','Rusliya',41,'Female','32,Old tangalle rd, matara','200045623655','0772659863','Academic',1180);

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `Employee_Type` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert  into `userdetails`(`Employee_Type`,`Username`,`Password`) values ('HR Manager','SadunMGR','MGR456'),('HR Assistant','KalumAS','AS789'),('HR Assistant','Humi','366');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
