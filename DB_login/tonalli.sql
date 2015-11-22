-- MySQL Workbench Synchronization
-- Generated: 2015-11-22 10:40
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: chocho

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `tonalli` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `tonalli`.`user_account` (
  `user_id` BIGINT(20) NOT NULL COMMENT '',
  `status` TINYINT(1) NOT NULL COMMENT '',
  `username` VARCHAR(255) NOT NULL COMMENT '',
  `password` VARCHAR(255) NOT NULL COMMENT '',
  PRIMARY KEY (`user_id`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `tonalli`.`staff` (
  `staff_id` BIGINT(20) NOT NULL COMMENT '',
  `user_id` BIGINT(20) NOT NULL COMMENT '',
  `first_name` VARCHAR(255) NOT NULL COMMENT '',
  `last_name` VARCHAR(255) NOT NULL COMMENT '',
  PRIMARY KEY (`staff_id`)  COMMENT '',
  INDEX `fk_staff_user_account_idx` (`user_id` ASC)  COMMENT '',
  CONSTRAINT `fk_staff_user_account`
    FOREIGN KEY (`user_id`)
    REFERENCES `tonalli`.`user_account` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `tonalli`.`staff_attrib` (
  `staff_attrib_id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '',
  `attrib_name` VARCHAR(255) NOT NULL COMMENT '',
  `attrib_value` VARCHAR(255) NOT NULL COMMENT '',
  `staff_id` BIGINT(20) NOT NULL COMMENT '',
  PRIMARY KEY (`staff_attrib_id`)  COMMENT '',
  INDEX `fk_staff_attrib_1_idx` (`staff_id` ASC)  COMMENT '',
  CONSTRAINT `fk_staff_attrib_1`
    FOREIGN KEY (`staff_id`)
    REFERENCES `tonalli`.`staff` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'Atributos de los miembros del Staff';

CREATE TABLE IF NOT EXISTS `tonalli`.`permits` (
  `staff_id` BIGINT(20) NOT NULL COMMENT '',
  `permits` TEXT NOT NULL COMMENT '',
  PRIMARY KEY (`staff_id`)  COMMENT '',
  CONSTRAINT `fk_session_1`
    FOREIGN KEY (`staff_id`)
    REFERENCES `tonalli`.`staff` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
