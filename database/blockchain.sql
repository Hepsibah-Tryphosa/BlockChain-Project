
create database if not exists `block_chain`;

USE `block_chain`;

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `sender_info` (
  
  `sendername` varchar(50) NOT NULL,
   `loginid` int(10) NOT NULL auto_increment,
   `email` varchar(100) default NULL,
    `contactno` varchar(100) default NULL,
     `password` varchar(100) default NULL,
     `jobrole` varchar(100) default NULL,
      `status` varchar(10) default NULL,
  `publicKey` varchar(100) default NULL,
  
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `receiver_info` (
  
  `receivername` varchar(50) NOT NULL,
   `loginid` int(10) NOT NULL auto_increment,
   `email` varchar(100) default NULL,
    `contactno` varchar(100) default NULL,
     `password` varchar(100) default NULL,
     `jobrole` varchar(100) default NULL,
      `status` varchar(10) default NULL,
  `publicKey` varchar(100) default NULL,
  
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
