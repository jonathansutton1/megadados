ingrediente-- MySQL Script generated by MySQL Workbench
-- qua 08 fev 2023 09:26:16
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ingrediente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ingrediente` (
  `idingredientes` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `preco_unitario` DECIMAL NULL,
  `Tipo` VARCHAR(45) NULL,
  `Calorias` INT NULL,
  `Quantidade` INT NULL,
  PRIMARY KEY (`idingredientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Prato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Prato` (
  `idPrato` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Preco` DECIMAL NULL,
  PRIMARY KEY (`idPrato`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ingrediente_Prato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ingrediente_Prato` (
  `ingrediente_idingredientes` INT NOT NULL,
  `Prato_idPrato` INT NOT NULL,
  `Quantidade` INT NULL,
  PRIMARY KEY (`ingrediente_idingredientes`, `Prato_idPrato`),
  INDEX `fk_ingrediente_has_Prato_Prato1_idx` (`Prato_idPrato` ASC) VISIBLE,
  INDEX `fk_ingrediente_has_Prato_ingrediente1_idx` (`ingrediente_idingredientes` ASC) VISIBLE,
  CONSTRAINT `fk_ingrediente_has_Prato_ingrediente1`
    FOREIGN KEY (`ingrediente_idingredientes`)
    REFERENCES `mydb`.`ingrediente` (`idingredientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ingrediente_has_Prato_Prato1`
    FOREIGN KEY (`Prato_idPrato`)
    REFERENCES `mydb`.`Prato` (`idPrato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
