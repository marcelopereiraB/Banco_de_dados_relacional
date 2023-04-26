
USE `clinica` ;

-- -----------------------------------------------------
-- Table `clinica`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`paciente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(14) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `clinica`.`tratamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`tratamentos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_visita` DATE NOT NULL,
  `horario_visita` TIME NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `clinica`.`especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`especialidades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `clinica`.`medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`medicos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `crm` VARCHAR(45) NOT NULL,
  `salario` DECIMAL(8,2) NOT NULL,
  `id_paciente` INT NOT NULL,
  `id_tratamentos` INT NOT NULL,
  `id_especialidades` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_medicos_1_idx` (`id_paciente` ASC) VISIBLE,
  INDEX `fk_medicos_2_idx` (`id_tratamentos` ASC) VISIBLE,
  INDEX `fk_medicos_3_idx` (`id_especialidades` ASC) VISIBLE,
  CONSTRAINT `fk_medicos_1`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `clinica`.`paciente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicos_2`
    FOREIGN KEY (`id_tratamentos`)
    REFERENCES `clinica`.`tratamentos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicos_3`
    FOREIGN KEY (`id_especialidades`)
    REFERENCES `clinica`.`especialidades` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `clinica`.`quartos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`quartos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero_do_quarto` VARCHAR(10) NOT NULL,
  `andar` INT NOT NULL,
  `id_paciente` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_quartos_1_idx` (`id_paciente` ASC) VISIBLE,
  CONSTRAINT `fk_quartos_1`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `clinica`.`paciente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



