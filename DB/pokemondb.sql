-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pokemondb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pokemondb` ;

-- -----------------------------------------------------
-- Schema pokemondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokemondb` DEFAULT CHARACTER SET utf8 ;
USE `pokemondb` ;

-- -----------------------------------------------------
-- Table `Pokemon`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Pokemon` ;

CREATE TABLE IF NOT EXISTS `Pokemon` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS pokemonuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'pokemonuser'@'localhost' IDENTIFIED BY 'pokemonuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'pokemonuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Pokemon`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokemondb`;
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (1, 'Alakazam', 'Its brain can outperfom a super computer. Its intelligence quotient is said to be 5000');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (2, 'Blastoise', 'A brutal pokemon with pressurized water jets on its shell. They are used for high speed tackles');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (3, 'Chansey', 'A rare and elusive Pokemon that is said to bring happiness to those who manage to catch it.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (4, 'Charizard', 'Spits fire that is hot enough to melt boulders. Known to unintentionally cause forest fires.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (5, 'Clefairy', 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (6, 'Gyrados', 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (8, 'Machamp', 'Using its amazing muscles, it throws powerful punches that can knock its victim clear over the horizon.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (9, 'Mageton', 'Formed by several Magnemites linked together. It frequently appears when sunspots flare up.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (10, 'Mewtwo', 'A scientist created this Pokémon after years of horrific gene-splicing and DNA engineering experiments.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (11, 'Nidoking', 'Uses its powerful tail in battle to smash, constrict, then break its prey\'s bones.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (12, 'Ninetails', 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1,000-year curse.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (13, 'Poliwrath', 'An adept swimmer at both the front crawl and breaststroke. Easily overtakes the best human swimmers.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (14, 'Raichu', 'Its long tail serves as a ground to protect itself from its own high-voltage power.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (15, 'Venusaur', 'This plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (16, 'Zapdos', 'A legendary bird Pokémon said to appear from clouds while wielding enormous lightning bolts.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (17, 'Beedrill', 'Flies at high speed and attacks using the large, venomous stingers on its forelegs and tail.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (18, 'Dragonair', 'A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (19, 'Dugtrio', 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (21, 'Electabuzz', 'It loves to feed on strong electricity. It occasionally appears around large power plants and so on.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (7, 'Hitmonchan', 'While seeming to do nothing, it fires punches in lightning-fast volleys that are impossible to see.');
INSERT INTO `Pokemon` (`id`, `name`, `description`) VALUES (20, 'Electabuzz', 'Normally found near power plants, it can wander away and cause major blackouts in cities.');

COMMIT;

