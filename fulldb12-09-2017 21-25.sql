use bd17_g7;

#
# TABLE STRUCTURE FOR: area
#

DROP TABLE IF EXISTS area;

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO area (`id_area`, `nombre_area`) VALUES (1, 'alias');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (2, 'ab');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (3, 'consequuntur');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (4, 'odio');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (5, 'nesciunt');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (6, 'quod');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (7, 'ut');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (8, 'veniam');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (9, 'explicabo');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (10, 'nulla');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (11, 'qui');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (12, 'et');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (13, 'qui');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (14, 'quaerat');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (15, 'aut');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (16, 'voluptatibus');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (17, 'perspiciatis');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (18, 'nam');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (19, 'aliquam');
INSERT INTO area (`id_area`, `nombre_area`) VALUES (20, 'sit');


#
# TABLE STRUCTURE FOR: cargo
#

DROP TABLE IF EXISTS cargo;

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sueldo_por_horas` int(11) NOT NULL,
  `sueldo_por_mes` int(11) NOT NULL,
  `id_funcion` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cargo`),
  KEY `id_funcion` (`id_funcion`),
  KEY `id_area` (`id_area`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`id_funcion`) REFERENCES `funcion` (`id_funcion`),
  CONSTRAINT `cargo_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`),
  CONSTRAINT `cargo_ibfk_3` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (1, 'nulla', 6, 9, 18, 1, 16);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (2, 'voluptatibus', 1, 5, 13, 6, 12);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (3, 'sint', 1, 4, 14, 15, 11);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (4, 'neque', 7, 5, 6, 9, 6);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (5, 'facere', 1, 5, 9, 15, 4);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (6, 'cumque', 1, 2, 17, 18, 12);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (7, 'dolorem', 7, 7, 7, 13, 14);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (8, 'sint', 5, 6, 1, 13, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (9, 'quo', 1, 9, 5, 6, 1);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (10, 'aut', 3, 5, 4, 10, 17);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (11, 'ea', 8, 5, 20, 7, 17);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (12, 'facere', 2, 7, 15, 20, 3);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (13, 'non', 9, 1, 7, 13, 18);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (14, 'aut', 7, 7, 17, 19, 6);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (15, 'impedit', 6, 9, 3, 7, 1);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (16, 'ipsa', 5, 7, 7, 4, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (17, 'at', 1, 7, 18, 10, 12);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (18, 'praesentium', 8, 7, 12, 11, 4);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (19, 'ullam', 1, 7, 18, 15, 10);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (20, 'consequuntur', 4, 4, 18, 18, 20);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (21, 'non', 5, 4, 14, 18, 6);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (22, 'tempora', 4, 1, 11, 13, 6);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (23, 'ad', 7, 6, 14, 19, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (24, 'et', 2, 5, 12, 16, 17);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (25, 'et', 8, 2, 17, 19, 4);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (26, 'eum', 9, 1, 18, 5, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (27, 'rerum', 8, 2, 16, 3, 17);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (28, 'aut', 7, 6, 8, 14, 8);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (29, 'explicabo', 5, 9, 11, 12, 2);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (30, 'impedit', 6, 6, 1, 10, 20);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (31, 'tenetur', 1, 3, 20, 4, 17);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (32, 'aut', 4, 6, 6, 14, 10);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (33, 'ut', 2, 7, 11, 8, 8);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (34, 'corporis', 9, 6, 10, 19, 4);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (35, 'tempora', 8, 4, 7, 16, 2);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (36, 'non', 5, 8, 10, 13, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (37, 'aliquid', 4, 2, 17, 9, 9);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (38, 'et', 3, 1, 13, 16, 2);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (39, 'reiciendis', 6, 1, 20, 7, 13);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (40, 'sed', 1, 1, 2, 8, 2);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (41, 'voluptates', 8, 1, 1, 7, 5);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (42, 'cumque', 6, 7, 18, 13, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (43, 'aliquid', 5, 5, 8, 4, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (44, 'beatae', 7, 3, 15, 13, 5);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (45, 'ut', 3, 8, 19, 19, 1);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (46, 'ut', 6, 4, 20, 8, 14);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (47, 'et', 2, 6, 6, 4, 3);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (48, 'recusandae', 6, 3, 15, 17, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (49, 'ea', 1, 6, 16, 16, 5);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (50, 'nostrum', 4, 6, 9, 17, 13);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (51, 'tenetur', 8, 9, 10, 18, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (52, 'et', 7, 7, 15, 16, 11);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (53, 'ipsam', 5, 4, 14, 3, 14);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (54, 'ipsa', 5, 8, 20, 18, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (55, 'molestias', 4, 7, 5, 16, 5);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (56, 'quo', 8, 9, 6, 16, 13);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (57, 'velit', 4, 3, 19, 2, 17);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (58, 'aut', 4, 2, 2, 16, 13);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (59, 'nemo', 7, 6, 20, 12, 9);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (60, 'enim', 8, 4, 5, 20, 5);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (61, 'atque', 6, 1, 17, 10, 3);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (62, 'laudantium', 3, 8, 15, 4, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (63, 'vel', 6, 6, 6, 18, 2);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (64, 'maiores', 7, 3, 20, 17, 20);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (65, 'maxime', 3, 2, 7, 2, 15);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (66, 'occaecati', 5, 9, 12, 7, 11);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (67, 'ducimus', 1, 8, 4, 6, 13);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (68, 'mollitia', 5, 3, 20, 7, 8);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (69, 'minima', 4, 1, 13, 6, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (70, 'est', 7, 9, 1, 10, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (71, 'eum', 9, 3, 6, 6, 8);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (72, 'non', 8, 7, 8, 1, 12);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (73, 'natus', 5, 6, 7, 7, 9);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (74, 'sit', 3, 9, 8, 7, 6);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (75, 'consequuntur', 4, 9, 7, 13, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (76, 'quos', 6, 7, 2, 4, 13);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (77, 'sunt', 6, 7, 13, 8, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (78, 'rem', 2, 2, 5, 7, 5);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (79, 'ut', 2, 7, 13, 20, 10);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (80, 'perspiciatis', 8, 5, 12, 20, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (81, 'laboriosam', 8, 5, 10, 5, 5);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (82, 'sit', 6, 8, 17, 13, 6);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (83, 'fuga', 3, 8, 8, 19, 12);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (84, 'alias', 1, 5, 17, 6, 18);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (85, 'est', 6, 2, 2, 13, 11);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (86, 'suscipit', 7, 9, 8, 14, 14);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (87, 'non', 5, 3, 1, 6, 1);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (88, 'suscipit', 9, 6, 19, 11, 8);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (89, 'architecto', 3, 4, 3, 3, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (90, 'autem', 7, 7, 13, 14, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (91, 'laboriosam', 7, 4, 12, 4, 11);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (92, 'consequatur', 3, 2, 16, 20, 3);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (93, 'excepturi', 3, 6, 1, 8, 1);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (94, 'minima', 6, 8, 13, 4, 7);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (95, 'quisquam', 2, 6, 11, 6, 19);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (96, 'explicabo', 5, 7, 1, 13, 13);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (97, 'rem', 3, 9, 15, 14, 18);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (98, 'quidem', 9, 8, 15, 12, 9);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (99, 'sit', 8, 2, 3, 15, 11);
INSERT INTO cargo (`id_cargo`, `nombre_cargo`, `sueldo_por_horas`, `sueldo_por_mes`, `id_funcion`, `id_area`, `id_categoria`) VALUES (100, 'unde', 5, 5, 10, 7, 5);


#
# TABLE STRUCTURE FOR: categoria
#

DROP TABLE IF EXISTS categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (1, 'et');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (2, 'amet');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (3, 'non');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (4, 'eaque');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (5, 'nisi');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (6, 'eum');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (7, 'et');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (8, 'minima');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (9, 'quae');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (10, 'maiores');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (11, 'illum');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (12, 'ea');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (13, 'eius');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (14, 'occaecati');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (15, 'quam');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (16, 'veniam');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (17, 'pariatur');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (18, 'optio');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (19, 'quas');
INSERT INTO categoria (`id_categoria`, `nombre_categoria`) VALUES (20, 'sunt');

#
# TABLE STRUCTURE FOR: cv
#

DROP TABLE IF EXISTS cv;

CREATE TABLE `cv` (
  `id_cv` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio_cargo_previo` date NOT NULL,
  `fecha_fin_cargo_previo` date NOT NULL,
  PRIMARY KEY (`id_cv`)
  KEY `id_funcion` (`id_cargo`),
  KEY `numero_legajo` (`numero_legajo`),
  CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`),
  CONSTRAINT `cargo_ibfk_2` FOREIGN KEY (`numero_legajo`) REFERENCES `empleado` (`numero_legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cv (`id_cv`, `fecha_inicio_cargo_previo`, `fecha_fin_cargo_previo`, `id_cargo`, `numero_legajo`) VALUES (1, 2003-01-14,2004-05-15, 3, 201);
INSERT INTO cv (`id_cv`, `fecha_inicio_cargo_previo`, `fecha_fin_cargo_previo`, `id_cargo`, `numero_legajo`) VALUES (1, 2003-01-14,2004-05-15, 3, 202);
INSERT INTO cv (`id_cv`, `fecha_inicio_cargo_previo`, `fecha_fin_cargo_previo`, `id_cargo`, `numero_legajo`) VALUES (1, 2003-01-14,2004-05-15, 3, 203);

#
# TABLE STRUCTURE FOR: empleado
#

DROP TABLE IF EXISTS empleado;

CREATE TABLE `empleado` (
  `numero_legajo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad_de_horas_trabajadas` int(11) NOT NULL,
  `tipo_de_turno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_de_ingreso` date NOT NULL,
  `calle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `barrio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `depto` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_de_inicio_cargo_actual` date NOT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero_legajo`),
  KEY `id_cargo` (`id_cargo`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (201, 'Stracke', 26288027, '', 6, '', '1998-10-19', 'Akeem Square', 4079, 'Lake', 'Hudsonport', 'Apt. 050', '2016-03-25', 9);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (202, 'O\'Connell', 34602828, '', 5, '', '1970-07-30', 'Renner Mission', 97265, 'Port', 'East Aidatown', 'Suite 258', '1971-02-06', 10);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (203, 'Kling', 27633104, '', 8, '', '1979-09-23', 'Dortha Inlet', 3733, 'Port', 'Blandamouth', 'Suite 841', '1974-02-01', 63);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (204, 'Schoen', 33123818, '', 7, '', '1995-06-05', 'Durgan Mountain', 14486, 'New', 'South Jermaine', 'Suite 719', '1972-12-10', 22);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (205, 'Larson', 20514368, '', 6, '', '1986-05-27', 'Lia Fort', 117, 'East', 'South Francisca', 'Suite 441', '1973-11-02', 60);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (206, 'Orn', 25196195, '', 2, '', '2005-04-12', 'Ryan Brook', 3376, 'West', 'North Edmondbury', 'Apt. 022', '1996-11-27', 26);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (207, 'Kiehn', 28261701, '', 5, '', '1987-06-15', 'Rau Manor', 710, 'Port', 'Fordshire', 'Suite 115', '2002-10-01', 65);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (208, 'Deckow', 26355358, '', 1, '', '1995-07-12', 'O\'Reilly Dam', 803, 'East', 'Port Isaacborough', 'Apt. 736', '1986-12-09', 42);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (209, 'Strosin', 32932993, '', 8, '', '2005-05-31', 'Danny Mountains', 93795, 'Port', 'South Nathen', 'Apt. 669', '1971-01-16', 16);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (210, 'Conroy', 28795456, '', 7, '', '2003-01-21', 'Herbert Meadow', 41472, 'Lake', 'Barrettborough', 'Suite 187', '1991-04-25', 58);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (211, 'Rodriguez', 39349952, '', 8, '', '1972-06-21', 'Hodkiewicz Streets', 320, 'East', 'North Arne', 'Apt. 642', '2010-11-20', 33);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (212, 'Glover', 28542134, '', 6, '', '1980-10-15', 'Emmitt Plains', 492, 'West', 'South Eleonoremouth', 'Suite 995', '2016-04-10', 28);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (213, 'Purdy', 38914454, '', 8, '', '1985-04-27', 'Augusta Courts', 6174, 'West', 'North Gagefort', 'Apt. 364', '1972-10-22', 43);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (214, 'Yundt', 32223791, '', 3, '', '1972-09-29', 'Kub Shoals', 6182, 'New', 'Lake Wyatt', 'Apt. 184', '2011-12-03', 15);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (215, 'Hayes', 20903123, '', 9, '', '1983-10-30', 'Bailey Glens', 67342, 'East', 'New Maximilian', 'Suite 079', '1971-09-19', 57);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (216, 'Heaney', 25442340, '', 2, '', '1996-12-21', 'Ansley Knolls', 435, 'East', 'Henritown', 'Apt. 808', '1979-08-09', 4);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (217, 'Runolfsdottir', 36633343, '', 7, '', '1971-09-26', 'Annamarie Shoal', 144, 'North', 'Port Sydni', 'Apt. 858', '1972-11-22', 3);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (218, 'Klein', 29638146, '', 1, '', '2001-12-18', 'Rhett Islands', 717, 'Lake', 'North Vilmashire', 'Suite 306', '1983-08-18', 44);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (219, 'Stiedemann', 32165154, '', 1, '', '1994-05-30', 'Vilma Hills', 6404, 'Port', 'West Mitchel', 'Suite 695', '1979-09-07', 86);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (220, 'Koss', 24501314, '', 6, '', '1977-01-23', 'Leuschke Parkway', 666, 'Lake', 'East Wilmerport', 'Suite 994', '1978-12-17', 66);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (221, 'Doyle', 25415658, '', 3, '', '1994-04-20', 'Stephan Valleys', 504, 'West', 'Port Christianshire', 'Apt. 447', '2001-01-30', 76);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (222, 'Braun', 29937840, '', 5, '', '2007-05-22', 'Gorczany Loop', 43570, 'East', 'Port Tamiaborough', 'Suite 738', '2015-09-02', 59);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (223, 'Hoeger', 29586740, '', 2, '', '1999-03-17', 'Valentine Stravenue', 5613, 'Lake', 'Abshirestad', 'Suite 216', '1974-06-02', 26);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (224, 'Jacobs', 27986855, '', 7, '', '1972-07-13', 'Noemie Prairie', 42325, 'Port', 'Port Delbertview', 'Suite 742', '2011-11-22', 36);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (225, 'Greenholt', 28064415, '', 9, '', '2010-02-13', 'Brain Circle', 61076, 'South', 'Kiehnview', 'Apt. 693', '1999-06-15', 56);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (226, 'Murray', 36288087, '', 6, '', '1971-12-30', 'Zaria Place', 36734, 'New', 'Kirlinmouth', 'Suite 692', '2000-04-22', 70);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (227, 'Considine', 32785649, '', 5, '', '1976-08-01', 'Isaac Plaza', 834, 'South', 'New Borisfort', 'Apt. 518', '1990-10-05', 2);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (228, 'King', 24977760, '', 7, '', '2012-01-19', 'Olga Gardens', 74, 'Port', 'Weissnatmouth', 'Suite 610', '2005-07-23', 31);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (229, 'Hamill', 38503426, '', 1, '', '1973-07-17', 'Smitham Vista', 696, 'East', 'North Telly', 'Suite 973', '1989-03-18', 47);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (230, 'Hessel', 21781283, '', 7, '', '1973-08-30', 'Hyatt Forks', 21626, 'West', 'South Elijah', 'Suite 206', '2016-01-12', 79);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (231, 'Breitenberg', 26806548, '', 8, '', '1994-01-16', 'Matteo Isle', 578, 'South', 'Lake Jordanton', 'Suite 462', '1990-10-27', 80);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (232, 'Conn', 33116179, '', 9, '', '2000-07-21', 'Westley Haven', 5958, 'New', 'New Edd', 'Apt. 281', '1997-04-17', 86);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (233, 'Reichert', 35513744, '', 6, '', '2001-09-24', 'Ondricka Groves', 5380, 'West', 'West Hardymouth', 'Suite 196', '1971-01-23', 27);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (234, 'Bogisich', 20729418, '', 3, '', '1985-01-08', 'Gardner Forges', 78451, 'South', 'Darrionmouth', 'Apt. 524', '2016-09-08', 14);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (235, 'Rosenbaum', 27277328, '', 1, '', '2017-05-04', 'Will Ports', 15462, 'New', 'Connellyland', 'Suite 831', '1975-09-21', 19);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (236, 'Collier', 28808745, '', 9, '', '1995-11-23', 'Robbie Park', 3891, 'North', 'South Bernadineview', 'Suite 368', '1978-04-01', 11);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (237, 'Ortiz', 28033530, '', 5, '', '1992-08-02', 'Mckenzie Neck', 168, 'North', 'Stromanton', 'Apt. 873', '1999-10-30', 53);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (238, 'Greenfelder', 36464437, '', 4, '', '1982-01-12', 'Daugherty Well', 4480, 'South', 'Jacebury', 'Apt. 420', '1993-10-21', 67);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (239, 'Jacobson', 27394652, '', 4, '', '2016-09-15', 'Gino Crest', 28086, 'New', 'Beahanburgh', 'Apt. 207', '2013-10-08', 61);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (240, 'Sanford', 22134445, '', 1, '', '1983-02-03', 'Doris Springs', 1190, 'Lake', 'Cronintown', 'Suite 877', '2003-12-29', 31);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (241, 'Leuschke', 33507103, '', 5, '', '1990-11-17', 'Ernestine Ridge', 37406, 'New', 'Trompbury', 'Apt. 822', '2001-03-15', 56);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (242, 'Lynch', 28281545, '', 7, '', '2003-07-09', 'Klocko Circles', 193, 'East', 'Lake Yasmin', 'Suite 315', '1997-03-30', 35);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (243, 'Harris', 33966192, '', 5, '', '1972-10-18', 'Rempel Streets', 721, 'South', 'Steveside', 'Apt. 348', '1982-05-02', 13);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (244, 'Adams', 37361980, '', 5, '', '1992-01-08', 'Tromp Cliffs', 5010, 'Port', 'Berniertown', 'Apt. 312', '1989-01-24', 77);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (245, 'Treutel', 35747779, '', 9, '', '1983-09-24', 'Kautzer Spurs', 54, 'West', 'West Brandiland', 'Suite 824', '1981-07-05', 34);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (246, 'Lockman', 30082126, '', 9, '', '1993-01-23', 'Steuber Mews', 64, 'East', 'Eleanorachester', 'Suite 722', '1972-06-29', 55);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (247, 'Krajcik', 25227386, '', 3, '', '2003-12-14', 'Gibson Extension', 948, 'New', 'Feilmouth', 'Apt. 672', '1988-01-04', 37);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (248, 'Boehm', 39456486, '', 8, '', '1984-05-19', 'Rolando Mountain', 556, 'New', 'Blickstad', 'Apt. 083', '1996-10-31', 70);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (249, 'Wehner', 24966171, '', 1, '', '2012-04-13', 'Maegan Manor', 9133, 'East', 'Port Robbie', 'Apt. 062', '2004-12-16', 19);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (250, 'Frami', 20120805, '', 2, '', '1994-01-29', 'Kilback Mews', 92984, 'East', 'North Virgilland', 'Apt. 400', '1974-07-17', 55);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (251, 'Schinner', 25929746, '', 4, '', '1986-08-21', 'Leffler Ridge', 57, 'Lake', 'Lake Roy', 'Apt. 269', '1973-01-26', 38);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (252, 'Jaskolski', 26070850, '', 4, '', '1996-11-07', 'Timothy Run', 90592, 'Port', 'Lethachester', 'Apt. 645', '1974-11-17', 39);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (253, 'Kirlin', 24911947, '', 7, '', '1988-10-11', 'Julianne Mews', 47138, 'North', 'Erdmanberg', 'Apt. 641', '1997-07-11', 67);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (254, 'Conn', 38592586, '', 7, '', '1991-11-24', 'Dewayne Brooks', 74281, 'East', 'South Jordane', 'Apt. 397', '1985-01-15', 81);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (255, 'Roob', 24884044, '', 6, '', '1977-10-09', 'Kunze Estate', 94, 'Lake', 'North Clementina', 'Apt. 183', '1977-05-20', 83);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (256, 'Leannon', 35313198, '', 3, '', '1987-09-19', 'Julian Lock', 288, 'West', 'Hyattville', 'Suite 120', '2005-11-25', 5);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (257, 'Lindgren', 32741684, '', 4, '', '2001-11-29', 'Kobe Shoal', 8, 'Lake', 'West Rowena', 'Suite 135', '1999-11-03', 29);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (258, 'Borer', 35969284, '', 8, '', '2013-08-27', 'Nicolas Spurs', 26265, 'West', 'Brauntown', 'Apt. 422', '2008-04-03', 11);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (259, 'Bayer', 39365010, '', 2, '', '2009-11-20', 'Yundt Groves', 843, 'Lake', 'West Antoinette', 'Apt. 618', '1990-11-09', 75);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (260, 'Carroll', 39754702, '', 8, '', '1983-03-04', 'Strosin Causeway', 62361, 'North', 'Goodwinchester', 'Apt. 571', '1976-06-23', 62);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (261, 'Bednar', 29097006, '', 7, '', '2016-04-13', 'Kylee Forest', 45, 'East', 'Port Reganburgh', 'Suite 019', '2016-03-08', 24);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (262, 'Beatty', 26613778, '', 8, '', '1981-07-05', 'Wisozk Islands', 11544, 'Lake', 'West Kamille', 'Suite 951', '2005-04-27', 19);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (263, 'Hettinger', 27057380, '', 9, '', '1973-11-02', 'Kirlin Forge', 389, 'New', 'Arnoldbury', 'Suite 794', '1996-12-29', 76);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (264, 'Weber', 24911619, '', 6, '', '1994-12-01', 'Federico Brook', 3025, 'South', 'Quintenfurt', 'Apt. 019', '1977-10-02', 71);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (265, 'Dietrich', 27816413, '', 3, '', '1995-06-03', 'Moshe Garden', 4434, 'New', 'West Gisselle', 'Suite 444', '1987-12-29', 21);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (266, 'Kunde', 23688914, '', 6, '', '2008-10-07', 'Jamel Parks', 6921, 'East', 'Rodriguezland', 'Suite 596', '2016-07-26', 39);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (267, 'Jacobs', 33621079, '', 9, '', '2009-05-16', 'Ova Squares', 101, 'East', 'Jovanystad', 'Apt. 082', '1993-09-11', 55);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (268, 'Schroeder', 28614726, '', 2, '', '1984-12-21', 'Block Locks', 4953, 'West', 'South Golden', 'Suite 587', '1999-05-04', 16);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (269, 'Quigley', 24961156, '', 3, '', '1993-05-15', 'Mason Grove', 466, 'West', 'North Nicomouth', 'Suite 686', '1994-07-21', 85);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (270, 'Runolfsson', 20868634, '', 5, '', '2006-05-27', 'Hodkiewicz Fork', 323, 'East', 'West Elinore', 'Suite 197', '2010-01-13', 64);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (271, 'Howe', 29538463, '', 8, '', '2009-07-28', 'Medhurst Parks', 701, 'North', 'Grimesfurt', 'Suite 558', '1991-11-21', 47);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (272, 'Dietrich', 33453262, '', 6, '', '1987-10-26', 'Gilda Run', 520, 'Port', 'Langworthville', 'Apt. 622', '1978-02-07', 43);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (273, 'Prohaska', 25617176, '', 1, '', '1983-05-14', 'Garrett Well', 4599, 'West', 'North Gailshire', 'Suite 755', '1994-05-06', 13);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (274, 'Schoen', 39918234, '', 8, '', '1986-08-31', 'Meghan Trafficway', 8902, 'West', 'West Efrainshire', 'Suite 362', '2007-02-24', 95);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (275, 'Mohr', 20621162, '', 9, '', '1979-11-19', 'Herta Oval', 75722, 'West', 'Emilport', 'Apt. 784', '1977-05-28', 11);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (276, 'Wolf', 35801200, '', 6, '', '1988-10-16', 'Bogisich Overpass', 947, 'West', 'South Noah', 'Suite 771', '1994-08-15', 48);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (277, 'Harber', 24462545, '', 9, '', '2012-03-04', 'Jensen Valley', 63737, 'South', 'Zulauftown', 'Suite 635', '1978-07-27', 12);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (278, 'Kautzer', 33008205, '', 8, '', '1981-10-17', 'Austen Hill', 21051, 'South', 'Ziontown', 'Apt. 997', '2005-10-29', 98);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (279, 'McKenzie', 34308859, '', 1, '', '1972-01-26', 'Moises Alley', 309, 'North', 'Margaretburgh', 'Suite 309', '1977-08-11', 98);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (280, 'Romaguera', 20183420, '', 3, '', '1980-09-20', 'Kshlerin Haven', 5844, 'West', 'Reingerton', 'Apt. 216', '2004-05-11', 66);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (281, 'Cremin', 39447888, '', 3, '', '1979-06-02', 'Hoppe Mills', 4234, 'New', 'Lake Carlostad', 'Suite 156', '1995-10-23', 45);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (282, 'Brown', 20159241, '', 7, '', '1976-09-04', 'Runolfsson Forges', 145, 'Port', 'Edmundburgh', 'Suite 952', '2009-05-27', 16);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (283, 'Hahn', 29113998, '', 1, '', '1983-04-30', 'Hills Estate', 637, 'East', 'Kalebbury', 'Suite 218', '2010-03-11', 29);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (284, 'Von', 24397161, '', 5, '', '1980-08-02', 'Shaniya Stream', 248, 'Lake', 'Lake Alfredfurt', 'Apt. 745', '1999-01-20', 87);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (285, 'Cartwright', 32509589, '', 7, '', '2013-01-12', 'Zemlak Ports', 35, 'New', 'New Mercedes', 'Suite 934', '1980-06-06', 27);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (286, 'Boehm', 24580460, '', 1, '', '1995-09-03', 'Tremblay Turnpike', 924, 'East', 'Marksshire', 'Apt. 427', '1973-10-29', 17);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (287, 'Nolan', 34275911, '', 3, '', '1975-06-14', 'Koelpin Tunnel', 676, 'Lake', 'Port Narcisoberg', 'Apt. 707', '2004-10-16', 81);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (288, 'Mueller', 30655011, '', 1, '', '1977-12-06', 'Addison Trail', 660, 'North', 'North Hildegard', 'Suite 001', '2009-07-20', 4);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (289, 'Crona', 38379342, '', 4, '', '2016-04-04', 'Collier Pass', 86007, 'Port', 'East Cathryn', 'Apt. 832', '1980-05-17', 6);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (290, 'Simonis', 21449502, '', 9, '', '1993-03-13', 'Keshaun Squares', 62409, 'East', 'Lenoremouth', 'Suite 194', '1980-11-14', 6);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (291, 'Kilback', 29449580, '', 4, '', '1993-09-13', 'Lemuel Islands', 40991, 'Port', 'East Kenyon', 'Apt. 368', '1985-11-06', 88);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (292, 'Morar', 37649687, '', 9, '', '1979-02-02', 'Thiel Hills', 63806, 'New', 'Dangelobury', 'Apt. 352', '2006-12-15', 16);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (293, 'Kuhlman', 20439832, '', 7, '', '1980-08-09', 'Little Rue', 6443, 'New', 'South Norbert', 'Apt. 077', '1998-07-09', 94);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (294, 'Farrell', 26473387, '', 8, '', '2013-08-17', 'Johns Spur', 4964, 'New', 'North Antoninaland', 'Apt. 055', '2011-09-19', 8);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (295, 'Rogahn', 22314624, '', 5, '', '2008-06-07', 'Adriana Court', 9228, 'West', 'Port Fernando', 'Suite 798', '1976-07-11', 80);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (296, 'McKenzie', 30597710, '', 1, '', '1974-06-22', 'Orn Mill', 4251, 'Port', 'East Agustin', 'Suite 244', '1989-07-15', 71);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (297, 'Ortiz', 23713012, '', 4, '', '1971-05-08', 'Hartmann Heights', 9013, 'Lake', 'North Lurline', 'Suite 933', '1998-02-13', 46);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (298, 'Ruecker', 32322530, '', 5, '', '1987-11-14', 'Glen Union', 1616, 'South', 'North Missouri', 'Suite 836', '1983-04-01', 62);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (299, 'Ankunding', 33377838, '', 6, '', '2016-09-05', 'Avery Drives', 173, 'New', 'West Lailafort', 'Suite 950', '1985-05-04', 80);
INSERT INTO empleado (`numero_legajo`, `nombre`, `dni`, `estado`, `cantidad_de_horas_trabajadas`, `tipo_de_turno`, `fecha_de_ingreso`, `calle`, `numero`, `barrio`, `ciudad`, `depto`, `fecha_de_inicio_cargo_actual`, `id_cargo`) VALUES (300, 'Oberbrunner', 24013232, '', 3, '', '1977-06-01', 'Medhurst Mills', 935, 'New', 'Vonside', 'Suite 476', '2002-08-31', 93);

#
# TABLE STRUCTURE FOR: funcion
#

DROP TABLE IF EXISTS funcion;

CREATE TABLE `funcion` (
  `id_funcion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_funcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_funcion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (1, 'saepe');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (2, 'ut');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (3, 'voluptas');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (4, 'nihil');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (5, 'ratione');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (6, 'distinctio');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (7, 'explicabo');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (8, 'modi');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (9, 'animi');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (10, 'sed');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (11, 'quia');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (12, 'tenetur');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (13, 'reprehenderit');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (14, 'vel');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (15, 'commodi');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (16, 'cum');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (17, 'iste');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (18, 'ad');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (19, 'voluptatem');
INSERT INTO funcion (`id_funcion`, `nombre_funcion`) VALUES (20, 'voluptate');

#
# TABLE STRUCTURE FOR: historial
#

DROP TABLE IF EXISTS historial;

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` int(11) NOT NULL,
  `salario_previo` int(11) NOT NULL,
  `salario_actual` int(11) NOT NULL,
  `numero_legajo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_historial`),
  KEY `numero_legajo` (`numero_legajo`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`numero_legajo`) REFERENCES `empleado` (`numero_legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (1, '1999-12-05', 19, 9, 5, 290);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (2, '1995-09-18', 6, 8, 2, 271);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (3, '1974-05-03', 23, 3, 2, 234);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (4, '2015-08-27', 3, 9, 1, 269);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (5, '1999-03-01', 11, 8, 4, 207);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (6, '2016-07-08', 2, 2, 1, 280);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (7, '1995-09-29', 23, 2, 1, 267);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (8, '1995-07-04', 19, 8, 3, 270);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (9, '1995-10-21', 13, 3, 1, 290);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (10, '1985-03-03', 18, 1, 7, 293);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (11, '2001-06-09', 4, 6, 8, 274);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (12, '2007-02-27', 5, 3, 7, 271);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (13, '2009-09-07', 20, 9, 3, 299);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (14, '2009-04-19', 12, 4, 3, 224);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (15, '1995-09-03', 5, 2, 5, 246);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (16, '1994-07-02', 13, 6, 2, 237);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (17, '1981-04-04', 0, 8, 2, 293);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (18, '2017-05-29', 20, 3, 3, 292);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (19, '1974-12-03', 21, 2, 1, 228);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (20, '2006-02-23', 12, 9, 5, 271);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (21, '2012-01-23', 7, 4, 6, 238);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (22, '1979-06-15', 18, 2, 8, 219);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (23, '2001-04-03', 0, 5, 6, 220);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (24, '1994-02-16', 3, 5, 2, 226);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (25, '1980-04-08', 12, 4, 2, 248);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (26, '1973-12-01', 1, 3, 2, 272);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (27, '2012-12-10', 17, 2, 5, 291);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (28, '1978-07-01', 13, 7, 4, 287);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (29, '1995-03-06', 0, 1, 5, 265);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (30, '1986-09-25', 17, 5, 7, 274);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (31, '2009-03-19', 19, 7, 8, 293);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (32, '1979-11-17', 21, 2, 3, 285);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (33, '1995-06-22', 2, 7, 8, 281);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (34, '1978-08-27', 5, 3, 3, 275);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (35, '1979-11-19', 6, 2, 2, 235);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (36, '1996-03-09', 23, 2, 5, 292);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (37, '1981-08-11', 3, 9, 5, 295);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (38, '1970-07-04', 23, 5, 9, 244);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (39, '1976-07-17', 5, 8, 5, 269);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (40, '1994-10-08', 5, 3, 9, 219);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (41, '1984-09-22', 20, 4, 5, 296);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (42, '2011-06-27', 19, 2, 5, 287);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (43, '2008-08-15', 8, 7, 2, 266);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (44, '2010-01-08', 1, 1, 9, 239);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (45, '2002-01-12', 22, 3, 3, 206);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (46, '1981-05-07', 12, 8, 5, 217);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (47, '1974-11-06', 6, 2, 4, 282);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (48, '1980-07-05', 23, 5, 1, 262);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (49, '2015-09-12', 6, 7, 3, 235);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (50, '1987-03-07', 14, 4, 9, 250);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (51, '1983-01-09', 7, 9, 3, 259);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (52, '1986-05-26', 15, 8, 5, 274);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (53, '2001-07-27', 23, 4, 3, 272);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (54, '1987-01-25', 18, 1, 8, 281);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (55, '1985-03-26', 8, 4, 3, 280);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (56, '1984-05-24', 5, 8, 8, 262);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (57, '2004-07-01', 15, 2, 9, 278);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (58, '2006-07-01', 14, 6, 7, 298);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (59, '1971-07-24', 6, 9, 4, 277);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (60, '1993-12-24', 9, 9, 9, 262);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (61, '2004-11-16', 13, 4, 5, 205);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (62, '1985-08-28', 1, 4, 2, 202);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (63, '1994-08-26', 13, 1, 1, 267);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (64, '2002-11-30', 2, 3, 6, 273);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (65, '1993-10-05', 14, 7, 7, 292);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (66, '2014-10-02', 19, 2, 6, 263);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (67, '2012-07-10', 13, 9, 3, 240);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (68, '2004-11-05', 7, 6, 9, 294);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (69, '1973-05-14', 5, 6, 8, 222);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (70, '1973-01-17', 17, 9, 6, 204);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (71, '1970-12-08', 12, 1, 9, 278);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (72, '2001-10-15', 15, 9, 4, 247);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (73, '2006-05-10', 12, 5, 2, 273);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (74, '1972-09-26', 1, 2, 8, 252);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (75, '1992-10-16', 7, 7, 8, 294);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (76, '2005-11-29', 23, 5, 1, 266);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (77, '1972-12-24', 2, 3, 4, 208);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (78, '1986-11-18', 6, 7, 5, 204);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (79, '2008-04-27', 4, 6, 7, 207);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (80, '2010-04-29', 15, 3, 1, 207);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (81, '2009-07-26', 15, 8, 9, 231);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (82, '1992-06-22', 12, 9, 7, 218);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (83, '2005-11-26', 17, 3, 5, 298);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (84, '2014-07-15', 12, 5, 8, 212);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (85, '1995-04-23', 7, 9, 8, 227);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (86, '1983-01-28', 19, 9, 9, 245);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (87, '1992-12-29', 1, 9, 5, 267);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (88, '2001-01-21', 14, 9, 8, 279);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (89, '2009-08-21', 7, 4, 6, 294);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (90, '1975-10-03', 17, 9, 7, 220);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (91, '1986-01-17', 9, 2, 3, 249);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (92, '2014-06-22', 8, 6, 8, 280);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (93, '1989-12-15', 15, 9, 4, 263);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (94, '1971-11-28', 12, 9, 9, 244);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (95, '1988-02-24', 12, 7, 9, 254);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (96, '2014-04-27', 2, 5, 1, 288);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (97, '2000-08-13', 12, 3, 2, 205);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (98, '1992-08-17', 3, 2, 8, 262);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (99, '2001-02-02', 6, 8, 3, 236);
INSERT INTO historial (`id_historial`, `fecha`, `hora`, `salario_previo`, `salario_actual`, `numero_legajo`) VALUES (100, '1982-06-24', 22, 7, 4, 204);

#
# TABLE STRUCTURE FOR: jornada
#

DROP TABLE IF EXISTS jornada;

CREATE TABLE `jornada` (
  `id_jornada` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_actual` date NOT NULL,
  `horario_de_salida` int(11) NOT NULL,
  `horario_de_entrada` int(11) NOT NULL,
  `numero_legajo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jornada`),
  KEY `numero_legajo` (`numero_legajo`),
  CONSTRAINT `jornada_ibfk_1` FOREIGN KEY (`numero_legajo`) REFERENCES `empleado` (`numero_legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (1, '1988-02-26', 5, 13, 221);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (2, '2014-07-26', 5, 22, 283);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (3, '1975-10-27', 13, 11, 257);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (4, '1978-03-24', 22, 20, 260);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (5, '1980-10-06', 13, 8, 229);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (6, '1994-09-20', 4, 10, 219);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (7, '1993-04-03', 6, 3, 271);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (8, '2009-06-05', 17, 8, 239);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (9, '1971-10-21', 17, 16, 292);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (10, '1996-12-09', 19, 20, 232);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (11, '1995-04-05', 20, 9, 242);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (12, '1998-06-27', 8, 2, 268);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (13, '1970-06-10', 13, 9, 255);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (14, '1970-03-28', 0, 4, 218);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (15, '2007-07-29', 6, 14, 294);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (16, '1995-01-16', 23, 11, 252);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (17, '1972-09-03', 15, 17, 242);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (18, '1984-10-22', 2, 23, 298);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (19, '1988-08-20', 9, 9, 206);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (20, '2008-08-22', 13, 9, 294);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (21, '1996-02-15', 8, 20, 277);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (22, '2007-10-28', 22, 19, 257);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (23, '2010-08-18', 17, 17, 211);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (24, '1983-11-26', 17, 6, 279);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (25, '1980-11-22', 14, 5, 249);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (26, '2013-09-29', 10, 22, 249);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (27, '2011-06-09', 12, 7, 217);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (28, '2000-07-28', 20, 18, 269);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (29, '2016-06-18', 0, 1, 210);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (30, '1975-07-11', 16, 18, 273);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (31, '2002-05-27', 12, 2, 256);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (32, '2000-09-09', 5, 12, 247);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (33, '1990-04-03', 2, 5, 281);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (34, '1991-02-08', 18, 10, 211);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (35, '1975-12-28', 9, 1, 202);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (36, '2005-05-20', 14, 0, 288);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (37, '2001-02-23', 16, 15, 206);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (38, '1995-05-31', 8, 18, 222);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (39, '1994-04-02', 22, 2, 203);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (40, '1990-04-24', 16, 15, 297);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (41, '1987-08-16', 5, 4, 237);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (42, '2011-03-26', 1, 14, 201);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (43, '1976-05-20', 20, 8, 207);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (44, '1994-08-27', 19, 23, 266);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (45, '1974-05-21', 22, 15, 250);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (46, '1973-08-04', 20, 7, 296);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (47, '2005-07-28', 0, 14, 255);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (48, '2010-05-29', 10, 20, 278);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (49, '1981-05-25', 1, 1, 208);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (50, '1990-07-05', 22, 14, 209);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (51, '1982-10-27', 1, 2, 289);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (52, '1981-07-03', 22, 22, 225);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (53, '2015-02-03', 18, 18, 271);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (54, '1992-01-09', 18, 2, 252);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (55, '1982-05-07', 5, 3, 225);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (56, '1975-04-12', 18, 15, 264);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (57, '1971-08-24', 5, 21, 203);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (58, '2005-05-11', 22, 6, 215);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (59, '2017-06-07', 23, 4, 203);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (60, '1974-05-31', 11, 21, 223);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (61, '1994-06-09', 21, 22, 248);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (62, '1985-09-19', 18, 21, 280);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (63, '1973-02-06', 4, 9, 238);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (64, '1981-04-05', 12, 11, 204);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (65, '2002-05-26', 9, 4, 258);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (66, '2017-04-29', 0, 9, 230);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (67, '1980-05-17', 6, 20, 223);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (68, '2009-11-11', 22, 5, 224);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (69, '2014-03-04', 5, 23, 208);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (70, '1988-11-20', 19, 12, 279);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (71, '2014-03-17', 5, 9, 232);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (72, '2003-10-18', 17, 17, 216);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (73, '2008-11-22', 18, 22, 294);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (74, '1996-02-14', 5, 19, 210);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (75, '2008-11-27', 12, 9, 213);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (76, '1987-06-18', 5, 22, 239);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (77, '1996-05-21', 10, 14, 224);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (78, '1990-09-30', 2, 16, 228);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (79, '1996-03-22', 14, 21, 222);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (80, '1978-06-17', 0, 6, 254);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (81, '1977-05-01', 20, 16, 237);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (82, '1975-10-13', 17, 1, 203);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (83, '1991-04-04', 17, 20, 213);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (84, '1974-11-22', 21, 10, 201);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (85, '2014-07-11', 19, 21, 275);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (86, '2006-12-20', 10, 12, 294);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (87, '1981-08-05', 9, 13, 299);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (88, '1981-08-07', 13, 23, 263);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (89, '1998-05-09', 21, 20, 203);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (90, '1988-06-24', 23, 19, 276);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (91, '1971-12-24', 17, 4, 275);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (92, '1993-09-28', 17, 14, 266);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (93, '2004-03-07', 18, 8, 204);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (94, '2013-03-05', 5, 23, 295);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (95, '1985-02-13', 13, 21, 238);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (96, '2011-01-19', 7, 7, 211);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (97, '1978-04-16', 3, 18, 270);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (98, '2000-11-01', 23, 4, 288);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (99, '1983-06-03', 3, 18, 259);
INSERT INTO jornada (`id_jornada`, `fecha_actual`, `horario_de_salida`, `horario_de_entrada`, `numero_legajo`) VALUES (100, '1975-09-17', 23, 9, 273);

#
# TABLE STRUCTURE FOR: legajo
#

DROP TABLE IF EXISTS legajo;

CREATE TABLE `legajo` (
  `id_legajo` int(11) NOT NULL AUTO_INCREMENT,
  `empleo_previo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_contacto` int(11) DEFAULT NULL,
  `numero_legajo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_legajo`),
  KEY `numero_legajo` (`numero_legajo`),
  CONSTRAINT `legajo_ibfk_1` FOREIGN KEY (`numero_legajo`) REFERENCES `empleado` (`numero_legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (1, 'maiores', 961293, 214);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (2, 'maxime', 13, 220);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (3, 'aut', 51, 238);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (4, 'blanditiis', 210345, 204);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (5, 'velit', 70, 289);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (6, 'explicabo', 1, 220);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (7, 'rerum', 0, 300);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (8, 'aut', 0, 209);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (9, 'quis', 590, 292);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (10, 'animi', 0, 272);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (11, 'expedita', 228, 266);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (12, 'recusandae', 298570, 240);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (13, 'occaecati', 888617, 300);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (14, 'cum', 1, 281);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (15, 'possimus', 1, 207);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (16, 'et', 0, 260);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (17, 'similique', 293, 227);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (18, 'debitis', 701, 267);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (19, 'labore', 2147483647, 231);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (20, 'non', 117, 283);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (21, 'sit', 1, 202);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (22, 'similique', 725, 244);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (23, 'exercitationem', 0, 206);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (24, 'est', 158, 246);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (25, 'qui', 29, 288);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (26, 'aut', 1, 222);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (27, 'ea', 1, 294);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (28, 'aliquam', 2147483647, 287);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (29, 'ea', 0, 234);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (30, 'fugiat', 1, 229);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (31, 'illum', 1, 260);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (32, 'saepe', 623824, 212);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (33, 'quam', 835, 235);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (34, 'dolores', 949, 245);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (35, 'deleniti', 968, 215);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (36, 'quia', 76, 206);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (37, 'itaque', 1, 258);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (38, 'tenetur', 889, 246);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (39, 'neque', 1, 213);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (40, 'sint', 941377, 285);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (41, 'asperiores', 1, 289);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (42, 'ad', 1, 284);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (43, 'doloribus', 1, 207);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (44, 'minima', 0, 227);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (45, 'autem', 1, 251);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (46, 'expedita', 604069, 242);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (47, 'fugit', 1, 298);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (48, 'aspernatur', 570901, 252);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (49, 'deserunt', 1, 278);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (50, 'consequuntur', 403, 229);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (51, 'in', 2147483647, 259);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (52, 'illo', 251516, 201);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (53, 'est', 2147483647, 257);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (54, 'qui', 0, 202);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (55, 'ullam', 0, 205);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (56, 'et', 0, 211);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (57, 'blanditiis', 1, 280);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (58, 'molestiae', 55, 280);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (59, 'et', 533, 204);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (60, 'dolore', 96, 287);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (61, 'enim', 1, 249);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (62, 'doloremque', 440, 291);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (63, 'dolores', 1, 286);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (64, 'et', 608309, 213);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (65, 'itaque', 0, 257);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (66, 'laborum', 1, 231);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (67, 'dolores', 464, 264);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (68, 'rerum', 2147483647, 266);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (69, 'nisi', 869, 224);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (70, 'aut', 1, 249);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (71, 'et', 186, 296);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (72, 'nostrum', 259054, 208);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (73, 'laboriosam', 603884, 214);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (74, 'sapiente', 880835, 272);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (75, 'veritatis', 452324, 213);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (76, 'enim', 645190, 215);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (77, 'perferendis', 10, 287);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (78, 'et', 336, 273);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (79, 'voluptatem', 0, 289);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (80, 'dolorum', 104, 254);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (81, 'provident', 1, 203);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (82, 'est', 2147483647, 231);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (83, 'dolores', 202, 293);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (84, 'ab', 49, 288);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (85, 'rerum', 2147483647, 291);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (86, 'voluptates', 996, 215);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (87, 'quam', 2147483647, 224);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (88, 'facilis', 0, 260);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (89, 'blanditiis', 571, 212);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (90, 'ut', 1, 270);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (91, 'quos', 299, 237);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (92, 'enim', 1, 250);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (93, 'vero', 1, 222);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (94, 'iste', 614539, 296);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (95, 'molestias', 447, 289);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (96, 'qui', 1, 274);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (97, 'dolores', 0, 222);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (98, 'voluptates', 0, 244);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (99, 'soluta', 0, 251);
INSERT INTO legajo (`id_legajo`, `empleo_previo`, `numero_contacto`, `numero_legajo`) VALUES (100, 'aperiam', 0, 256);


#
# TABLE STRUCTURE FOR: modifico_historial
#

DROP TABLE IF EXISTS modifico_historial;

CREATE TABLE `modifico_historial` (
  `id_modifico_historial` int(11) NOT NULL AUTO_INCREMENT,
  `id_historial` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_modifico_historial`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_historial` (`id_historial`),
  CONSTRAINT `modifico_historial_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `modifico_historial_ibfk_2` FOREIGN KEY (`id_historial`) REFERENCES `historial` (`id_historial`)
)  ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO modifico_historial (`id_modifico_historial`, `id_historial`, `id_usuario`) VALUES (1, 2, 3);
INSERT INTO modifico_historial (`id_modifico_historial`, `id_historial`, `id_usuario`) VALUES (2, 1, 3);
INSERT INTO modifico_historial (`id_modifico_historial`, `id_historial`, `id_usuario`) VALUES (3, 3, 3);

#
# TABLE STRUCTURE FOR: permiso
#

DROP TABLE IF EXISTS permiso;

CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_permiso`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `permiso_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
)  ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permiso (`id_permiso`, `tipo`, `id_usuario`) VALUES (1, 'Lectura', 3);
INSERT INTO permiso (`id_permiso`, `tipo`, `id_usuario`) VALUES (2, 'Lectura, escritura', 2);
INSERT INTO permiso (`id_permiso`, `tipo`, `id_usuario`) VALUES (3, 'Escritura', 1);
#
# TABLE STRUCTURE FOR: premio
#

DROP TABLE IF EXISTS premio;

CREATE TABLE `premio` (
  `id_premio` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_premio` date NOT NULL,
  `nombre_premio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mensual_anual` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numero_legajo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_premio`),
  KEY `numero_legajo` (`numero_legajo`),
  CONSTRAINT `premio_ibfk_1` FOREIGN KEY (`numero_legajo`) REFERENCES `empleado` (`numero_legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (1, 'qui', '1983-08-02', 'et', 'Dolorem recusandae omnis officia dolorem veniam.', 'et', 201);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (2, 'similique', '2003-05-02', 'rerum', 'Vitae sed repellendus ut et quia saepe eum.', 'sit', 295);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (3, 'molestiae', '1970-02-07', 'rerum', 'Eveniet ipsa labore ut ducimus.', 'quam', 288);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (4, 'architecto', '2002-10-13', 'qui', 'Sed nemo optio dolores ipsum.', 'qui', 240);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (5, 'et', '2004-11-25', 'delectus', 'Adipisci voluptates vel dolores unde.', 'omnis', 294);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (6, 'recusandae', '2012-06-01', 'vel', 'Omnis autem labore sit voluptates adipisci aspernatur natus quo.', 'aut', 285);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (7, 'repellendus', '1998-01-25', 'quia', 'Deserunt aut consequatur praesentium enim quia tenetur.', 'accusantium', 205);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (8, 'repellendus', '1972-09-13', 'id', 'Voluptatum vel blanditiis sapiente rerum a.', 'ducimus', 213);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (9, 'enim', '1998-01-21', 'aspernatur', 'Voluptas et qui et qui nihil necessitatibus porro voluptas.', 'est', 272);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (10, 'velit', '1981-12-29', 'recusandae', 'Cupiditate et qui sed et.', 'repellat', 278);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (11, 'sint', '2009-07-17', 'fuga', 'Consequuntur a et quo.', 'recusandae', 203);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (12, 'quo', '1971-06-27', 'vel', 'Assumenda et dolorem dignissimos voluptatem et recusandae ut sit.', 'et', 284);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (13, 'dicta', '1981-04-10', 'est', 'Alias molestiae illum enim.', 'dolor', 267);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (14, 'cum', '1972-10-09', 'dolor', 'Soluta enim sed veniam voluptatibus.', 'beatae', 215);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (15, 'reiciendis', '1975-04-28', 'eius', 'Occaecati nihil qui magni autem ut deleniti.', 'velit', 220);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (16, 'qui', '1973-07-01', 'iusto', 'Esse qui animi molestiae sit doloribus exercitationem molestiae.', 'sit', 228);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (17, 'voluptatem', '1999-04-27', 'ut', 'Cupiditate voluptatibus deleniti repellendus et excepturi.', 'soluta', 233);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (18, 'dolorem', '1971-01-27', 'consequatur', 'Autem temporibus quia corporis explicabo sint est aut.', 'dolorem', 250);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (19, 'libero', '2001-02-24', 'rerum', 'Porro impedit est dicta fuga.', 'nostrum', 289);
INSERT INTO premio (`id_premio`, `tipo`, `fecha_premio`, `nombre_premio`, `descripcion`, `mensual_anual`, `numero_legajo`) VALUES (20, 'sit', '1970-10-04', 'quasi', 'Totam aspernatur adipisci possimus veniam consequatur.', 'magnam', 274);

#
# TABLE STRUCTURE FOR: telefono
#

DROP TABLE IF EXISTS telefono;

CREATE TABLE `telefono` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `numero_legajo` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `numero_legajo` (`numero_legajo`),
  CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`numero_legajo`) REFERENCES `empleado` (`numero_legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (2, 201);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (25, 201);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (22, 202);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (35, 203);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (92, 203);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (100, 206);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (47, 208);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (60, 208);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (23, 209);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (69, 209);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (27, 211);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (46, 212);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (4, 213);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (79, 214);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (30, 216);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (31, 216);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (59, 216);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (11, 218);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (83, 218);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (70, 221);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (86, 222);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (12, 223);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (41, 228);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (42, 229);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (8, 232);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (76, 233);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (18, 235);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (20, 235);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (36, 236);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (51, 236);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (97, 236);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (99, 236);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (72, 237);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (96, 238);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (71, 239);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (68, 240);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (65, 241);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (88, 241);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (13, 242);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (7, 243);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (80, 243);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (89, 243);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (38, 244);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (85, 246);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (53, 247);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (37, 248);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (67, 248);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (74, 249);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (49, 250);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (77, 250);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (29, 251);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (15, 253);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (26, 253);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (94, 253);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (52, 257);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (33, 258);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (98, 258);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (78, 259);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (64, 260);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (40, 261);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (54, 261);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (82, 261);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (1, 264);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (21, 264);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (44, 264);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (14, 266);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (43, 267);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (16, 270);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (81, 275);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (10, 276);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (34, 276);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (61, 276);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (84, 276);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (55, 277);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (93, 277);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (5, 278);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (45, 278);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (56, 281);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (32, 282);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (66, 283);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (95, 283);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (50, 285);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (73, 285);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (75, 285);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (6, 286);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (17, 287);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (39, 288);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (57, 288);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (62, 289);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (87, 289);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (90, 294);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (91, 294);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (24, 296);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (3, 297);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (9, 297);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (28, 297);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (58, 297);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (63, 298);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (19, 299);
INSERT INTO telefono (`numero`, `numero_legajo`) VALUES (48, 299);


#
# TABLE STRUCTURE FOR: usuario
#

DROP TABLE IF EXISTS usuario;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_de_usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_de_inicio_cargo_actual` date NOT NULL,
  `numero_legajo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `numero_legajo` (`numero_legajo`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`numero_legajo`) REFERENCES `empleado` (`numero_legajo`)
)  ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO usuario (`id_usuario`, `nombre_de_usuario`, `email`, `contraseña`, `fecha_de_inicio_cargo_actual`, `numero_legajo`) VALUES (1, 'Velit', hol@hotmail.com, 12345, 2003-01-13, 1);
INSERT INTO usuario (`id_usuario`, `nombre_de_usuario`, `email`, `contraseña`, `fecha_de_inicio_cargo_actual`, `numero_legajo`) VALUES (2, 'Vel', hola@hotmail.com, 12345, 2003-01-13, 2);
INSERT INTO usuario (`id_usuario`, `nombre_de_usuario`, `email`, `contraseña`, `fecha_de_inicio_cargo_actual`, `numero_legajo`) VALUES (3, 'Lola', lola@hotmail.com, 12345, 2003-01-14, 6);
