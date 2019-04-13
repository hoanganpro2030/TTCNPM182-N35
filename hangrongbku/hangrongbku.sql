-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`users` ;

CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `iduser` INT NOT NULL,
  `email` VARCHAR(20) NOT NULL,
  `name` VARCHAR(25) NULL,
  `password` VARCHAR(20) NOT NULL,
  `phone` CHAR(20) NULL,
  `address` VARCHAR(45) NULL,
  `sex` CHAR(5) NULL,
  `avatar` VARCHAR(25) NULL,
  `status` CHAR(10) NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`categories` ;

CREATE TABLE IF NOT EXISTS `mydb`.`categories` (
  `idcategory` INT NOT NULL,
  `category_name` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`products` ;

CREATE TABLE IF NOT EXISTS `mydb`.`products` (
  `idproduct` INT NOT NULL,
  `prd_name` VARCHAR(45) NULL,
  `id_seller` INT NOT NULL,
  `price` DECIMAL(10,0) NULL,
  `description` VARCHAR(45) NULL,
  `id_category` INT NOT NULL,
  `status` CHAR(10) NULL,
  `last_time` DATETIME NULL,
  `num_star` INT NULL,
  `num_rate` INT NULL,
  `image` VARCHAR(45) NULL,
  PRIMARY KEY (`idproduct`),
  INDEX `fk_products_seller_idx` (`id_seller` ASC),
  INDEX `fk_products_category_idx` (`id_category` ASC),
  CONSTRAINT `fk_products_category`
    FOREIGN KEY (`id_category`)
    REFERENCES `mydb`.`categories` (`idcategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_seller`
    FOREIGN KEY (`id_seller`)
    REFERENCES `mydb`.`users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`orders` ;

CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `idorders` INT NOT NULL,
  `date` DATETIME NULL,
  `id_user` INT NOT NULL,
  `total` DECIMAL(10,0) NULL,
  PRIMARY KEY (`idorders`),
  INDEX `fk_orders_user_idx` (`id_user` ASC),
  CONSTRAINT `fk_orders_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`order_detail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`order_detail` ;

CREATE TABLE IF NOT EXISTS `mydb`.`order_detail` (
  `idorder_detail` INT NOT NULL,
  `id_product` INT NOT NULL,
  `price` DECIMAL(10,0) NULL,
  `quantity` INT NULL,
  `id_order` INT NOT NULL,
  PRIMARY KEY (`idorder_detail`),
  INDEX `fk_order_detail_order_idx` (`id_order` ASC),
  INDEX `fk_order_detail_product_idx` (`id_product` ASC),
  CONSTRAINT `fk_order_detail_order`
    FOREIGN KEY (`id_order`)
    REFERENCES `mydb`.`orders` (`idorders`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_detail_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `mydb`.`products` (`idproduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user_cart`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`user_cart` ;

CREATE TABLE IF NOT EXISTS `mydb`.`user_cart` (
  `idcart` INT NOT NULL,
  `id_user` INT NOT NULL,
  `id_product` INT NOT NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`idcart`),
  INDEX `fk_user_cart_user_idx` (`id_user` ASC),
  INDEX `fk_user_cart_product_idx` (`id_product` ASC),
  CONSTRAINT `fk_user_cart_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_cart_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `mydb`.`products` (`idproduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`comments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`comments` ;

CREATE TABLE IF NOT EXISTS `mydb`.`comments` (
  `idcoments` INT NOT NULL,
  `id_user` INT NOT NULL,
  `id_product` INT NOT NULL,
  `content` NVARCHAR(45) NULL,
  PRIMARY KEY (`idcoments`),
  INDEX `fk_comments_user_idx` (`id_user` ASC),
  INDEX `fk_comments_product_idx` (`id_product` ASC),
  CONSTRAINT `fk_comments_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `mydb`.`products` (`idproduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`admin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`admin` ;

CREATE TABLE IF NOT EXISTS `mydb`.`admin` (
  `idadmin` INT NOT NULL,
  `ad_name` VARCHAR(20) NULL,
  `ad_pass` VARCHAR(20) NULL,
  PRIMARY KEY (`idadmin`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

