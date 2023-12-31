USE proph_expertise;

SET foreign_key_checks = 0;

INSERT INTO `departments` VALUES 
	(1,'859','автотранспортный','2013-10-06 02:54:12'),
	(2,'476','кузнечный','2001-04-14 07:32:38'),
	(3,'332','хоз. обслуживание','1971-11-21 06:44:14'),
	(4,'481','лаб. контроль','1993-05-19 01:05:31'),
	(5,'252','переработка отходов','2008-07-18 07:15:51'),
	(6,'032','прессовой','1978-05-04 00:26:31'),
	(7,'908','плавильно-литейный','1992-06-01 04:07:40'),
	(8,'369','прессово-травильный','2015-08-16 17:45:07'),
	(9,'968','служба безопасности','2019-07-15 17:45:46'),
	(10,'138','медсанчасть','1997-03-12 18:01:49');

INSERT INTO `positions` VALUES 
	(1,'ab','1975-08-20 23:40:15'),
	(2,'minima','2003-01-31 06:06:46'),
	(3,'quod','1991-05-17 06:23:00'),
	(4,'sapiente','2003-12-25 20:21:31'),
	(5,'exercitationem','1996-11-10 21:13:42'),
	(6,'recusandae','1972-10-23 08:17:58'),
	(7,'et','1996-07-21 22:49:55'),
	(8,'sed','1997-04-01 18:04:57'),
	(9,'repellat','2011-11-05 00:55:23'),
	(10,'eos','2006-01-06 05:19:46'),
	(11,'doloribus','1989-08-09 10:03:33'),
	(12,'dolores','2012-03-06 20:05:05'),
	(13,'quod','1977-01-03 10:08:37'),
	(14,'voluptatibus','1998-01-10 19:03:25'),
	(15,'voluptate','1990-06-27 14:25:52'),
	(16,'voluptatem','1998-01-27 13:58:27'),
	(17,'totam','1999-05-07 12:46:08'),
	(18,'sed','1977-02-05 22:16:54'),
	(19,'reiciendis','2018-01-10 05:09:24'),
	(20,'qui','2013-03-30 01:57:19'),
	(21,'explicabo','2019-11-11 22:03:43'),
	(22,'ut','2021-03-03 23:48:55'),
	(23,'velit','2018-01-04 17:26:46'),
	(24,'minus','1972-07-06 05:42:44'),
	(25,'corporis','2007-03-23 10:27:19'),
	(26,'beatae','2015-06-17 08:31:44'),
	(27,'eum','1987-07-10 09:59:26'),
	(28,'voluptatibus','2016-01-22 13:30:55'),
	(29,'aspernatur','1991-08-23 17:55:56'),
	(30,'терапевт','1979-01-23 08:39:21');

INSERT INTO `workers` VALUES 
	(1,'Tara','Rowe',1,'209',1,9151175620,'4305 Langosh Walks\nSouth Vernerville, WV 97050','\0','2006-04-07 09:03:34','2019-03-19 17:42:27'),
	(2,'Joshuah','Jacobs',3,'388',3,9977196034,'485 Metz Wall Apt. 289\nWest Corine, NH 19810','\0','2019-09-14 06:23:13','2011-01-16 05:48:59'),
	(3,'Trever','Harvey',4,'836',4,9243420600,'47604 Joana Circles Suite 757\nMartinfort, FL 50798','\0','2004-01-05 19:07:51','1995-05-21 12:07:37'),
	(4,'Lamar','Krajcik',5,'400',5,9547599780,'7322 Jerome Freeway\nWest Brook, AK 20470-6400','','1989-07-10 12:32:45','2016-01-01 14:37:33'),
	(5,'Malvina','White',6,'770',6,9924833456,'39996 Collins Extension\nWest Heidi, AR 46951','\0','1980-01-18 18:45:42','1993-01-24 03:09:13'),
	(6,'Misty','Boyle',7,'421',7,9662238637,'044 Justyn Falls Suite 305\nKemmerfurt, HI 97234','\0','1982-03-31 08:54:46','2019-04-24 04:56:48'),
	(7,'Isai','Mraz',8,'940',8,9341596976,'257 Jamarcus Viaduct Apt. 142\nJaceyport, TN 04108-3976','\0','1992-04-09 23:25:56','2020-11-30 11:37:14'),
	(8,'John','Yundt',9,'802',9,9430334216,'296 Cassandre Cape Suite 789\nDallasville, DC 93097','\0','2000-07-17 18:48:08','1981-04-13 03:32:53'),
	(9,'Rodolfo','Pfannerstill',10,'671',10,9705487394,'677 Windler Views\nReymundotown, MN 94743-8893','','1987-12-03 23:26:47','2004-11-16 16:59:43'),
	(10,'Hallie','Mraz',1,'563',11,9311956577,'89925 Thiel Track\nWest Devante, LA 57316-1610','\0','2012-02-04 22:20:17','1994-03-22 00:47:17'),
	(11,'Reba','Shields',2,'111',12,9453203046,'916 Bruen Harbor Suite 007\nNorth Shawnashire, SC 00664-3301','\0','1985-11-10 19:18:20','1973-11-19 15:11:51'),
	(12,'Destiney','Morar',4,'640',14,9391036952,'500 Alayna Gardens\nLouieberg, SD 47431-9956','\0','1975-12-07 05:10:40','1995-10-04 10:05:18'),
	(13,'Laila','Rosenbaum',5,'498',15,9832217003,'747 Hank Forks\nWest Bernardofurt, WI 67262-5221','\0','1998-07-26 02:20:51','1981-08-07 08:23:38'),
	(14,'Jackie','Bergnaum',8,'689',18,9283927338,'2706 Ebert Field\nWillfurt, CT 70019','\0','2016-10-31 02:35:12','2014-07-07 19:59:53'),
	(15,'Ned','McGlynn',9,'211',19,9805090040,'13217 Tillman Stravenue Suite 590\nNorth Heath, NE 86715-7035','\0','1986-07-14 10:10:49','1983-06-15 08:23:52'),
	(16,'Nelson','O\'Conner',10,'351',20,9064162078,'1290 Nienow Isle\nNew Preston, IA 73028-2442','\0','2017-12-06 05:53:13','1987-06-11 13:30:29'),
	(17,'Suzanne','Prosacco',2,'979',22,9508242129,'1590 Ernser Parkways\nDanielberg, WI 71909-2171','\0','2010-02-12 19:27:02','2010-10-09 06:36:55'),
	(18,'Benjamin','Ortiz',4,'594',24,9701929926,'5587 Lenore Center Apt. 323\nStephanybury, CA 24695-8463','\0','1971-11-02 19:50:52','2000-10-26 20:34:07'),
	(19,'Luigi','Donnelly',7,'656',27,9721768522,'588 Rupert Cape\nSouth Salvadorbury, VA 64576','\0','2006-08-19 09:36:39','2004-10-07 06:45:34'),
	(20,'Pat','Gislason',8,'100',28,9842997899,'73456 Althea Key Suite 025\nLake Clovis, ND 63859','\0','1983-03-13 13:02:54','2019-07-08 23:52:40'),
	(21,'Lou','Bartell',10,'259',21,9106972859,'6497 Schaefer Shore Suite 544\nMontyport, UT 38558-1549','','1983-04-07 21:39:41','1990-01-17 23:22:42'),
	(22,'Kimberly','Schiller',2,'473',2,9041404453,'94615 Nico Falls\nPeterchester, IL 29552-3765','','2005-02-18 01:19:10','1998-11-30 02:59:49'),
	(23,'Kobe','Spencer',3,'540',3,9933652275,'910 Shanahan Extension Suite 286\nSouth Emery, GA 71837','\0','2005-03-21 08:06:50','1970-12-13 17:37:27'),
	(24,'Lila','Marquardt',4,'991',4,9864517285,'150 Jasmin Rapid Suite 509\nNew Virginia, HI 07797-1842','\0','1987-10-13 10:30:39','1997-09-30 04:33:45'),
	(25,'Daphney','O\'Conner',6,'253',6,9748359333,'55474 Jaeden Key Apt. 803\nBayerton, FL 95393','\0','1971-03-11 02:33:57','1981-07-21 21:02:41'),
	(26,'Tara','Glover',8,'448',8,9908567576,'8578 McCullough Plaza Suite 136\nPort Nayelimouth, MS 39602','\0','2018-10-18 17:14:08','2005-08-30 13:49:39'),
	(27,'Vicente','Blick',1,'773',11,9705500354,'6899 Thurman Hollow Apt. 652\nEast Dell, MN 53870','\0','2011-01-30 17:39:05','2008-04-26 11:09:49'),
	(28,'Annabell','Schaden',2,'179',12,9545041848,'967 Alfonzo Crescent Suite 469\nAndersonbury, WY 19589-0379','\0','1971-10-27 20:51:39','2004-09-12 04:02:40'),
	(29,'Ocie','Blanda',3,'588',13,9398979495,'483 Jakubowski Junctions Suite 309\nEmmetthaven, WI 78591-9643','','1992-10-25 19:37:50','1982-04-23 01:31:31'),
	(30,'Kiarra','Koepp',4,'303',14,9053479579,'0563 Fay Harbors Apt. 323\nPort Rosellamouth, NJ 65753-5417','\0','1984-06-06 13:45:39','1984-07-16 08:54:57'),
	(31,'Garfield','Predovic',7,'290',17,9422171655,'2324 Champlin Fall Apt. 822\nDesireeport, MT 01486-7016','\0','1975-12-26 13:34:21','2017-02-23 04:26:20'),
	(32,'Margarita','Shanahan',10,'651',20,9026748270,'812 Waters Glens Suite 282\nAubreefort, PA 77382','\0','1974-09-21 09:03:49','1983-10-04 06:13:07'),
	(33,'Josh','Hickle',1,'354',21,9662899700,'41691 Timothy Mountains\nBinsview, OH 46720-2164','\0','2000-12-20 14:23:53','2017-01-03 21:53:16'),
	(34,'Rhiannon','Hilpert',2,'407',22,9799250237,'666 Kautzer Motorway Suite 228\nWhiteside, AZ 90310-8450','\0','1978-08-02 16:35:40','2003-08-09 05:09:30'),
	(35,'Willa','Collins',6,'967',26,9108237208,'1658 Ryan Groves\nMullershire, IL 06806-3530','\0','1995-01-07 09:44:39','1994-08-21 18:41:21'),
	(36,'Kenneth','Mueller',7,'377',27,9213894901,'129 Mraz Village Suite 869\nKenyattaborough, TN 18274-0483','\0','2019-06-27 17:15:45','1985-06-03 16:57:04'),
	(37,'Elinore','Lemke',8,'584',28,9912307268,'9994 Rau Avenue Suite 261\nEast Rickymouth, SD 41205-0219','\0','1985-10-08 05:58:35','2008-09-25 18:18:19'),
	(38,'Ethyl','D\'Amore',10,'241',30,9310182041,'60570 Hosea Lodge\nLilianamouth, OH 73094-3272','\0','2003-12-03 07:58:21','1980-07-29 17:24:54'),
	(39,'Favian','Kuhic',10,'576',30,9336179170,'393 Kuphal Extensions\nWest Franco, ND 15838','\0','2017-09-16 14:49:19','2012-01-13 17:26:20'),
	(40,'Conrad','Ebert',10,'128',30,9882635505,'4042 Anibal Spur\nEusebioberg, NE 83355-3220','\0','2009-12-14 16:49:39','1991-09-27 06:34:30');
	
INSERT INTO `dangerous_working_conditions` VALUES 
	(1,'высота','2012-07-24 22:29:58'),
	(2,'производственный шум','1989-10-28 15:41:10'),
	(3,'взрыво- и пожароопасные вещества','2011-10-18 02:49:40'),
	(4,'пары ртути','1994-09-27 09:16:19'),
	(5,'ненормированный график','2014-08-18 15:54:01'),
	(6,'работа с биологическими веществами','1991-10-05 21:35:44'),
	(7,'физические перегрузки','1985-04-09 15:47:21'),
	(8,'повышенные температуры','2011-03-02 04:24:31'),
	(9,'предельные и непредельные углеводороды','2014-08-25 10:28:47'),
	(10,'вибрация','2014-09-24 18:57:30'),
	(11,'пыль','2004-08-01 03:39:42'),
	(12,'электромагнитные излучения','1979-06-14 17:57:43'),
	(13,'работа вне производственных помещений','2021-02-16 11:15:41'),
	(14,'промышленные аэрозоли','2021-09-23 05:06:52'),
	(15,'окислы азота, аммиак','2011-09-05 03:08:33');

INSERT INTO `med_profiles` VALUES 
	(1,'m','1981-03-04','331 ic',2,'1999-01-13 02:17:57','не пройден','2020-11-08'),
	(2,'f','1979-06-29','359 ab',4,'1991-06-08 18:31:04','не пройден','2020-06-16'),
	(3,'f','2019-08-13','834 sd',1,'1994-07-18 19:59:06','пройден','2021-09-09'),
	(4,'m','1981-12-04','678 bz',3,'1982-12-26 06:39:05','продлён','2020-12-20'),
	(5,'m','1972-06-27','298 hi',2,'2003-08-06 14:29:39','не пройден','2020-09-27'),
	(6,'f','1977-12-12','133 gm',1,'1999-01-02 22:46:05','продлён','2021-07-01'),
	(7,'f','2005-12-14','305 wg',2,'1987-11-25 21:46:48','не пройден','2020-03-26'),
	(8,'m','2017-06-11','694 vx',2,'2015-04-05 21:29:36','не пройден','2020-10-29'),
	(9,'f','1970-02-21','011 bl',1,'1993-02-07 19:59:40','не пройден','2020-12-07'),
	(10,'m','1991-08-26','957 dt',1,'2013-09-02 03:37:25','пройден','2021-03-17'),
	(11,'m','1987-12-01','116 st',2,'1982-03-12 16:10:33','пройден','2021-03-25'),
	(12,'m','2019-08-08','278 kx',2,'1984-02-16 13:48:59','пройден','2020-09-20'),
	(13,'f','1992-07-10','347 xe',2,'2001-07-21 14:31:55','не пройден','2021-09-04'),
	(14,'m','1983-05-31','075 hc',4,'1996-12-16 13:16:14','не пройден','2021-01-29'),
	(15,'m','2018-04-10','621 ou',3,'1978-01-30 04:55:10','пройден','2020-012-22'),
	(16,'f','2021-03-04','793 ol',4,'1988-08-06 15:29:14','не пройден','2021-01-18'),
	(17,'m','1971-03-10','906 mo',4,'1981-02-09 06:39:30','пройден','2021-09-23'),
	(18,'m','1991-03-20','102 tp',2,'1991-04-16 01:44:10','пройден','2021-09-06'),
	(19,'f','2012-08-14','314 ek',1,'2010-10-24 00:53:33','не пройден','2020-06-09'),
	(20,'m','1976-12-30','965 fa',3,'2020-11-11 20:56:09','не пройден','2020-06-28'),
	(21,'f','2017-01-09','035 no',2,'1981-09-15 04:41:22','пройден','2021-06-12'),
	(22,'f','1972-07-22','816 ya',3,'2020-02-21 23:32:27','продлён','2021-08-05'),
	(23,'f','1977-10-07','778 ci',4,'1983-09-02 21:56:52','не пройден','2020-06-22'),
	(24,'m','1979-06-09','276 ct',2,'2005-01-04 19:42:34','не пройден','2021-11-04'),
	(25,'f','2001-09-11','481 bk',1,'1976-05-03 16:39:57','не пройден','2020-03-16'),
	(26,'m','1979-08-21','869 xf',4,'1997-07-27 17:58:42','не пройден','2020-12-02'),
	(27,'m','1988-02-24','739 ui',1,'1971-06-26 05:28:53','не пройден','2020-12-14'),
	(28,'f','2014-07-04','618 qn',4,'2000-06-23 00:31:06','не пройден','2021-05-21'),
	(29,'f','2015-05-01','114 yu',2,'1970-10-30 00:11:17','не пройден','2021-07-26'),
	(30,'m','2014-02-28','607 at',4,'2010-04-19 22:22:26','не пройден','2020-03-16'),
	(31,'m','2010-12-27','945 yr',4,'1995-11-14 22:36:41','не пройден','2021-04-12'),
	(32,'f','1997-10-22','266 nv',2,'2002-08-23 15:31:25','не пройден','2020-09-19'),
	(33,'m','1997-05-03','185 sx',2,'2003-06-06 15:36:13','не пройден','2021-06-09'),
	(34,'m','1972-02-10','020 ve',4,'1972-11-09 08:26:40','не пройден','2020-11-02'),
	(35,'f','2017-01-04','841 rn',2,'1998-08-15 07:19:08','не пройден',NULL),
	(36,'m','2016-07-30','452 vh',1,'1983-05-31 16:05:18','пройден','2021-11-01'),
	(37,'m','2013-07-08','489 jy',2,'1984-06-10 21:36:29','не пройден','2020-11-16'),
	(38,'f','2019-10-06','343 qh',3,'2007-08-07 23:45:08','продлён','2021-07-28'),
	(39,'m','1979-08-04','038 ue',1,'1978-12-10 08:11:14','пройден','2020-01-20'),
	(40,'m','2001-11-17','063 kf',4,'2019-05-12 00:14:23','продлён','2021-05-19');

INSERT INTO `prof_restrictions` VALUES
	(1,1,'1970-05-23 08:42:41'),
	(1,2,'1970-05-23 08:42:41'),
	(2,2,'1990-06-26 18:24:14'),
	(3,3,'1990-09-18 17:33:21'),
	(3,1,'1990-09-18 17:33:21'),
	(4,4,'2009-01-09 22:26:49'),
	(4,1,'1990-09-18 17:33:21'),
	(5,5,'2006-05-27 16:35:19'),
	(6,6,'1990-06-26 23:34:55'),
	(7,7,'2013-03-22 06:07:56'),
	(7,10,'2013-03-22 06:07:56'),
	(8,8,'1980-11-25 19:28:33'),
	(9,9,'1989-04-19 01:58:04'),
	(10,10,'2019-12-20 08:57:12'),
	(11,11,'2014-07-01 06:58:43'),
	(12,12,'1986-02-01 16:13:36'),
	(13,13,'2012-05-17 22:54:10'),
	(14,14,'2000-05-24 06:52:17'),
	(15,15,'1996-07-30 08:57:38');

INSERT INTO `dangerous_conditions_of_workers` VALUES 
	(1,1,'2009-05-14 20:41:18'),
	(1,13,'2009-04-20 08:55:27'),
	(2,2,'2016-09-15 10:59:05'),
	(2,14,'1992-02-12 00:45:11'),
	(3,3,'1990-06-25 08:19:29'),
	(3,15,'2008-02-13 18:25:14'),
	(4,1,'1989-01-07 15:40:55'),
	(4,4,'1998-09-30 09:40:07'),
	(5,2,'2011-11-21 22:01:22'),
	(5,5,'1981-09-11 20:24:45'),
	(6,3,'1973-01-02 20:21:38'),
	(6,6,'2015-04-26 10:58:25'),
	(7,4,'2019-08-06 02:17:56'),
	(7,7,'1999-08-09 02:10:10'),
	(8,5,'1991-03-01 02:53:35'),
	(8,8,'1998-08-13 02:57:41'),
	(9,6,'1989-08-17 02:47:30'),
	(9,9,'2014-03-28 23:02:33'),
	(10,7,'1999-01-10 07:20:56'),
	(10,10,'1981-10-04 13:19:27'),
	(11,8,'1982-06-18 04:14:31'),
	(11,11,'1974-09-19 00:15:05'),
	(12,9,'2016-04-11 07:20:48'),
	(12,12,'1993-09-22 00:51:30'),
	(13,10,'2009-10-10 08:27:30'),
	(13,13,'1979-11-21 15:19:27'),
	(14,11,'2018-11-15 05:01:20'),
	(14,14,'2004-02-04 21:13:34'),
	(15,12,'1973-06-01 21:13:01'),
	(15,15,'1993-12-23 18:15:52'),
	(16,1,'1994-11-06 00:58:02'),
	(16,13,'1986-01-17 17:39:10'),
	(17,2,'1972-03-28 08:31:18'),
	(17,14,'2015-12-02 18:45:27'),
	(18,3,'1982-11-08 01:46:07'),
	(18,15,'1970-03-22 02:30:21'),
	(19,1,'2009-04-21 15:48:48'),
	(19,4,'2005-05-27 19:01:11'),
	(20,2,'1981-12-01 10:05:26'),
	(20,5,'1998-06-03 01:56:54'),
	(21,3,'1990-01-28 03:56:24'),
	(21,6,'2017-05-23 00:55:57'),
	(22,4,'2011-03-13 10:44:16'),
	(22,7,'1984-11-27 12:00:32'),
	(23,5,'1981-11-11 09:29:30'),
	(23,8,'1979-07-21 13:07:02'),
	(24,6,'1976-05-28 14:46:47'),
	(24,9,'1987-04-23 04:02:13'),
	(25,7,'1991-01-03 07:46:52'),
	(25,10,'1986-02-04 00:27:22'),
	(26,8,'1993-03-23 14:39:06'),
	(26,11,'2020-04-10 11:38:30'),
	(27,9,'1993-09-30 05:01:11'),
	(27,12,'1982-05-27 00:28:39'),
	(28,10,'1987-02-23 23:49:48'),
	(28,13,'2016-01-31 03:31:06'),
	(29,14,'2005-08-10 21:26:18'),
	(30,15,'1972-04-26 03:50:28'),
	(31,1,'1974-09-27 06:54:45'),
	(32,2,'1971-03-07 17:56:12'),
	(33,3,'1983-01-20 03:01:15'),
	(34,4,'1987-05-04 04:55:43'),
	(35,5,'1993-10-03 12:31:35'),
	(36,6,'2005-06-04 21:39:31'),
	(37,7,'1986-09-16 19:45:12'),
	(38,8,'2016-01-14 15:20:14'),
	(39,9,'2016-08-01 03:27:03'),
	(1,10,'1980-01-21 03:48:21'),
	(2,11,'1988-01-12 21:49:40'),
	(3,12,'1977-02-23 05:11:36'),
	(4,13,'1994-07-02 02:34:57'),
	(5,14,'1997-06-15 05:28:22'),
	(6,15,'1994-08-06 02:09:27'),
	(7,1,'2006-06-08 04:48:40'),
	(8,2,'1972-05-08 04:28:32'),
	(9,3,'2012-01-12 11:49:21'),
	(10,4,'2015-06-18 02:44:06'),
	(11,5,'2007-02-18 11:09:39'),
	(12,6,'1987-09-12 17:47:05'),
	(13,7,'1997-08-10 01:53:12'),
	(14,8,'1980-02-29 19:08:43'),
	(15,9,'1999-10-16 13:41:30'),
	(16,10,'1977-09-10 14:15:30'),
	(17,11,'1974-05-09 09:25:58'),
	(18,12,'1996-12-12 22:48:46'),
	(19,13,'1996-03-18 16:21:02'),
	(20,14,'1994-04-21 01:08:55'),
	(21,15,'2001-01-17 03:57:36'),
	(22,1,'2021-05-02 12:47:37'),
	(23,2,'2013-10-02 14:45:04'),
	(24,3,'2002-10-18 02:50:53'),
	(1,4,'2000-03-03 17:16:29'),
	(2,5,'2004-03-30 19:07:17'),
	(3,6,'1992-05-01 11:52:58'),
	(4,7,'2006-09-22 16:29:27'),
	(5,8,'1987-11-07 18:04:52'),
	(6,9,'1973-05-01 22:11:25'),
	(7,11,'1998-09-18 13:05:38'),
	(8,11,'2021-09-08 17:41:25'),
	(40,12,'1978-02-11 22:39:11');

INSERT INTO `procedures` VALUES 
	(1,'basic',929.84,'1995-01-29 00:55:59'),
	(2,'окулист',34.50,'1991-04-21 16:01:13'),
	(3,'хирург',400.00,'2013-07-26 14:57:40'),
	(4,'спирометрия',254.00,'2009-08-25 05:33:42'),
	(5,'маммография',227.68,'2000-07-02 11:46:59'),
	(6,'анализы крови на патогены',300.29,'2002-08-11 02:20:48'),
	(7,'ЭЭГ',637.12,'1995-06-24 06:14:49'),
	(8,'ea ic accusantium',18.66,'1973-06-18 11:35:50'),
	(9,'veniam neque placeat',144.78,'1987-11-18 00:58:59'),
	(10,'placeat sed delectus',84.48,'2015-04-24 03:54:18'),
	(11,'exercitationem minima veniam',964.00,'2005-10-19 01:21:41'),
	(12,'amet sed neque',91.00,'2011-09-20 00:28:16'),
	(13,'ipsum sapiente laudantium',24.27,'1981-04-08 21:40:19'),
	(14,'sequi odio beatae',87.00,'1979-10-03 05:16:55'),
	(15,'pariatur laudantium',360.55,'1983-08-27 15:37:52');

INSERT INTO `expertise_sheets` VALUES 
	(1,1,1,'\0',NULL),
	(2,2,1,'','1994-05-31'),
	(3,3,1,'\0',NULL),
	(4,4,1,'\0',NULL),
	(5,5,1,'','2008-08-18'),
	(6,6,1,'\0',NULL),
	(7,7,1,'','1988-09-17'),
	(8,8,1,'','1988-10-09'),
	(9,9,1,'','1997-04-09'),
	(10,10,1,'','1983-08-16'),
	(11,11,1,'','1996-03-27'),
	(12,12,1,'','2007-06-10'),
	(13,13,1,'','1998-09-23'),
	(14,14,1,'\0',NULL),
	(15,15,1,'\0',NULL),
	(16,16,1,'','1981-03-29'),
	(17,17,1,'','1993-02-01'),
	(18,18,1,'','2006-07-13'),
	(19,19,1,'\0',NULL),
	(20,20,1,'','1996-06-20'),
	(21,21,1,'','2018-01-25'),
	(22,22,1,'','2005-02-09'),
	(23,23,1,'\0',NULL),
	(24,24,1,'','2015-10-07'),
	(25,25,1,'','1999-02-10'),
	(26,26,1,'','1980-09-18'),
	(27,27,1,'','2018-02-24'),
	(28,28,1,'\0',NULL),
	(29,29,1,'\0',NULL),
	(30,30,1,'','1987-04-12'),
	(31,31,1,'','1985-03-21'),
	(32,32,1,'','2005-09-11'),
	(33,33,1,'\0',NULL),
	(34,34,1,'\0',NULL),
	(35,35,1,'\0',NULL),
	(36,36,1,'','2002-10-02'),
	(37,37,1,'\0',NULL),
	(38,38,1,'','1999-07-04'),
	(39,39,1,'','1982-01-26'),
	(40,40,1,'\0',NULL),
	(41,1,2,'','2021-04-13'),
	(42,2,2,'\0',NULL),
	(43,3,2,'','1996-08-30'),
	(44,4,2,'\0',NULL),
	(45,5,3,'','2019-08-02'),
	(46,6,3,'','1981-07-19'),
	(47,7,3,'','2007-09-27'),
	(48,8,4,'\0',NULL),
	(49,9,4,'\0',NULL),
	(50,10,5,'\0',NULL),
	(51,11,5,'\0',NULL),
	(52,12,5,'\0',NULL),
	(53,13,6,'\0',NULL),
	(54,14,6,'\0',NULL),
	(55,15,7,'\0',NULL),
	(56,16,7,'','2009-12-30'),
	(57,17,7,'\0',NULL),
	(58,18,7,'\0',NULL),
	(59,19,7,'\0',NULL),
	(60,20,7,'\0',NULL),
	(61,1,8,'','1985-02-03'),
	(62,2,8,'','1992-04-08'),
	(63,3,8,'\0',NULL),
	(64,4,9,'','1986-05-02'),
	(65,5,9,'\0',NULL),
	(66,6,9,'','2020-05-03'),
	(67,7,9,'','1980-06-24'),
	(68,8,9,'','1994-04-25'),
	(69,9,9,'','2004-10-15'),
	(70,10,10,'','1984-06-01'),
	(71,11,10,'\0',NULL),
	(72,12,10,'','1976-05-18'),
	(73,13,10,'\0',NULL),
	(74,14,10,'','2016-04-20'),
	(75,15,10,'\0',NULL),
	(76,16,11,'','1976-12-29'),
	(77,17,11,'\0',NULL),
	(78,18,12,'\0',NULL),
	(79,19,12,'','2001-08-28'),
	(80,20,12,'\0',NULL),
	(81,21,12,'\0',NULL),
	(82,22,12,'','1987-07-11'),
	(83,23,12,'','2018-12-15'),
	(84,24,12,'','2001-05-08'),
	(85,25,12,'\0',NULL),
	(86,26,12,'','2012-08-18'),
	(87,27,12,'\0',NULL),
	(88,28,12,'\0',NULL),
	(89,29,12,'','2010-07-18'),
	(90,30,12,'\0',NULL),
	(91,31,13,'','2000-12-11'),
	(92,32,13,'\0',NULL),
	(93,33,13,'','1974-06-09'),
	(94,34,13,'\0',NULL),
	(95,35,13,'\0',NULL),
	(96,36,14,'\0',NULL),
	(97,37,14,'\0',NULL),
	(98,38,15,'','1991-02-24'),
	(99,39,15,'','2008-10-28'),
	(100,40,15,'\0',NULL);

INSERT INTO `departments_therapist` VALUES 
	(1,38,1),
	(2,39,2),
	(3,40,3),
	(4,38,4),
	(5,39,5),
	(6,40,6),
	(7,38,7),
	(8,39,8),
	(9,40,9),
	(10,38,10);

SET foreign_key_checks = 1;
