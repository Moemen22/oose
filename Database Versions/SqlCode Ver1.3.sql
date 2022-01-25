-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 07:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lastverdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activties`
--

CREATE TABLE `activties` (
  `ID` int(255) NOT NULL,
  `Organization_Branch_ID` int(255) NOT NULL,
  `Activites_Type_ID` int(255) NOT NULL,
  `Activites_Date` date NOT NULL,
  `Activites_Expenses` int(255) NOT NULL,
  `Activites_No_Of_Attende` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activties`
--

INSERT INTO `activties` (`ID`, `Organization_Branch_ID`, `Activites_Type_ID`, `Activites_Date`, `Activites_Expenses`, `Activites_No_Of_Attende`) VALUES
(22, 5, 5, '0000-00-00', 200, 20),
(2008, 1, 0, '0000-00-00', 200, 20),
(2009, 2, 6, '0000-00-00', 200, 20);

-- --------------------------------------------------------

--
-- Table structure for table `activties_type`
--

CREATE TABLE `activties_type` (
  `Activites_Type_ID` int(255) NOT NULL,
  `Activites Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activties_type`
--

INSERT INTO `activties_type` (`Activites_Type_ID`, `Activites Type`) VALUES
(5, 'rehla'),
(6, 'toys');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `ID` int(255) NOT NULL,
  `User_Address_ID` int(255) NOT NULL,
  `User_Address_Name` varchar(255) NOT NULL,
  `Parent_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bathroom_details`
--

CREATE TABLE `bathroom_details` (
  `ID` int(255) NOT NULL,
  `Organization_Branch_ID` int(255) NOT NULL,
  `Room_ID` int(255) NOT NULL,
  `Dettol_Usage` varchar(255) NOT NULL,
  `Tissue_Usage` varchar(255) NOT NULL,
  `towels_Usage` varchar(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bathroom_details`
--

INSERT INTO `bathroom_details` (`ID`, `Organization_Branch_ID`, `Room_ID`, `Dettol_Usage`, `Tissue_Usage`, `towels_Usage`, `User_ID`) VALUES
(2008, 1, 0, 'finished', 'finished', 'finished', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bedroom_details`
--

CREATE TABLE `bedroom_details` (
  `ID` int(255) NOT NULL,
  `Organization_Branch_ID` int(255) NOT NULL,
  `Room_ID` int(255) NOT NULL,
  `Room_Type` varchar(255) NOT NULL,
  `Available_Beds` int(255) NOT NULL,
  `Unavailable_Beds` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `case`
--

CREATE TABLE `case` (
  `ID` int(255) NOT NULL,
  `Case_ID` int(255) NOT NULL,
  `Case_address` varchar(255) NOT NULL,
  `Case_FirstName` varchar(255) NOT NULL,
  `Case_LastName` varchar(255) NOT NULL,
  `Case_Type` varchar(255) NOT NULL,
  `Case_Marital_Status` varchar(255) NOT NULL,
  `Case_National_ID` int(255) NOT NULL,
  `Case_Job_Title` varchar(255) NOT NULL,
  `Case_Approval_Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `case_requirments`
--

CREATE TABLE `case_requirments` (
  `Case_ID` int(255) NOT NULL,
  `Case_Criminal_Record` blob NOT NULL,
  `Case_Health_Record` blob NOT NULL,
  `Case_National_ID` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `case_requirments`
--

INSERT INTO `case_requirments` (`Case_ID`, `Case_Criminal_Record`, `Case_Health_Record`, `Case_National_ID`) VALUES
(1, '', '', ''),
(2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customized_report`
--

CREATE TABLE `customized_report` (
  `ID` int(255) NOT NULL,
  `Report_Name` varchar(255) NOT NULL,
  `User_ID` int(255) NOT NULL,
  `SQL_Statement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customized_report`
--

INSERT INTO `customized_report` (`ID`, `Report_Name`, `User_ID`, `SQL_Statement`) VALUES
(2008, 'manager monthly attendence', 2008, '*************\r\n***********\r\n*******\r\n******\r\n**************\r\n************\r\n**********'),
(2009, 'worker monthly performance', 2009, '*************\r\n***********\r\n*******\r\n******\r\n**************\r\n************\r\n**********');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `Sponser_ID` int(255) NOT NULL,
  `Donation_Type` varchar(255) NOT NULL,
  `Donation_Date` date NOT NULL,
  `Donation_Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`Sponser_ID`, `Donation_Type`, `Donation_Date`, `Donation_Quantity`) VALUES
(1, 'visa', '2020-01-24', 2111),
(4, 'cash', '2020-01-01', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_type`
--

CREATE TABLE `equipment_type` (
  `Equipment_Type_ID` int(255) NOT NULL,
  `Equipment_Name` varchar(255) NOT NULL,
  `Equipment_Type_Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment_type`
--

INSERT INTO `equipment_type` (`Equipment_Type_ID`, `Equipment_Name`, `Equipment_Type_Quantity`) VALUES
(2, '*****', 2),
(3, '*****', 2);

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `ID` int(255) NOT NULL,
  `Case_ID` int(255) NOT NULL,
  `Husband_First Name` varchar(255) NOT NULL,
  `Husband_Last Name` varchar(255) NOT NULL,
  `No_Of_Childeren` int(255) NOT NULL,
  `First_Child_Full_Name` varchar(255) NOT NULL,
  `Second_Child_Full_Name` varchar(255) NOT NULL,
  `Third_Child_Full_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`ID`, `Case_ID`, `Husband_First Name`, `Husband_Last Name`, `No_Of_Childeren`, `First_Child_Full_Name`, `Second_Child_Full_Name`, `Third_Child_Full_Name`) VALUES
(2008, 10, '*****', '*****', 2, '*****', '*****', '*****'),
(2009, 11, '*****', '*****', 3, '**********', '*****', '*****');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `ID` int(255) NOT NULL,
  `File_Friendly_Name` varchar(255) NOT NULL,
  `File_Path` varchar(255) NOT NULL,
  `File_Type_ID` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`ID`, `File_Friendly_Name`, `File_Path`, `File_Type_ID`, `User_ID`) VALUES
(2008, 'Cases', 'cases//desktop//*****', 2, 2008),
(2009, 'salaries', 'salaries//desktop//******', 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `file_type`
--

CREATE TABLE `file_type` (
  `File_Type_ID` int(255) NOT NULL,
  `File_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_type`
--

INSERT INTO `file_type` (`File_Type_ID`, `File_Type`) VALUES
(2, 'Cases'),
(3, 'Salaries');

-- --------------------------------------------------------

--
-- Table structure for table `food_type`
--

CREATE TABLE `food_type` (
  `Food_Type_ID` int(255) NOT NULL,
  `Food_Name` varchar(255) NOT NULL,
  `Food_Type_Qunatity` int(255) NOT NULL,
  `Food_Type_Expiration_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_details`
--

CREATE TABLE `kitchen_details` (
  `Organization_Branch_ID` int(255) NOT NULL,
  `Room_ID` int(255) NOT NULL,
  `Room_Type` varchar(255) NOT NULL,
  `Food_Type_ID` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kitchen_details`
--

INSERT INTO `kitchen_details` (`Organization_Branch_ID`, `Room_ID`, `Room_Type`, `Food_Type_ID`, `User_ID`) VALUES
(1, 0, 'Kitchen', 2, 2),
(2, 1, 'kitchen', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`ID`, `Name`) VALUES
(2008, 'Eng'),
(2009, 'Eng');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `User_ID` int(255) NOT NULL,
  `Login_Password` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`User_ID`, `Login_Password`) VALUES
(2008, 2008),
(2009, 2009);

-- --------------------------------------------------------

--
-- Table structure for table `log_transactions`
--

CREATE TABLE `log_transactions` (
  `ID` int(255) NOT NULL,
  `Transaction_Message` text NOT NULL,
  `Status_ID` int(255) NOT NULL,
  `Date_Time_Stamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_transactions`
--

INSERT INTO `log_transactions` (`ID`, `Transaction_Message`, `Status_ID`, `Date_Time_Stamp`, `User_ID`) VALUES
(2008, '*****', 1, '0000-00-00 00:00:00.000000', 2008),
(2009, '*****', 2, '0000-00-00 00:00:00.000000', 2009);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_type`
--

CREATE TABLE `medicine_type` (
  `Medicine_Type_ID` int(255) NOT NULL,
  `Medicine_Type_Name` varchar(255) NOT NULL,
  `Medicine_Type_Qunatity` int(255) NOT NULL,
  `Medicine_Type_Expiration_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine_type`
--

INSERT INTO `medicine_type` (`Medicine_Type_ID`, `Medicine_Type_Name`, `Medicine_Type_Qunatity`, `Medicine_Type_Expiration_Date`) VALUES
(2, '*****', 3, '2022-01-12'),
(3, '*****', 3, '2022-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(255) NOT NULL,
  `Message_Template` text NOT NULL,
  `Type_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `Message_Template`, `Type_ID`) VALUES
(2008, '*****\r\n***************\r\n*****\r\n********************\r\n*****\r\n********************\r\n***************\r\n******************************\r\n**********\r\n***************', 1),
(2009, '*****\r\n***************\r\n*****\r\n********************\r\n*****\r\n********************\r\n***************\r\n******************************\r\n**********\r\n***************', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message_type`
--

CREATE TABLE `message_type` (
  `Type_ID` int(255) NOT NULL,
  `Message_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_type`
--

INSERT INTO `message_type` (`Type_ID`, `Message_Type`) VALUES
(1, 'invoice'),
(2, 'warning');

-- --------------------------------------------------------

--
-- Table structure for table `message_user`
--

CREATE TABLE `message_user` (
  `ID` int(255) NOT NULL,
  `Message_ID` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL,
  `Date_Time_Stamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_user`
--

INSERT INTO `message_user` (`ID`, `Message_ID`, `User_ID`, `Date_Time_Stamp`) VALUES
(2008, 2008, 2008, '0000-00-00 00:00:00.000000'),
(2009, 2009, 2009, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `observing_screens_type`
--

CREATE TABLE `observing_screens_type` (
  `Observing_Screens_Type_ID` int(255) NOT NULL,
  `Observing_Screens_Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `Options_ID` int(255) NOT NULL,
  `Options_Name` varchar(255) NOT NULL,
  `Options_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`Options_ID`, `Options_Name`, `Options_Type`) VALUES
(1, 'fawry', 'digital'),
(2, 'digital wallet', 'digital');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `ID` int(255) NOT NULL,
  `Organization_Branch_ID` int(255) NOT NULL,
  `Case_ID` int(255) NOT NULL,
  `Sponser_ID` int(255) NOT NULL,
  `Orphan_ID` int(255) NOT NULL,
  `Organization_Hotine` int(255) NOT NULL,
  `Organization_Email` varchar(255) NOT NULL,
  `No_Of_Floors` int(255) NOT NULL,
  `No_Bed_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Security_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Bath_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Kitchen_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Storage_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Pharmacy_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Manager_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Waiting_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Mains_Rooms_Per_Floor` int(255) NOT NULL,
  `No_Reciption_Rooms_Per_Floor` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL,
  `Cameras_Per_Floor` int(255) NOT NULL,
  `Fire_Sensors_Per_Floor` int(255) NOT NULL,
  `Putoff_Fire_Buttons_Per_Floor` int(255) NOT NULL,
  `Fire_Horns_Per_Floor` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`ID`, `Organization_Branch_ID`, `Case_ID`, `Sponser_ID`, `Orphan_ID`, `Organization_Hotine`, `Organization_Email`, `No_Of_Floors`, `No_Bed_Rooms_Per_Floor`, `No_Security_Rooms_Per_Floor`, `No_Bath_Rooms_Per_Floor`, `No_Kitchen_Rooms_Per_Floor`, `No_Storage_Rooms_Per_Floor`, `No_Pharmacy_Rooms_Per_Floor`, `No_Manager_Rooms_Per_Floor`, `No_Waiting_Rooms_Per_Floor`, `No_Mains_Rooms_Per_Floor`, `No_Reciption_Rooms_Per_Floor`, `User_ID`, `Cameras_Per_Floor`, `Fire_Sensors_Per_Floor`, `Putoff_Fire_Buttons_Per_Floor`, `Fire_Horns_Per_Floor`) VALUES
(2008, 1, 0, 0, 0, 11, '@', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2008, 0, 0, 0, 0),
(2009, 5, 10, 2, 5, 115, 'org@gmail.com', 6, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 1, 3, 3, 3, 3),
(2010, 2, 1, 1, 1, 1115, 'org1@gmail', 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 2009, 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `organization_maintance`
--

CREATE TABLE `organization_maintance` (
  `Organization_Branch_ID` int(255) NOT NULL,
  `Maintenance_Type` varchar(255) NOT NULL,
  `No_Of_Devices` int(255) NOT NULL,
  `Devices_ID` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization_maintance`
--

INSERT INTO `organization_maintance` (`Organization_Branch_ID`, `Maintenance_Type`, `No_Of_Devices`, `Devices_ID`, `User_ID`) VALUES
(1, 'alert sensor', 3, 22124, 2),
(5, 'camera', 3, 22122, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orphan`
--

CREATE TABLE `orphan` (
  `Orphan_ID` int(255) NOT NULL,
  `Orphan_Health_Record` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orphan`
--

INSERT INTO `orphan` (`Orphan_ID`, `Orphan_Health_Record`) VALUES
(1, ''),
(5, '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `ID` int(255) NOT NULL,
  `Link_Address` varchar(255) NOT NULL,
  `HTML` text NOT NULL,
  `CSS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`ID`, `Link_Address`, `HTML`, `CSS`) VALUES
(2008, 'FirstPage/****/****/***.com', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n	<title>Login V1</title>\r\n	<meta charset=\"UTF-8\">\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<!--===============================================================================================-->	\r\n	<link rel=\"icon\" type=\"image/png\" href=\"images/icons/favicon.ico\"/>\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\r\n<!--===============================================================================================-->	\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\r\n<!--===============================================================================================-->\r\n</head>\r\n<body>\r\n	\r\n	<div class=\"limiter\">\r\n		<div class=\"container-login100\">\r\n			<div class=\"wrap-login100\">\r\n				<div class=\"login100-pic js-tilt\" data-tilt>\r\n					<img src=\"images/img-01.png\" alt=\"IMG\">\r\n				</div>\r\n\r\n				\r\n\r\n					\r\n\r\n					<!--<div class=\"wrap-input100 validate-input\" data-validate = \"Password is required\">\r\n						<input class=\"input100\" type=\"password\" name=\"pass\" placeholder=\"Password\">\r\n						<span class=\"focus-input100\"></span>\r\n						<span class=\"symbol-input100\">\r\n							<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\r\n						</span>\r\n					\r\n					\r\n					\r\n					</div>\r\n					-->\r\n					\r\n					\r\n					<br>\r\n					<br>\r\n					<div class=\"container-login100-form-btn\">\r\n						\r\n					\r\n					Date of Birth: <input type = \"date\"> \r\n					<button  class=\"login100-form-btn\" type=\"submit\" name=\"btn\" >\r\n						<a href = \"Page1.html\">\r\n							Submit\r\n\r\n						</a>	\r\n						if()\r\n					</button>\r\n				 	       </div>\r\n					\r\n					<!--<div class=\"container-login100-form-btn\">\r\n						<button class=\"login100-form-btn\">\r\n							Login\r\n						</button>\r\n					</div>\r\n\r\n					<div class=\"text-center p-t-12\">\r\n						<span class=\"txt1\">\r\n							Forgot\r\n						</span>\r\n						<a class=\"txt2\" href=\"#\">\r\n							Username / Password?\r\n						</a>\r\n					</div>\r\n\r\n					<div class=\"text-center p-t-136\">\r\n						<a class=\"txt2\" href=\"Page2.html\">\r\n							Create your Account\r\n							<i class=\"fa fa-long-arrow-right m-l-5\" aria-hidden=\"true\"></i>\r\n						</a>\r\n					</div>\r\n				-->\r\n				</form>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	\r\n	\r\n\r\n	\r\n<!--===============================================================================================-->	\r\n	<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\r\n<!--===============================================================================================-->\r\n	<script src=\"vendor/bootstrap/js/popper.js\"></script>\r\n	<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n<!--===============================================================================================-->\r\n	<script src=\"vendor/select2/select2.min.js\"></script>\r\n<!--===============================================================================================-->\r\n	<script src=\"vendor/tilt/tilt.jquery.min.js\"></script>\r\n	<script >\r\n		$(\'.js-tilt\').tilt({\r\n			scale: 1.1\r\n		})\r\n	</script>\r\n<!--===============================================================================================-->\r\n	<script src=\"js/main.js\"></script>\r\n\r\n</body>\r\n</html>', '\r\n\r\n\r\n\r\n/*//////////////////////////////////////////////////////////////////\r\n[ FONT ]*/\r\n\r\n@font-face {\r\n  font-family: Poppins-Regular;\r\n  src: url(\'../fonts/poppins/Poppins-Regular.ttf\'); \r\n}\r\n\r\n@font-face {\r\n  font-family: Poppins-Bold;\r\n  src: url(\'../fonts/poppins/Poppins-Bold.ttf\'); \r\n}\r\n\r\n@font-face {\r\n  font-family: Poppins-Medium;\r\n  src: url(\'../fonts/poppins/Poppins-Medium.ttf\'); \r\n}\r\n\r\n@font-face {\r\n  font-family: Montserrat-Bold;\r\n  src: url(\'../fonts/montserrat/Montserrat-Bold.ttf\'); \r\n}\r\n\r\n/*//////////////////////////////////////////////////////////////////\r\n[ RESTYLE TAG ]*/\r\n\r\n* {\r\n	margin: 0px; \r\n	padding: 0px; \r\n	box-sizing: border-box;\r\n}\r\n\r\nbody, html {\r\n	height: 100%;\r\n	font-family: Poppins-Regular, sans-serif;\r\n}\r\n\r\n/*---------------------------------------------*/\r\na {\r\n	font-family: Poppins-Regular;\r\n	font-size: 14px;\r\n	line-height: 1.7;\r\n	color: #666666;\r\n	margin: 0px;\r\n	transition: all 0.4s;\r\n	-webkit-transition: all 0.4s;\r\n  -o-transition: all 0.4s;\r\n  -moz-transition: all 0.4s;\r\n}\r\n\r\na:focus {\r\n	outline: none !important;\r\n}\r\n\r\na:hover {\r\n	text-decoration: none;\r\n  color: #57b846;\r\n}\r\n\r\n/*---------------------------------------------*/\r\nh1,h2,h3,h4,h5,h6 {\r\n	margin: 0px;\r\n}\r\n\r\np {\r\n	font-family: Poppins-Regular;\r\n	font-size: 14px;\r\n	line-height: 1.7;\r\n	color: #666666;\r\n	margin: 0px;\r\n}\r\n\r\nul, li {\r\n	margin: 0px;\r\n	list-style-type: none;\r\n}\r\n\r\n\r\n/*---------------------------------------------*/\r\ninput {\r\n	outline: none;\r\n	border: none;\r\n}\r\n\r\ntextarea {\r\n  outline: none;\r\n  border: none;\r\n}\r\n\r\ntextarea:focus, input:focus {\r\n  border-color: transparent !important;\r\n}\r\n\r\ninput:focus::-webkit-input-placeholder { color:transparent; }\r\ninput:focus:-moz-placeholder { color:transparent; }\r\ninput:focus::-moz-placeholder { color:transparent; }\r\ninput:focus:-ms-input-placeholder { color:transparent; }\r\n\r\ntextarea:focus::-webkit-input-placeholder { color:transparent; }\r\ntextarea:focus:-moz-placeholder { color:transparent; }\r\ntextarea:focus::-moz-placeholder { color:transparent; }\r\ntextarea:focus:-ms-input-placeholder { color:transparent; }\r\n\r\ninput::-webkit-input-placeholder { color: #999999; }\r\ninput:-moz-placeholder { color: #999999; }\r\ninput::-moz-placeholder { color: #999999; }\r\ninput:-ms-input-placeholder { color: #999999; }\r\n\r\ntextarea::-webkit-input-placeholder { color: #999999; }\r\ntextarea:-moz-placeholder { color: #999999; }\r\ntextarea::-moz-placeholder { color: #999999; }\r\ntextarea:-ms-input-placeholder { color: #999999; }\r\n\r\n/*---------------------------------------------*/\r\nbutton {\r\n	outline: none !important;\r\n	border: none;\r\n	background: transparent;\r\n}\r\n\r\nbutton:hover {\r\n	cursor: pointer;\r\n}\r\n\r\niframe {\r\n	border: none !important;\r\n}\r\n\r\n\r\n/*//////////////////////////////////////////////////////////////////\r\n[ Utility ]*/\r\n.txt1 {\r\n  font-family: Poppins-Regular;\r\n  font-size: 13px;\r\n  line-height: 1.5;\r\n  color: #999999;\r\n}\r\n\r\n.txt2 {\r\n  font-family: Poppins-Regular;\r\n  font-size: 13px;\r\n  line-height: 1.5;\r\n  color: #666666;\r\n}\r\n\r\n\r\n/*//////////////////////////////////////////////////////////////////\r\n[ login ]*/\r\n\r\n.limiter {\r\n  width: 100%;\r\n  margin: 0 auto;\r\n}\r\n\r\n.container-login100 {\r\n  width: 100%;  \r\n  min-height: 100vh;\r\n  display: -webkit-box;\r\n  display: -webkit-flex;\r\n  display: -moz-box;\r\n  display: -ms-flexbox;\r\n  display: flex;\r\n  flex-wrap: wrap;\r\n  justify-content: center;\r\n  align-items: center;\r\n  padding: 15px;\r\n  background: #9053c7;\r\n  background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);\r\n  background: -o-linear-gradient(-135deg, #c850c0, #4158d0);\r\n  background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);\r\n  background: linear-gradient(-135deg, #c850c0, #4158d0);\r\n}\r\n\r\n.wrap-login100 {\r\n  width: 960px;\r\n  background: #fff;\r\n  border-radius: 10px;\r\n  overflow: hidden;\r\n\r\n  display: -webkit-box;\r\n  display: -webkit-flex;\r\n  display: -moz-box;\r\n  display: -ms-flexbox;\r\n  display: flex;\r\n  flex-wrap: wrap;\r\n  justify-content: space-between;\r\n  padding: 177px 130px 33px 95px;\r\n}\r\n\r\n/*------------------------------------------------------------------\r\n[  ]*/\r\n.login100-pic {\r\n  width: 316px;\r\n}\r\n\r\n.login100-pic img {\r\n  max-width: 100%;\r\n}\r\n\r\n\r\n/*------------------------------------------------------------------\r\n[  ]*/\r\n.login100-form {\r\n  width: 290px;\r\n}\r\n\r\n.login100-form-title {\r\n  font-family: Poppins-Bold;\r\n  font-size: 24px;\r\n  color: #333333;\r\n  line-height: 1.2;\r\n  text-align: center;\r\n\r\n  width: 100%;\r\n  display: block;\r\n  padding-bottom: 54px;\r\n}\r\n\r\n\r\n/*---------------------------------------------*/\r\n.wrap-input100 {\r\n  position: relative;\r\n  width: 100%;\r\n  z-index: 1;\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.input100 {\r\n  font-family: Poppins-Medium;\r\n  font-size: 15px;\r\n  line-height: 1.5;\r\n  color: #666666;\r\n\r\n  display: block;\r\n  width: 100%;\r\n  background: #e6e6e6;\r\n  height: 50px;\r\n  border-radius: 25px;\r\n  padding: 0 30px 0 68px;\r\n}\r\n\r\n\r\n/*------------------------------------------------------------------\r\n[ Focus ]*/\r\n.focus-input100 {\r\n  display: block;\r\n  position: absolute;\r\n  border-radius: 25px;\r\n  bottom: 0;\r\n  left: 0;\r\n  z-index: -1;\r\n  width: 100%;\r\n  height: 100%;\r\n  box-shadow: 0px 0px 0px 0px;\r\n  color: rgba(87,184,70, 0.8);\r\n}\r\n\r\n.input100:focus + .focus-input100 {\r\n  -webkit-animation: anim-shadow 0.5s ease-in-out forwards;\r\n  animation: anim-shadow 0.5s ease-in-out forwards;\r\n}\r\n\r\n@-webkit-keyframes anim-shadow {\r\n  to {\r\n    box-shadow: 0px 0px 70px 25px;\r\n    opacity: 0;\r\n  }\r\n}\r\n\r\n@keyframes anim-shadow {\r\n  to {\r\n    box-shadow: 0px 0px 70px 25px;\r\n    opacity: 0;\r\n  }\r\n}\r\n\r\n.symbol-input100 {\r\n  font-size: 15px;\r\n\r\n  display: -webkit-box;\r\n  display: -webkit-flex;\r\n  display: -moz-box;\r\n  display: -ms-flexbox;\r\n  display: flex;\r\n  align-items: center;\r\n  position: absolute;\r\n  border-radius: 25px;\r\n  bottom: 0;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 100%;\r\n  padding-left: 35px;\r\n  pointer-events: none;\r\n  color: #666666;\r\n\r\n  -webkit-transition: all 0.4s;\r\n  -o-transition: all 0.4s;\r\n  -moz-transition: all 0.4s;\r\n  transition: all 0.4s;\r\n}\r\n\r\n.input100:focus + .focus-input100 + .symbol-input100 {\r\n  color: #57b846;\r\n  padding-left: 28px;\r\n}\r\n\r\n/*------------------------------------------------------------------\r\n[ Button ]*/\r\n.container-login100-form-btn {\r\n  width: 100%;\r\n  display: -webkit-box;\r\n  display: -webkit-flex;\r\n  display: -moz-box;\r\n  display: -ms-flexbox;\r\n  display: flex;\r\n  flex-wrap: wrap;\r\n  justify-content: center;\r\n  padding-top: 20px;\r\n}\r\n\r\n.login100-form-btn {\r\n  font-family: Montserrat-Bold;\r\n  font-size: 15px;\r\n  line-height: 1.5;\r\n  color: #fff;\r\n  text-transform: uppercase;\r\n\r\n  width: 100%;\r\n  height: 50px;\r\n  border-radius: 25px;\r\n  background: #57b846;\r\n  display: -webkit-box;\r\n  display: -webkit-flex;\r\n  display: -moz-box;\r\n  display: -ms-flexbox;\r\n  display: flex;\r\n  justify-content: center;\r\n  align-items: center;\r\n  padding: 0 25px;\r\n\r\n  -webkit-transition: all 0.4s;\r\n  -o-transition: all 0.4s;\r\n  -moz-transition: all 0.4s;\r\n  transition: all 0.4s;\r\n}\r\n\r\n.login100-form-btn:hover {\r\n  background: #333333;\r\n}\r\n\r\n\r\n\r\n/*------------------------------------------------------------------\r\n[ Responsive ]*/\r\n\r\n\r\n\r\n@media (max-width: 992px) {\r\n  .wrap-login100 {\r\n    padding: 177px 90px 33px 85px;\r\n  }\r\n\r\n  .login100-pic {\r\n    width: 35%;\r\n  }\r\n\r\n  .login100-form {\r\n    width: 50%;\r\n  }\r\n}\r\n\r\n@media (max-width: 768px) {\r\n  .wrap-login100 {\r\n    padding: 100px 80px 33px 80px;\r\n  }\r\n\r\n  .login100-pic {\r\n    display: none;\r\n  }\r\n\r\n  .login100-form {\r\n    width: 100%;\r\n  }\r\n}\r\n\r\n@media (max-width: 576px) {\r\n  .wrap-login100 {\r\n    padding: 100px 15px 33px 15px;\r\n  }\r\n}\r\n\r\n\r\n/*------------------------------------------------------------------\r\n[ Alert validate ]*/\r\n\r\n.validate-input {\r\n  position: relative;\r\n}\r\n\r\n.alert-validate::before {\r\n  content: attr(data-validate);\r\n  position: absolute;\r\n  max-width: 70%;\r\n  background-color: white;\r\n  border: 1px solid #c80000;\r\n  border-radius: 13px;\r\n  padding: 4px 25px 4px 10px;\r\n  top: 50%;\r\n  -webkit-transform: translateY(-50%);\r\n  -moz-transform: translateY(-50%);\r\n  -ms-transform: translateY(-50%);\r\n  -o-transform: translateY(-50%);\r\n  transform: translateY(-50%);\r\n  right: 8px;\r\n  pointer-events: none;\r\n\r\n  font-family: Poppins-Medium;\r\n  color: #c80000;\r\n  font-size: 13px;\r\n  line-height: 1.4;\r\n  text-align: left;\r\n\r\n  visibility: hidden;\r\n  opacity: 0;\r\n\r\n  -webkit-transition: opacity 0.4s;\r\n  -o-transition: opacity 0.4s;\r\n  -moz-transition: opacity 0.4s;\r\n  transition: opacity 0.4s;\r\n}\r\n\r\n.alert-validate::after {\r\n  content: \"\\f06a\";\r\n  font-family: FontAwesome;\r\n  display: block;\r\n  position: absolute;\r\n  color: #c80000;\r\n  font-size: 15px;\r\n  top: 50%;\r\n  -webkit-transform: translateY(-50%);\r\n  -moz-transform: translateY(-50%);\r\n  -ms-transform: translateY(-50%);\r\n  -o-transform: translateY(-50%);\r\n  transform: translateY(-50%);\r\n  right: 13px;\r\n}\r\n\r\n.alert-validate:hover:before {\r\n  visibility: visible;\r\n  opacity: 1;\r\n}\r\n\r\n@media (max-width: 992px) {\r\n  .alert-validate::before {\r\n    visibility: visible;\r\n    opacity: 1;\r\n  }\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `Payment_ID` int(255) NOT NULL,
  `Payment_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`Payment_ID`, `Payment_Name`) VALUES
(1, 'cash'),
(2, 'visa');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_options`
--

CREATE TABLE `payment_method_options` (
  `ID` int(255) NOT NULL,
  `Payment_ID` int(255) NOT NULL,
  `Option_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method_options`
--

INSERT INTO `payment_method_options` (`ID`, `Payment_ID`, `Option_ID`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_option_value`
--

CREATE TABLE `payment_method_option_value` (
  `ID` int(255) NOT NULL,
  `Payment_Option_ID` int(255) NOT NULL,
  `Value` text NOT NULL,
  `Sponser_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method_option_value`
--

INSERT INTO `payment_method_option_value` (`ID`, `Payment_Option_ID`, `Value`, `Sponser_ID`) VALUES
(2008, 1, '*************\r\n***********\r\n*******\r\n******\r\n**************\r\n************\r\n**********', 1),
(2009, 2, '*************\r\n***********\r\n*******\r\n******\r\n**************\r\n************\r\n**********', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_details`
--

CREATE TABLE `pharmacy_details` (
  `Organization_Branch_ID` int(255) NOT NULL,
  `Room_ID` int(255) NOT NULL,
  `Room_Type` varchar(255) NOT NULL,
  `Medicine_Type_ID` int(255) NOT NULL,
  `Equipment_Type_ID` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postiion`
--

CREATE TABLE `postiion` (
  `Position_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postiion`
--

INSERT INTO `postiion` (`Position_ID`) VALUES
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `rendered_payment_type_html`
--

CREATE TABLE `rendered_payment_type_html` (
  `ID` int(255) NOT NULL,
  `HTML` text NOT NULL,
  `Method_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rendered_payment_type_html`
--

INSERT INTO `rendered_payment_type_html` (`ID`, `HTML`, `Method_ID`) VALUES
(2008, '***************\r\n*******\r\n****************\r\n****\r\n****************', 1),
(2009, '***************\r\n*****\r\n******************\r\n***********\r\n****************\r\n**********', 2);

-- --------------------------------------------------------

--
-- Table structure for table `residence`
--

CREATE TABLE `residence` (
  `ID` int(255) NOT NULL,
  `Case_ID` int(255) NOT NULL,
  `Residence_Status` varchar(255) NOT NULL,
  `No_Of_Rooms` int(255) NOT NULL,
  `Monthly_Rent` int(255) NOT NULL,
  `Furniture_Status` varchar(255) NOT NULL,
  `Residence_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ID` int(255) NOT NULL,
  `Organization_Branch_ID` int(255) NOT NULL,
  `Room_Type_ID` int(255) NOT NULL,
  `Floor_No` int(255) NOT NULL,
  `Room_ID` int(255) NOT NULL,
  `No_Of_Used_Lamps` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ID`, `Organization_Branch_ID`, `Room_Type_ID`, `Floor_No`, `Room_ID`, `No_Of_Used_Lamps`, `User_ID`) VALUES
(22, 5, 4, 6, 0, 11, 1),
(2008, 1, 1, 2, 1, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `Room_Type_ID` int(255) NOT NULL,
  `Room_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`Room_Type_ID`, `Room_Type`) VALUES
(4, 'pharma');

-- --------------------------------------------------------

--
-- Table structure for table `security_details`
--

CREATE TABLE `security_details` (
  `Organization_Branch_ID` int(255) NOT NULL,
  `Room_ID` int(255) NOT NULL,
  `Room_Type` varchar(255) NOT NULL,
  `Observing_Screens_Type_ID` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `security_details`
--

INSERT INTO `security_details` (`Organization_Branch_ID`, `Room_ID`, `Room_Type`, `Observing_Screens_Type_ID`, `User_ID`) VALUES
(1, 0, 'Security', 211, 1),
(2, 1, 'security', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sponser`
--

CREATE TABLE `sponser` (
  `Sponser_ID` int(255) NOT NULL,
  `Sponser_First_Name` varchar(255) NOT NULL,
  `Sponser_Last_Name` varchar(255) NOT NULL,
  `Sponser_Donation` varchar(255) NOT NULL,
  `Sponser_National_ID` blob NOT NULL,
  `Sponser_Job_Type` varchar(255) NOT NULL,
  `Organization_Branch_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponser`
--

INSERT INTO `sponser` (`Sponser_ID`, `Sponser_First_Name`, `Sponser_Last_Name`, `Sponser_Donation`, `Sponser_National_ID`, `Sponser_Job_Type`, `Organization_Branch_ID`) VALUES
(1, 'ahmed', 'ahmed', 'cash', '', 'doc', 1),
(2, 'mhmd', 'mhmd', 'visa', '', 'teacher', 5);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `Status_ID` int(255) NOT NULL,
  `Status_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Status_ID`, `Status_Type`) VALUES
(1, '*****'),
(2, '*****');

-- --------------------------------------------------------

--
-- Table structure for table `storage_details`
--

CREATE TABLE `storage_details` (
  `Organization_Branch_ID` int(255) NOT NULL,
  `Room_ID` int(255) NOT NULL,
  `Room_Type` varchar(255) NOT NULL,
  `Storage_Type_ID` int(255) NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `storage_type`
--

CREATE TABLE `storage_type` (
  `Storage_Type_ID` int(255) NOT NULL,
  `Storage_Name` varchar(255) NOT NULL,
  `Storage_Type_Quantity` int(255) NOT NULL,
  `Stock_Expiration_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Theme_HTML` text NOT NULL,
  `Position_ID` int(255) NOT NULL,
  `Parent_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`ID`, `Name`, `Theme_HTML`, `Position_ID`, `Parent_ID`) VALUES
(11, 'First Page', '<?php\r\nrequire_once \"config.php\";\r\n\r\n?>\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n	<title>Login V1</title>\r\n	<meta charset=\"UTF-8\">\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<!--===============================================================================================-->	\r\n	<link rel=\"icon\" type=\"image/png\" href=\"images/icons/favicon.ico\"/>\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\r\n<!--===============================================================================================-->	\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\r\n<!--===============================================================================================-->\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\r\n<!--===============================================================================================-->\r\n</head>\r\n<body>\r\n	\r\n	<div class=\"limiter\">\r\n		<div class=\"container-login100\">\r\n			<div class=\"wrap-login100\">\r\n				<div class=\"login100-pic js-tilt\" data-tilt>\r\n					<img src=\"images/img-01.png\" alt=\"IMG\">\r\n				</div>\r\n\r\n				\r\n\r\n					\r\n\r\n					<!--<div class=\"wrap-input100 validate-input\" data-validate = \"Password is required\">\r\n						<input class=\"input100\" type=\"password\" name=\"pass\" placeholder=\"Password\">\r\n						<span class=\"focus-input100\"></span>\r\n						<span class=\"symbol-input100\">\r\n							<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\r\n						</span>\r\n					\r\n					\r\n					\r\n					</div>\r\n					-->\r\n					\r\n					\r\n					<br>\r\n					<br>\r\n					<div class=\"container-login100-form-btn\">\r\n						\r\n					\r\n					Date of Birth: <input type = \"date\"> \r\n					<button  class=\"login100-form-btn\" type=\"submit\" name=\"btn\" >\r\n						<a href = \"Page1.html\">\r\n							Submit\r\n\r\n						</a>	\r\n						if()\r\n					</button>\r\n				 	       </div>\r\n					\r\n					<!--<div class=\"container-login100-form-btn\">\r\n						<button class=\"login100-form-btn\">\r\n							Login\r\n						</button>\r\n					</div>\r\n\r\n					<div class=\"text-center p-t-12\">\r\n						<span class=\"txt1\">\r\n							Forgot\r\n						</span>\r\n						<a class=\"txt2\" href=\"#\">\r\n							Username / Password?\r\n						</a>\r\n					</div>\r\n\r\n					<div class=\"text-center p-t-136\">\r\n						<a class=\"txt2\" href=\"Page2.html\">\r\n							Create your Account\r\n							<i class=\"fa fa-long-arrow-right m-l-5\" aria-hidden=\"true\"></i>\r\n						</a>\r\n					</div>\r\n				-->\r\n				</form>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	\r\n	\r\n\r\n	\r\n<!--===============================================================================================-->	\r\n	<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\r\n<!--===============================================================================================-->\r\n	<script src=\"vendor/bootstrap/js/popper.js\"></script>\r\n	<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n<!--===============================================================================================-->\r\n	<script src=\"vendor/select2/select2.min.js\"></script>\r\n<!--===============================================================================================-->\r\n	<script src=\"vendor/tilt/tilt.jquery.min.js\"></script>\r\n	<script >\r\n		$(\'.js-tilt\').tilt({\r\n			scale: 1.1\r\n		})\r\n	</script>\r\n<!--===============================================================================================-->\r\n	<script src=\"js/main.js\"></script>\r\n\r\n</body>\r\n</html>', 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `ID` int(255) NOT NULL,
  `Translation_Name` varchar(255) NOT NULL,
  `First_Lang_Code` int(255) NOT NULL,
  `Sec_Lang_Code` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translation`
--

INSERT INTO `translation` (`ID`, `Translation_Name`, `First_Lang_Code`, `Sec_Lang_Code`) VALUES
(2008, 'Eng', 2008, 2008),
(2009, 'Arab', 2009, 2009);

-- --------------------------------------------------------

--
-- Table structure for table `translation_details`
--

CREATE TABLE `translation_details` (
  `ID` int(255) NOT NULL,
  `Trans_ID` int(255) NOT NULL,
  `Word_ID` int(255) NOT NULL,
  `Trans_Word_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translation_details`
--

INSERT INTO `translation_details` (`ID`, `Trans_ID`, `Word_ID`, `Trans_Word_ID`) VALUES
(2008, 2008, 2008, 2008),
(2009, 2009, 2009, 2009);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `User_Type_ID` int(255) NOT NULL,
  `User_Type_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`User_Type_ID`, `User_Type_Name`) VALUES
(20, 'doc2'),
(22, 'Doc');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(255) NOT NULL,
  `User_Type_ID` int(255) NOT NULL,
  `User_Email` varchar(255) NOT NULL,
  `User_First_Name` varchar(255) NOT NULL,
  `User_Last_Name` varchar(255) NOT NULL,
  `User_Address_ID` int(255) NOT NULL,
  `User_Phone_No` int(255) NOT NULL,
  `User_National_ID` int(255) NOT NULL,
  `User_DOB` date NOT NULL,
  `User_Shift` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `Created_At` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `Updated_At` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `Is_Deleted` tinyint(1) NOT NULL,
  `Last_Updated` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `Organization_Branch_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_Type_ID`, `User_Email`, `User_First_Name`, `User_Last_Name`, `User_Address_ID`, `User_Phone_No`, `User_National_ID`, `User_DOB`, `User_Shift`, `Created_At`, `Updated_At`, `Is_Deleted`, `Last_Updated`, `Organization_Branch_ID`) VALUES
(1, 20, 'doc@mail.com', 'Ahmed', 'Sameh', 3, 11473, 120921031, '0000-00-00', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, '0000-00-00 00:00:00.000000', 5),
(9, 22, 'DOC@GMAIL', 'Ahmed', 'Sameh', 10, 11473, 120921031, '0000-00-00', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, '0000-00-00 00:00:00.000000', 7),
(2008, 2, '@', 'mahm', 'ahm', 5, 11, 0, '0000-00-00', '0000-00-00 00:00:00.000000', '2022-01-07 16:06:20.548104', '2022-01-07 16:06:20.548104', 0, '2022-01-07 16:23:28.640408', 1),
(2009, 3, 'nurse@gmail', 'amena', 'ahmed', 6, 114732, 1209210312, '0000-00-00', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, '0000-00-00 00:00:00.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_method`
--

CREATE TABLE `user_method` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_method`
--

INSERT INTO `user_method` (`ID`, `Name`) VALUES
(2008, '*******'),
(2009, '*******'),
(2010, '*****'),
(2011, '*****');

-- --------------------------------------------------------

--
-- Table structure for table `user_options`
--

CREATE TABLE `user_options` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_options`
--

INSERT INTO `user_options` (`ID`, `Name`, `Type`) VALUES
(2008, '******', '*****'),
(2009, '*****', '*****');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_options`
--

CREATE TABLE `user_type_options` (
  `ID` int(255) NOT NULL,
  `User_method_ID` int(255) NOT NULL,
  `User_Options_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_type_pages`
--

CREATE TABLE `user_type_pages` (
  `ID` int(255) NOT NULL,
  `User_Type_ID` int(255) NOT NULL,
  `Page_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_type_value`
--

CREATE TABLE `user_type_value` (
  `ID` int(255) NOT NULL,
  `User_Type_Options_ID` int(255) NOT NULL,
  `Value` text NOT NULL,
  `User_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `ID` int(255) NOT NULL,
  `Word` varchar(255) NOT NULL,
  `Language_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `word`
--

INSERT INTO `word` (`ID`, `Word`, `Language_ID`) VALUES
(2008, '*****', 1),
(2009, '*****', 2),
(2010, '*****', 3),
(2011, '*****', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activties`
--
ALTER TABLE `activties`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Organization_Branch_ID` (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Activites_Type_ID` (`Activites_Type_ID`);

--
-- Indexes for table `activties_type`
--
ALTER TABLE `activties_type`
  ADD PRIMARY KEY (`Activites_Type_ID`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Parent_ID` (`Parent_ID`),
  ADD UNIQUE KEY `User_Address_ID` (`User_Address_ID`);

--
-- Indexes for table `bathroom_details`
--
ALTER TABLE `bathroom_details`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Room_ID` (`Room_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`),
  ADD UNIQUE KEY `Organization_Branch_ID` (`Organization_Branch_ID`);

--
-- Indexes for table `bedroom_details`
--
ALTER TABLE `bedroom_details`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`),
  ADD UNIQUE KEY `Organization_Branch_ID` (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Room_ID` (`Room_ID`);

--
-- Indexes for table `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Case_ID` (`Case_ID`);

--
-- Indexes for table `case_requirments`
--
ALTER TABLE `case_requirments`
  ADD PRIMARY KEY (`Case_ID`);

--
-- Indexes for table `customized_report`
--
ALTER TABLE `customized_report`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`Sponser_ID`);

--
-- Indexes for table `equipment_type`
--
ALTER TABLE `equipment_type`
  ADD PRIMARY KEY (`Equipment_Type_ID`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Case_ID` (`Case_ID`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `File_Type_ID` (`File_Type_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `file_type`
--
ALTER TABLE `file_type`
  ADD PRIMARY KEY (`File_Type_ID`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`Food_Type_ID`);

--
-- Indexes for table `kitchen_details`
--
ALTER TABLE `kitchen_details`
  ADD PRIMARY KEY (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Room_ID` (`Room_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`),
  ADD UNIQUE KEY `Food_Type_ID` (`Food_Type_ID`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `log_transactions`
--
ALTER TABLE `log_transactions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Status_ID` (`Status_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `medicine_type`
--
ALTER TABLE `medicine_type`
  ADD PRIMARY KEY (`Medicine_Type_ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Type_ID` (`Type_ID`);

--
-- Indexes for table `message_type`
--
ALTER TABLE `message_type`
  ADD PRIMARY KEY (`Type_ID`);

--
-- Indexes for table `message_user`
--
ALTER TABLE `message_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Message_ID` (`Message_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `observing_screens_type`
--
ALTER TABLE `observing_screens_type`
  ADD PRIMARY KEY (`Observing_Screens_Type_ID`),
  ADD UNIQUE KEY `Observing_Screens_Quantity` (`Observing_Screens_Quantity`),
  ADD UNIQUE KEY `Observing_Screens_Quantity_2` (`Observing_Screens_Quantity`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`Options_ID`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`),
  ADD UNIQUE KEY `Organization_Branch_ID` (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Case ID` (`Case_ID`),
  ADD UNIQUE KEY `Sponser_ID` (`Sponser_ID`),
  ADD UNIQUE KEY `Orphan_ID` (`Orphan_ID`);

--
-- Indexes for table `organization_maintance`
--
ALTER TABLE `organization_maintance`
  ADD PRIMARY KEY (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Worker_ID` (`User_ID`);

--
-- Indexes for table `orphan`
--
ALTER TABLE `orphan`
  ADD PRIMARY KEY (`Orphan_ID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `payment_method_options`
--
ALTER TABLE `payment_method_options`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Payment_ID` (`Payment_ID`),
  ADD UNIQUE KEY `Option_ID` (`Option_ID`);

--
-- Indexes for table `payment_method_option_value`
--
ALTER TABLE `payment_method_option_value`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Payment_Option_ID` (`Payment_Option_ID`),
  ADD UNIQUE KEY `Sponser_ID` (`Sponser_ID`);

--
-- Indexes for table `pharmacy_details`
--
ALTER TABLE `pharmacy_details`
  ADD PRIMARY KEY (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Room_ID` (`Room_ID`),
  ADD UNIQUE KEY `Medicine_Type_ID` (`Medicine_Type_ID`),
  ADD UNIQUE KEY `Equipment_Type_ID` (`Equipment_Type_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `postiion`
--
ALTER TABLE `postiion`
  ADD PRIMARY KEY (`Position_ID`);

--
-- Indexes for table `rendered_payment_type_html`
--
ALTER TABLE `rendered_payment_type_html`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Method_ID` (`Method_ID`);

--
-- Indexes for table `residence`
--
ALTER TABLE `residence`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Case_ID` (`Case_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`),
  ADD UNIQUE KEY `Room_ID` (`Room_ID`),
  ADD UNIQUE KEY `Room_Type_ID` (`Room_Type_ID`),
  ADD UNIQUE KEY `Organization_Branch_ID` (`Organization_Branch_ID`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`Room_Type_ID`);

--
-- Indexes for table `security_details`
--
ALTER TABLE `security_details`
  ADD PRIMARY KEY (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Room_ID` (`Room_ID`),
  ADD UNIQUE KEY `Observing_Screens_Type_ID` (`Observing_Screens_Type_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `sponser`
--
ALTER TABLE `sponser`
  ADD PRIMARY KEY (`Sponser_ID`),
  ADD UNIQUE KEY `Organization_Branch_ID` (`Organization_Branch_ID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- Indexes for table `storage_details`
--
ALTER TABLE `storage_details`
  ADD PRIMARY KEY (`Organization_Branch_ID`),
  ADD UNIQUE KEY `Room_ID` (`Room_ID`),
  ADD UNIQUE KEY `Storage_Type_ID` (`Storage_Type_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `storage_type`
--
ALTER TABLE `storage_type`
  ADD PRIMARY KEY (`Storage_Type_ID`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Position_ID` (`Position_ID`),
  ADD UNIQUE KEY `Parent_ID` (`Parent_ID`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `First_Lang_Code` (`First_Lang_Code`,`Sec_Lang_Code`),
  ADD KEY `Sec_Lang_Code` (`Sec_Lang_Code`);

--
-- Indexes for table `translation_details`
--
ALTER TABLE `translation_details`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Trans_ID` (`Trans_ID`),
  ADD UNIQUE KEY `Word_ID` (`Word_ID`),
  ADD UNIQUE KEY `Trans_Word_ID` (`Trans_Word_ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`User_Type_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `User_Type_ID` (`User_Type_ID`),
  ADD UNIQUE KEY `User_Address_ID` (`User_Address_ID`),
  ADD UNIQUE KEY `Organization_Branch_ID` (`Organization_Branch_ID`);

--
-- Indexes for table `user_method`
--
ALTER TABLE `user_method`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_options`
--
ALTER TABLE `user_options`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_type_options`
--
ALTER TABLE `user_type_options`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_method_ID` (`User_method_ID`),
  ADD UNIQUE KEY `User_method_ID_2` (`User_method_ID`),
  ADD UNIQUE KEY `User_Options_ID` (`User_Options_ID`);

--
-- Indexes for table `user_type_pages`
--
ALTER TABLE `user_type_pages`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_Type_ID` (`User_Type_ID`),
  ADD UNIQUE KEY `Page_ID` (`Page_ID`);

--
-- Indexes for table `user_type_value`
--
ALTER TABLE `user_type_value`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_Type_Options_ID` (`User_Type_Options_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activties`
--
ALTER TABLE `activties`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `activties_type`
--
ALTER TABLE `activties_type`
  MODIFY `Activites_Type_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bathroom_details`
--
ALTER TABLE `bathroom_details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2009;

--
-- AUTO_INCREMENT for table `bedroom_details`
--
ALTER TABLE `bedroom_details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2001;

--
-- AUTO_INCREMENT for table `case`
--
ALTER TABLE `case`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `case_requirments`
--
ALTER TABLE `case_requirments`
  MODIFY `Case_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customized_report`
--
ALTER TABLE `customized_report`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `Sponser_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `equipment_type`
--
ALTER TABLE `equipment_type`
  MODIFY `Equipment_Type_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `file_type`
--
ALTER TABLE `file_type`
  MODIFY `File_Type_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_type`
--
ALTER TABLE `food_type`
  MODIFY `Food_Type_ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kitchen_details`
--
ALTER TABLE `kitchen_details`
  MODIFY `Organization_Branch_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `User_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `log_transactions`
--
ALTER TABLE `log_transactions`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `medicine_type`
--
ALTER TABLE `medicine_type`
  MODIFY `Medicine_Type_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `message_type`
--
ALTER TABLE `message_type`
  MODIFY `Type_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_user`
--
ALTER TABLE `message_user`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `observing_screens_type`
--
ALTER TABLE `observing_screens_type`
  MODIFY `Observing_Screens_Type_ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `Options_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2011;

--
-- AUTO_INCREMENT for table `organization_maintance`
--
ALTER TABLE `organization_maintance`
  MODIFY `Organization_Branch_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orphan`
--
ALTER TABLE `orphan`
  MODIFY `Orphan_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2009;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `Payment_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_method_options`
--
ALTER TABLE `payment_method_options`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_method_option_value`
--
ALTER TABLE `payment_method_option_value`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `pharmacy_details`
--
ALTER TABLE `pharmacy_details`
  MODIFY `Organization_Branch_ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postiion`
--
ALTER TABLE `postiion`
  MODIFY `Position_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rendered_payment_type_html`
--
ALTER TABLE `rendered_payment_type_html`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `residence`
--
ALTER TABLE `residence`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2009;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `Room_Type_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `security_details`
--
ALTER TABLE `security_details`
  MODIFY `Organization_Branch_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sponser`
--
ALTER TABLE `sponser`
  MODIFY `Sponser_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `Status_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `storage_details`
--
ALTER TABLE `storage_details`
  MODIFY `Organization_Branch_ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storage_type`
--
ALTER TABLE `storage_type`
  MODIFY `Storage_Type_ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `translation`
--
ALTER TABLE `translation`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `translation_details`
--
ALTER TABLE `translation_details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `User_Type_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `user_method`
--
ALTER TABLE `user_method`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2012;

--
-- AUTO_INCREMENT for table `user_options`
--
ALTER TABLE `user_options`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2010;

--
-- AUTO_INCREMENT for table `user_type_options`
--
ALTER TABLE `user_type_options`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_type_pages`
--
ALTER TABLE `user_type_pages`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_type_value`
--
ALTER TABLE `user_type_value`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2012;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activties`
--
ALTER TABLE `activties`
  ADD CONSTRAINT `activties_ibfk_1` FOREIGN KEY (`Organization_Branch_ID`) REFERENCES `organization` (`Organization_Branch_ID`);

--
-- Constraints for table `activties_type`
--
ALTER TABLE `activties_type`
  ADD CONSTRAINT `activties_type_ibfk_1` FOREIGN KEY (`Activites_Type_ID`) REFERENCES `activties` (`Activites_Type_ID`);

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`User_Address_ID`) REFERENCES `user` (`User_Address_ID`),
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `address` (`Parent_ID`);

--
-- Constraints for table `bathroom_details`
--
ALTER TABLE `bathroom_details`
  ADD CONSTRAINT `bathroom_details_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `case`
--
ALTER TABLE `case`
  ADD CONSTRAINT `case_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `family` (`ID`);

--
-- Constraints for table `customized_report`
--
ALTER TABLE `customized_report`
  ADD CONSTRAINT `customized_report_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`File_Type_ID`) REFERENCES `file_type` (`File_Type_ID`),
  ADD CONSTRAINT `files_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `food_type`
--
ALTER TABLE `food_type`
  ADD CONSTRAINT `food_type_ibfk_1` FOREIGN KEY (`Food_Type_ID`) REFERENCES `kitchen_details` (`Food_Type_ID`);

--
-- Constraints for table `kitchen_details`
--
ALTER TABLE `kitchen_details`
  ADD CONSTRAINT `kitchen_details_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `log_transactions`
--
ALTER TABLE `log_transactions`
  ADD CONSTRAINT `log_transactions_ibfk_1` FOREIGN KEY (`Status_ID`) REFERENCES `status` (`Status_ID`),
  ADD CONSTRAINT `log_transactions_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`Type_ID`) REFERENCES `message_type` (`Type_ID`);

--
-- Constraints for table `message_user`
--
ALTER TABLE `message_user`
  ADD CONSTRAINT `message_user_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  ADD CONSTRAINT `message_user_ibfk_2` FOREIGN KEY (`Message_ID`) REFERENCES `message` (`ID`);

--
-- Constraints for table `observing_screens_type`
--
ALTER TABLE `observing_screens_type`
  ADD CONSTRAINT `observing_screens_type_ibfk_1` FOREIGN KEY (`Observing_Screens_Type_ID`) REFERENCES `security_details` (`Observing_Screens_Type_ID`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `organization_maintance`
--
ALTER TABLE `organization_maintance`
  ADD CONSTRAINT `organization_maintance_ibfk_1` FOREIGN KEY (`Organization_Branch_ID`) REFERENCES `organization` (`Organization_Branch_ID`);

--
-- Constraints for table `orphan`
--
ALTER TABLE `orphan`
  ADD CONSTRAINT `orphan_ibfk_1` FOREIGN KEY (`Orphan_ID`) REFERENCES `organization` (`Orphan_ID`);

--
-- Constraints for table `payment_method_options`
--
ALTER TABLE `payment_method_options`
  ADD CONSTRAINT `payment_method_options_ibfk_1` FOREIGN KEY (`Option_ID`) REFERENCES `options` (`Options_ID`),
  ADD CONSTRAINT `payment_method_options_ibfk_2` FOREIGN KEY (`Payment_ID`) REFERENCES `payment_method` (`Payment_ID`),
  ADD CONSTRAINT `payment_method_options_ibfk_3` FOREIGN KEY (`ID`) REFERENCES `rendered_payment_type_html` (`Method_ID`);

--
-- Constraints for table `payment_method_option_value`
--
ALTER TABLE `payment_method_option_value`
  ADD CONSTRAINT `payment_method_option_value_ibfk_1` FOREIGN KEY (`Sponser_ID`) REFERENCES `sponser` (`Sponser_ID`),
  ADD CONSTRAINT `payment_method_option_value_ibfk_2` FOREIGN KEY (`Payment_Option_ID`) REFERENCES `payment_method_options` (`ID`);

--
-- Constraints for table `pharmacy_details`
--
ALTER TABLE `pharmacy_details`
  ADD CONSTRAINT `pharmacy_details_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `room_type_ibfk_1` FOREIGN KEY (`Room_Type_ID`) REFERENCES `room` (`Room_Type_ID`);

--
-- Constraints for table `security_details`
--
ALTER TABLE `security_details`
  ADD CONSTRAINT `security_details_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `storage_details`
--
ALTER TABLE `storage_details`
  ADD CONSTRAINT `storage_details_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `storage_type`
--
ALTER TABLE `storage_type`
  ADD CONSTRAINT `storage_type_ibfk_1` FOREIGN KEY (`Storage_Type_ID`) REFERENCES `storage_details` (`Storage_Type_ID`);

--
-- Constraints for table `theme`
--
ALTER TABLE `theme`
  ADD CONSTRAINT `theme_ibfk_3` FOREIGN KEY (`Parent_ID`) REFERENCES `theme` (`ID`);

--
-- Constraints for table `translation`
--
ALTER TABLE `translation`
  ADD CONSTRAINT `translation_ibfk_3` FOREIGN KEY (`First_Lang_Code`) REFERENCES `languages` (`ID`),
  ADD CONSTRAINT `translation_ibfk_4` FOREIGN KEY (`Sec_Lang_Code`) REFERENCES `languages` (`ID`);

--
-- Constraints for table `translation_details`
--
ALTER TABLE `translation_details`
  ADD CONSTRAINT `translation_details_ibfk_1` FOREIGN KEY (`Word_ID`) REFERENCES `word` (`ID`),
  ADD CONSTRAINT `translation_details_ibfk_2` FOREIGN KEY (`Trans_Word_ID`) REFERENCES `word` (`ID`),
  ADD CONSTRAINT `translation_details_ibfk_3` FOREIGN KEY (`Trans_ID`) REFERENCES `translation` (`ID`);

--
-- Constraints for table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`User_Type_ID`) REFERENCES `user` (`User_Type_ID`);

--
-- Constraints for table `user_type_options`
--
ALTER TABLE `user_type_options`
  ADD CONSTRAINT `user_type_options_ibfk_1` FOREIGN KEY (`User_method_ID`) REFERENCES `user_method` (`ID`),
  ADD CONSTRAINT `user_type_options_ibfk_2` FOREIGN KEY (`User_Options_ID`) REFERENCES `user_options` (`ID`);

--
-- Constraints for table `user_type_pages`
--
ALTER TABLE `user_type_pages`
  ADD CONSTRAINT `user_type_pages_ibfk_1` FOREIGN KEY (`User_Type_ID`) REFERENCES `type` (`User_Type_ID`),
  ADD CONSTRAINT `user_type_pages_ibfk_2` FOREIGN KEY (`Page_ID`) REFERENCES `pages` (`ID`);

--
-- Constraints for table `user_type_value`
--
ALTER TABLE `user_type_value`
  ADD CONSTRAINT `user_type_value_ibfk_1` FOREIGN KEY (`User_Type_Options_ID`) REFERENCES `user_type_options` (`ID`),
  ADD CONSTRAINT `user_type_value_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
