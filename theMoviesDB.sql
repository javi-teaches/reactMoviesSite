# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.35-MariaDB)
# Base de datos: theMoviesDB
# Tiempo de Generación: 2020-09-01 21:33:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla movies
# ------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS `theMoviesDB`;
USE `theMoviesDB`;

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `overview` mediumtext,
  `releaseDate` date DEFAULT NULL,
  `poster` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;

INSERT INTO `movies` (`id`, `title`, `overview`, `releaseDate`, `poster`)
VALUES
	(1,'Proyecto Power','Comienza a correrse la voz por las calles de Nueva Orleans de una misteriosa pastilla nueva que le confiere superpoderes únicos a cada persona que la consume. ¿La trampa? No sabes qué puede pasar hasta que la tomas... Algunos adquieren una piel a prueba de balas, invisibilidad y fuerza sobrehumana, mientras que otros padecen una reacción más letal. Con la llegada de la pastilla, la tasa de delitos de la ciudad escala a niveles peligrosos, por lo que un policía local (Joseph Gordon-Levitt) se une a una traficante de drogas adolescente (Dominique Fishback) y a un exsoldado motivado por un plan de venganza secreto (Jamie Foxx) para enfrentar con poder al poder. Tanto es así, que se arriesgan a tomar la pastilla con el objetivo de encontrar y detener al grupo responsable de su elaboración.','2020-08-14','https://image.tmdb.org/t/p/w500/1v6PdRmGGDWlKrXCje24C8IpZs1.jpg'),
	(2,'Una Noche en Bangkok','El mejor asesino del negocio hace su 500º asesinato y decide retirarse. En cambio, se ve envuelto en una feroz batalla de ingenio con el enemigo perfecto.','2020-08-25','https://image.tmdb.org/t/p/w500/6K2uP9uhxVDYteUQLHhLUvEXbzL.jpg'),
	(3,'Rogue','Rogue es la historia de una pequeña unidad mercenaria de soldados que han sido contratados por el gobernador de un país africano para rescatar a su hija que ha sido secuestrada por una organización terrorista.','2020-08-20','https://image.tmdb.org/t/p/w500/uOw5JD8IlD546feZ6oxbIjvN66P.jpg'),
	(4,'Superman: Man of Tomorrow','Es el comienzo de una nueva era de héroes, y Metropolis acaba de conocer a la primera. Pero mientras el pasante del Daily Planet Clark Kent, que trabaja junto a la reportera Lois Lane, ejerce en secreto sus poderes alienígenas de vuelo, superfuerza y visión de rayos X en la batalla por el bien, hay problemas aún mayores en el horizonte.','2020-08-23','https://image.tmdb.org/t/p/w500/6Bbq8qQWpoApLZYWFFAuZ1r2gFw.jpg'),
	(5,'Ava','Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.','2020-08-06','https://image.tmdb.org/t/p/w500/uGhQ2ZGBpzCj6wC5jUrybsZuPTI.jpg'),
	(6,'Crímenes de familia','Las vidas de Alicia e Ignacio, un matrimonio de uno de los barrios más lujosos de Buenos Aires, comienzan a alterarse cuando su propio hijo está muy cerca de quedar preso por una acusación de intento de homicidio de su ex esposa.','2020-08-20','https://image.tmdb.org/t/p/w500/5pe30v0z4ucVgwh5nR439cCzwwO.jpg'),
	(7,'¡Scooby!','Con cientos de casos resueltos y aventuras compartidas, Scooby y la pandilla se enfrentan al misterio más grande y desafiante de todos los tiempos: un complot para liberar al perro fantasma Cerberus en el mundo. Mientras compiten para detener esta escasez de perros global, la pandilla descubre que Scooby tiene un legado secreto y un destino épico más grande de lo que cualquiera podría haber imaginado.','2020-07-08','https://image.tmdb.org/t/p/w500/b5bVzqrUZscKxNvXPBtrMHVKLU0.jpg'),
	(8,'Deathstroke: Caballeros y Dragones','Hace diez años, Slade Wilson, alias el súper asesino llamado Deathstroke, cometió un trágico error y su esposa e hijo pagaron un precio terrible. Ahora, una década después, la familia de Wilson está amenazada una vez más por el asesino Chacal y los terroristas de H.IV.E. ¿Puede Deathstroke expiar los pecados del pasado o su familia pagará el precio máximo?','2020-08-04','https://image.tmdb.org/t/p/w500/nCJGThrH249sLUAzIS80xM7BEKz.jpg'),
	(9,'La vieja guardia','Cuatro guerreros inmortales que llevan siglos protegiendo a la humanidad en secreto son perseguidos a causa de sus misteriosos dones tras descubrir a una nueva inmortal.','2020-07-10','https://image.tmdb.org/t/p/w500/qzYP4eiDmBoVztMUmWtKqMZcUGN.jpg'),
	(10,'Train To Busan 2: Peninsula','Después de que la infección que se extendió hace 4 años, solo algunas partes de Corea del Sur permanecen resguardadas, aunque la Península de Busan es la única parte en donde pueden buscar refugio los coreanos, muchos aún mantienen la esperanza de ser rescatados por ayuda internacional.','2020-07-15','https://image.tmdb.org/t/p/w500/ew1lAU8yV66JbivBU1Zh4Wj4pOB.jpg'),
	(11,'Tenet','Una acción épica que gira en torno al espionaje internacional, los viajes en el tiempo y la evolución, en la que un agente secreto debe prevenir la Tercera Guerra Mundial.','2020-08-22','https://image.tmdb.org/t/p/w500/sJfBFmPBgBuE4bn6LeGzt3548wc.jpg'),
	(12,'The Tax Collector','David Cuevas es un hombre de familia que trabaja como recaudador de impuestos de los pandilleros de alto rango de Los Ángeles. Hace colecciones en toda la ciudad con su compañero Creeper asegurándose de que las personas paguen o vean represalias. Una vieja amenaza regresa a Los Ángeles que pone en peligro todo lo que David ama.','2020-08-07','https://image.tmdb.org/t/p/w500/3eg0kGC2Xh0vhydJHO37Sp4cmMt.jpg'),
	(13,'Intrépido','Un joven gamer debe convertirse en canguro a tiempo completo cuando su videojuego favorito deja a tres niños pequeños con superpoderes en su jardín.','2020-08-14','https://image.tmdb.org/t/p/w500/enEAuydl4BWTfqKeyEChzsbvCde.jpg'),
	(14,'Deep Blue Sea 3','La doctora Emma Collins y su equipo están pasando su tercer verano en la isla Little Happy estudiando el efecto del cambio climático en el gran tiburón blanco. Junto a los dos últimos habitantes del antiguo pueblo pesquero, su vida se ve alterada cuando un equipo \"científico\" liderado por su exnovio y marino biológico Richard aparece buscando tres tiburones toro que son algo más de lo que aparentan en un principio.','2020-07-28','https://image.tmdb.org/t/p/w500/96rOUJEbHrhVW7JYzPJm5ZyMDg0.jpg'),
	(15,'Work It: Al ritmo de los sueños','La brillante pero torpe Quinn tiene 18 años y está decidida a convertirse en una bailarina competitiva para entrar en Duke. Protagonizada por Sabrina Carpenter.','2020-08-07','https://image.tmdb.org/t/p/w500/b5XfICAvUe8beWExBz97i0Qw4Qh.jpg'),
	(16,'Efectos colaterales del amor','Centra su historia en torno a Henry Page, un estudiante adolescente que se considera un romántico empedernido, pero nunca se ha enamorado. El joven aspira a ser editor del periódico del instituto y vive feliz centrado en sus estudios para entrar en una buena universidad... hasta que Grace Town entra en su clase. Su nueva compañera no es precisamente la chica de sus sueños, pero poco a poco se enamora de ella cuando los dos son elegidos para editar el periódico del instituto.  Awesomeness Films se encarga de sacar adelante este proyecto inspirado en la novela que lleva el mismo nombre de la escritora australiana Krystal Sutherland.','2020-08-21','https://image.tmdb.org/t/p/w500/1lGihI0QLz3at9WtxMRbGLgeb0P.jpg'),
	(17,'Artemis Fowl','La historia de \'Artemis Fowl\' es la de un niño de 12 años de edad que está a punto de arrebatar el poder al mundo subterráneo. Lo que él todavía no sabe es que sus habitantes: hadas, duendes, elfos... no son las criaturas maravillosas que siempre hemos imaginado y no van a consentir que un humano conozca sus secretos más sagrados. Como él, van armados hasta las barbas y conocen las últimas tecnologías: se prepara un trepidante duelo que puede provocar una auténtica guerra entre las especies del planeta.','2020-06-12','https://image.tmdb.org/t/p/w500/juE7o699roXnxCi8shR10Cf2dCH.jpg'),
	(18,'Greyhound: enemigos bajo el mar','Durante los primeros días de la participación de Estados Unidos en la Segunda Guerra Mundial, un convoy internacional de 37 barcos aliados, encabezado por el comandante Ernest Krause, cruza el Atlántico Norte mientras es perseguido por submarinos alemanes.','2020-06-19','https://image.tmdb.org/t/p/w500/qHmGs4uAIOdPgseCgOH0eEsmTKD.jpg'),
	(19,'Aves de Presa (y la Fantabulosa Emancipación de Harley Quinn)','Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen, Máscara Negra.','2020-02-05','https://image.tmdb.org/t/p/w500/1wLqXiiiaTSK8Y0n7N85O0jaNJm.jpg'),
	(20,'The Bay of Silence','La repentina desaparición de su esposa (Olga Kurylenko) tras del nacimiento de su hijo obliga a Will (Claes Bang) a iniciar una frenética búsqueda por Europa para recuperar a su familia e intentar reconstruir su vida. A medida que el misterio detrás de las acciones de su esposa comienza a tomar una forma oscura y amenazante, Will está decidido a buscar la verdad, sin importar lo que cueste.','2020-08-20','https://image.tmdb.org/t/p/w500/oB3LX9C3FbJvPtrk1J7qHQKvzLr.jpg');

/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
