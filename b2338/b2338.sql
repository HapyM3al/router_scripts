# this assumes did the mysql secure install and added a database and right permissions to a user already. 

+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| id          | int(11)       | NO   | PRI | NULL    | auto_increment |
| start_time  | datetime      | YES  |     | NULL    |                |
| rx_bit_rate | decimal(10,0) | YES  |     | NULL    |                |
| tx_bit_rate | decimal(10,0) | YES  |     | NULL    |                |
| rssi        | decimal(10,0) | YES  |     | NULL    |                |
| sinr        | decimal(10,0) | YES  |     | NULL    |                |
| rsrp        | decimal(10,0) | YES  |     | NULL    |                |
| rsrq        | decimal(10,0) | YES  |     | NULL    |                |
| band        | decimal(10,0) | YES  |     | NULL    |                |
| data_tx     | double        | YES  |     | NULL    |                |
| data_rx     | double        | YES  |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+

CREATE TABLE `b2338` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `rx_bit_rate` decimal(10,0) DEFAULT NULL,
  `tx_bit_rate` decimal(10,0) DEFAULT NULL,
  `rssi` decimal(10,0) DEFAULT NULL,
  `sinr` decimal(10,0) DEFAULT NULL,
  `rsrp` decimal(10,0) DEFAULT NULL,
  `rsrq` decimal(10,0) DEFAULT NULL,
  `band` decimal(10,0) DEFAULT NULL,
  `data_tx` double DEFAULT NULL,
  `data_rx` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1
