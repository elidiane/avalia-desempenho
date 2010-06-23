
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS appraisals;
CREATE TABLE IF NOT EXISTS appraisals (
	id          int(11) NOT NULL AUTO_INCREMENT,
	admin_id    int(11) NOT NULL,
	role_id     int(11) NOT NULL,
	title       varchar(255) NOT NULL,
	created     datetime DEFAULT NULL,
	updated     datetime DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees (
	id         int(11) NOT NULL AUTO_INCREMENT,
	role_id    int(11) NOT NULL,
	`code`     varchar(255) NOT NULL,
	`password` varchar(255) NOT NULL,
	`name`     varchar(255) NOT NULL,
	is_leader  tinyint(1) NOT NULL,
	is_admin   tinyint(1) NOT NULL,
	created    datetime DEFAULT NULL,
	updated    datetime DEFAULT NULL,
	PRIMARY KEY (id),
	UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS groups;
CREATE TABLE IF NOT EXISTS groups (
	id           int(11) NOT NULL AUTO_INCREMENT,
	appraisal_id int(11) NOT NULL,
	title        varchar(255) NOT NULL,
	created      datetime DEFAULT NULL,
	updated      datetime DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS options;
CREATE TABLE IF NOT EXISTS `options` (
	id          int(11) NOT NULL AUTO_INCREMENT,
	question_id int(11) NOT NULL,
	title       varchar(255) NOT NULL,
	`value`     int(11) NOT NULL,
	created     datetime DEFAULT NULL,
	updated     datetime DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS questions;
CREATE TABLE IF NOT EXISTS questions (
	id          int(11) NOT NULL AUTO_INCREMENT,
	group_id    int(11) NOT NULL,
	title       varchar(255) NOT NULL,
	description text NOT NULL,
	created     datetime DEFAULT NULL,
	updated     datetime DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS roles;
CREATE TABLE IF NOT EXISTS roles (
	id               int(11) NOT NULL AUTO_INCREMENT,
	`code`           varchar(255) NOT NULL,
	title            varchar(255) NOT NULL,
	sumary           text NOT NULL,
	responsibilities text NOT NULL,
	created          datetime DEFAULT NULL,
	updated          datetime DEFAULT NULL,
	PRIMARY KEY (id),
	UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS interactions;
CREATE TABLE IF NOT EXISTS interactions (
	id                int(11) NOT NULL AUTO_INCREMENT,
	leader_id         int(11) NOT NULL,
	employee_id       int(11) NOT NULL,
	leader_answered   tinyint(1) NOT NULL,
	employee_answered tinyint(1) NOT NULL,
	pair_answered     tinyint(1) NOT NULL,
	created           datetime DEFAULT NULL,
	updated           datetime DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS answers;
CREATE TABLE IF NOT EXISTS answers (
	id                 int(11) NOT NULL AUTO_INCREMENT,
	interaction_id     int(11) NOT NULL,
	question_id        int(11) NOT NULL,
	leader_option_id   int(11) NOT NULL,
	employee_option_id int(11) NOT NULL,
	pair_option_id     int(11) NOT NULL,
	created            datetime DEFAULT NULL,
	updated            datetime DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------------------------


