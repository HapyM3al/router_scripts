# this assumes you have done the mysql secure install and made a data base and user on right database with correct permissions.

+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| id         | int(11)       | NO   | PRI | NULL    | auto_increment |
| start_time | datetime      | YES  |     | NULL    |                |
| rsrq       | decimal(10,0) | YES  |     | NULL    |                |
| rsrp       | decimal(10,0) | YES  |     | NULL    |                |
| rssi       | decimal(10,0) | YES  |     | NULL    |                |
| sinr       | decimal(10,0) | YES  |     | NULL    |                |
| mode       | text          | YES  |     | NULL    |                |
| cell_id    | text          | YES  |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+


CREATE TABLE `b315` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `rsrq` decimal(10,0) DEFAULT NULL,
  `rsrp` decimal(10,0) DEFAULT NULL,
  `rssi` decimal(10,0) DEFAULT NULL,
  `sinr` decimal(10,0) DEFAULT NULL,
  `mode` text,
  `cell_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1
