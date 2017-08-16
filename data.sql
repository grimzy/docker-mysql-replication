DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `dob` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Nero","Navarro","2018-02-07 03:53:04"),("Ingrid","Lambert","2018-05-02 22:34:24"),("Brianna","Oneil","2016-01-06 20:41:36"),("George","Hurley","2018-06-13 05:23:18"),("Chase","Hebert","2017-09-13 07:40:55"),("Carissa","Randall","2016-11-10 05:12:13"),("Todd","Burks","2016-01-26 08:31:16"),("Rashad","Daugherty","2016-03-15 00:37:41"),("Byron","Banks","2017-09-19 02:15:30"),("Edward","Morse","2018-01-21 21:57:36");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Garrison","Fleming","2018-06-30 00:34:13"),("Dara","Lynn","2016-01-12 02:09:39"),("Kato","Glass","2016-05-17 22:52:38"),("Roth","Mason","2017-05-09 20:59:53"),("Armand","Osborn","2016-08-25 17:28:19"),("Dominic","Hall","2017-03-26 21:03:56"),("Aiko","Castro","2017-12-09 00:27:22"),("Rhiannon","Johns","2017-01-10 05:40:40"),("Dane","Jackson","2016-08-11 04:16:28"),("Kibo","Hood","2018-07-25 05:25:19");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Isaac","Trevino","2018-02-18 01:12:57"),("Samson","Hooper","2017-07-24 18:57:49"),("Dorian","Berg","2017-04-21 12:19:05"),("Michelle","Cantrell","2016-02-28 01:01:22"),("Reese","Bond","2017-07-15 20:09:00"),("Hamilton","Walton","2017-03-06 16:48:37"),("Amos","Maldonado","2017-07-07 16:30:25"),("Ifeoma","Morrow","2017-09-04 09:55:42"),("Hop","Slater","2018-01-12 15:15:17"),("Nero","Duffy","2017-03-23 05:18:44");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Cassandra","Carter","2017-11-27 11:54:10"),("Warren","Green","2018-03-14 02:09:20"),("Aaron","Bridges","2017-07-23 05:04:08"),("Nigel","Coleman","2017-03-19 17:32:36"),("Gay","House","2018-06-23 15:29:36"),("Lenore","Joyce","2016-06-14 17:04:18"),("Jane","Walker","2016-04-23 18:29:11"),("Diana","Hendrix","2017-09-25 22:23:47"),("Kasimir","Shelton","2016-03-16 06:29:18"),("Zane","Boyd","2017-10-10 21:37:16");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Alea","Wilder","2016-11-21 14:02:26"),("Elizabeth","Joyner","2016-01-01 11:16:10"),("Hop","Case","2016-06-17 12:27:07"),("Indira","Acevedo","2018-04-08 22:21:01"),("Gay","Oliver","2018-08-13 13:43:44"),("Cassady","Hogan","2016-08-04 01:19:18"),("Dillon","Joyce","2016-07-30 02:26:02"),("Orson","Jefferson","2018-06-07 03:16:52"),("Caryn","Gallagher","2016-11-12 11:42:03"),("Hillary","Hays","2017-06-22 11:11:04");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Athena","Cabrera","2017-07-01 09:27:12"),("Thomas","Huffman","2017-02-24 04:38:50"),("Darius","Pearson","2018-01-05 08:29:34"),("Marsden","Kirk","2018-06-19 04:47:42"),("Ivan","Crosby","2018-01-23 19:56:19"),("Quynn","Frye","2016-03-07 03:21:33"),("Ruby","Coleman","2016-06-16 06:34:01"),("Kuame","Greer","2017-11-24 16:06:29"),("Eagan","Mathis","2017-11-01 13:42:29"),("Azalia","Harrell","2016-05-10 09:24:46");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Yen","Wood","2016-12-21 05:24:05"),("Yetta","Vance","2016-10-17 08:27:28"),("Lawrence","Coleman","2016-08-05 04:40:30"),("Kyle","Marquez","2016-03-03 13:17:33"),("Mechelle","Roth","2016-04-20 17:03:10"),("Marshall","Wood","2017-12-04 13:46:42"),("Gage","Holder","2016-04-14 01:27:13"),("Lara","Mitchell","2018-01-12 07:05:36"),("Nita","Harvey","2018-08-06 16:16:20"),("Byron","Sharp","2016-10-19 03:54:42");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Carlos","Rhodes","2016-12-27 05:05:02"),("Brennan","Fitzpatrick","2018-07-16 04:42:02"),("Nomlanga","Stanley","2017-05-30 04:18:35"),("Charde","Hendricks","2018-06-29 13:29:02"),("Merrill","Phelps","2016-01-27 06:12:52"),("Christine","Rodgers","2017-05-06 04:47:16"),("Blair","Glass","2018-06-21 12:06:41"),("Kieran","Mccall","2017-10-21 18:48:45"),("Gwendolyn","Hull","2016-07-03 08:14:59"),("Whoopi","Griffith","2016-06-19 18:07:15");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Violet","Scott","2017-01-23 03:16:40"),("Dolan","Cantrell","2018-04-16 21:30:28"),("Addison","Salas","2016-07-31 04:47:40"),("Melissa","Rasmussen","2016-02-25 15:19:58"),("Camilla","Lucas","2016-06-03 14:28:59"),("Diana","Hunt","2017-02-09 01:21:39"),("Leandra","Mcbride","2018-03-18 10:38:15"),("Sonia","Short","2017-02-10 13:09:12"),("Dillon","Ramsey","2018-07-06 12:37:14"),("Shea","George","2017-02-24 03:49:08");
INSERT INTO `people` (`first_name`,`last_name`,`dob`) VALUES ("Walker","Perkins","2016-03-21 17:05:05"),("Leigh","Jensen","2016-01-28 18:53:06"),("Zephr","Ingram","2018-05-18 20:39:48"),("Patrick","Stephenson","2016-06-21 18:25:18"),("Galvin","Harrison","2017-07-23 22:40:33"),("Maryam","Mcbride","2017-08-31 12:19:58"),("August","Craft","2016-08-11 08:27:49"),("Natalie","Perkins","2017-10-29 13:55:51"),("Walker","Holcomb","2017-02-17 07:52:33"),("Jacob","Mitchell","2017-09-22 15:15:28");