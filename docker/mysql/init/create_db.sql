CREATE DATABASE IF NOT EXISTS `joomla`;

CREATE USER IF NOT EXISTS 'pma'@'%' IDENTIFIED BY 'nRKv5cdE&Prd@9HQNB';
GRANT ALL ON *.* TO 'pma'@'%';

CREATE USER IF NOT EXISTS 'db_user'@'%' IDENTIFIED BY 'db_user_password';
GRANT ALL ON joomla.* TO 'db_user'@'%';
