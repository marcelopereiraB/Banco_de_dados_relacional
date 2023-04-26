
USE `aula22-minha_forma` ;

-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`conservantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`conservantes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`picole_leite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`picole_leite` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sabor` VARCHAR(30) NOT NULL,
  `ingredientes` VARCHAR(50) NOT NULL,
  `preco_lote` DECIMAL(8,2) NOT NULL,
  `tipo_embalagem` VARCHAR(45) NOT NULL,
  `id_conservantes` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_picole_leite_1_idx` (`id_conservantes` ASC) VISIBLE,
  CONSTRAINT `fk_picole_leite_10`
    FOREIGN KEY (`id_conservantes`)
    REFERENCES `aula22-minha_forma`.`conservantes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`aditivos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`aditivos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `formula_quimica` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`picole_agua`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`picole_agua` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sabor` VARCHAR(30) NOT NULL,
  `ingredientes` VARCHAR(50) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `tipo_embalagem` VARCHAR(45) NOT NULL,
  `id_aditivos` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_picole_agua_1_idx` (`id_aditivos` ASC) VISIBLE,
  CONSTRAINT `fk_picole_agua_10`
    FOREIGN KEY (`id_aditivos`)
    REFERENCES `aula22-minha_forma`.`aditivos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`revendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`revendedor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(45) NOT NULL,
  `razao_social` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`notas_fiscais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`notas_fiscais` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `quantidade` DECIMAL(8,2) NOT NULL,
  `numero_serie` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `id_picole_leite` INT NOT NULL,
  `id_picole_agua` INT NOT NULL,
  `id_revendedor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_notas_fiscais_agua_1_idx` (`id_picole_leite` ASC) VISIBLE,
  INDEX `fk_notas_fiscais_agua_2_idx` (`id_picole_agua` ASC) VISIBLE,
  INDEX `fk_notas_fiscais_agua_3_idx` (`id_revendedor` ASC) VISIBLE,
  CONSTRAINT `fk_notas_fiscais_agua_1`
    FOREIGN KEY (`id_picole_leite`)
    REFERENCES `aula22-minha_forma`.`picole_leite` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_fiscais_agua_2`
    FOREIGN KEY (`id_picole_agua`)
    REFERENCES `aula22-minha_forma`.`picole_agua` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_fiscais_agua_3`
    FOREIGN KEY (`id_revendedor`)
    REFERENCES `aula22-minha_forma`.`revendedor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`revendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`revendedor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(45) NOT NULL,
  `razao_social` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`conservantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`conservantes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`picole_leite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`picole_leite` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sabor` VARCHAR(30) NOT NULL,
  `ingredientes` VARCHAR(50) NOT NULL,
  `preco_lote` DECIMAL(8,2) NOT NULL,
  `tipo_embalagem` VARCHAR(45) NOT NULL,
  `id_conservantes` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_picole_leite_1_idx` (`id_conservantes` ASC) VISIBLE,
  CONSTRAINT `fk_picole_leite_10`
    FOREIGN KEY (`id_conservantes`)
    REFERENCES `aula22-minha_forma`.`conservantes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`notas_fiscais_leite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`notas_fiscais_leite` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `quantidade` DECIMAL(8,2) NOT NULL,
  `numero_serie` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `id_picole_leite` INT NOT NULL,
  `id_revendedor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_notas_fiscais_agua_1_idx` (`id_picole_leite` ASC) VISIBLE,
  INDEX `fk_notas_fiscais_agua_3_idx` (`id_revendedor` ASC) VISIBLE,
  CONSTRAINT `fk_notas_fiscais_agua_10`
    FOREIGN KEY (`id_picole_leite`)
    REFERENCES `aula22-minha_forma`.`picole_leite` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_fiscais_agua_30`
    FOREIGN KEY (`id_revendedor`)
    REFERENCES `aula22-minha_forma`.`revendedor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`aditivos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`aditivos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `formula_quimica` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`picole_agua`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`picole_agua` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sabor` VARCHAR(30) NOT NULL,
  `ingredientes` VARCHAR(50) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `tipo_embalagem` VARCHAR(45) NOT NULL,
  `id_aditivos` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_picole_agua_1_idx` (`id_aditivos` ASC) VISIBLE,
  CONSTRAINT `fk_picole_agua_10`
    FOREIGN KEY (`id_aditivos`)
    REFERENCES `aula22-minha_forma`.`aditivos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `aula22-minha_forma`.`notas_fiscais_agua`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula22-minha_forma`.`notas_fiscais_agua` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `quantidade` DECIMAL(8,2) NOT NULL,
  `numero_serie` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `id_picole_agua` INT NOT NULL,
  `id_revendedor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_notas_fiscais_agua_2_idx` (`id_picole_agua` ASC) VISIBLE,
  INDEX `fk_notas_fiscais_agua_3_idx` (`id_revendedor` ASC) VISIBLE,
  CONSTRAINT `fk_notas_fiscais_agua_200`
    FOREIGN KEY (`id_picole_agua`)
    REFERENCES `aula22-minha_forma`.`picole_agua` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_fiscais_agua_300`
    FOREIGN KEY (`id_revendedor`)
    REFERENCES `aula22-minha_forma`.`revendedor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)




