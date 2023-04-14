
USE `faculdade` ;

-- -----------------------------------------------------
-- Table `faculdade`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`cursos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `faculdade`.`disciplinas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`disciplinas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `faculdade`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`aluno` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `periodo` VARCHAR(45) NOT NULL,
  `numero_matricula` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(20) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `ano_inicio` DATE NOT NULL,
  `ano_termino` DATE NOT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `faculdade`.`turmas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`turmas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `notas` VARCHAR(10) NOT NULL,
  `nome_turma` VARCHAR(45) NOT NULL,
  `id_disciplinas_curso` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_turmas_1_idx` (`id_disciplinas_curso` ASC) VISIBLE,
  CONSTRAINT `fk_turmas_1`
    FOREIGN KEY (`id_disciplinas_curso`)
    REFERENCES `faculdade`.`disciplinas_cursos` (`int`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `faculdade`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`professor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `especializacao` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(20) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `id_turmas` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_professor_1_idx` (`id_turmas` ASC) VISIBLE,
  CONSTRAINT `fk_professor_1`
    FOREIGN KEY (`id_turmas`)
    REFERENCES `faculdade`.`turmas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `faculdade`.`disciplinas_cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`disciplinas_cursos` (
  `int` INT NOT NULL AUTO_INCREMENT,
  `id_disciplinas` INT NOT NULL,
  `id_cursos` INT NOT NULL,
  `id_alunos` INT NOT NULL,
  `id_professor` INT NOT NULL,
  PRIMARY KEY (`int`),
  INDEX `fk_disciplinas_cursos_1_idx` (`id_disciplinas` ASC) VISIBLE,
  INDEX `fk_disciplinas_cursos_2_idx` (`id_cursos` ASC) VISIBLE,
  INDEX `fk_disciplinas_cursos_3_idx` (`id_alunos` ASC) VISIBLE,
  INDEX `fk_disciplinas_cursos_3_idx1` (`id_professor` ASC) VISIBLE,
  CONSTRAINT `fk_disciplinas_cursos_1`
    FOREIGN KEY (`id_disciplinas`)
    REFERENCES `faculdade`.`disciplinas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplinas_cursos_2`
    FOREIGN KEY (`id_cursos`)
    REFERENCES `faculdade`.`cursos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplinas_cursos_3`
    FOREIGN KEY (`id_alunos`)
    REFERENCES `faculdade`.`aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplinas_cursos_3`
    FOREIGN KEY (`id_professor`)
    REFERENCES `faculdade`.`professor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `faculdade`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`funcionario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `funcao` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `id_professor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_funcionario_1_idx` (`id_professor` ASC) VISIBLE,
  CONSTRAINT `fk_funcionario_1`
    FOREIGN KEY (`id_professor`)
    REFERENCES `faculdade`.`professor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `faculdade`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `faculdade`.`status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_aluno` INT NOT NULL,
  `status_aluno` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_status_1_idx` (`id_aluno` ASC) VISIBLE,
  CONSTRAINT `fk_status_1`
    FOREIGN KEY (`id_aluno`)
    REFERENCES `faculdade`.`aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

