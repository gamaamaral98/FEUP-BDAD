PRAGMA foreign_keys = ON;

INSERT INTO PESSOA VALUES (1, "Alexandra Mendes", 20, 201604741, "Rua do Picoto", "F");
INSERT INTO PESSOA VALUES (2, "Ana Cláudia Mendes", 26, 20181504, "Rua do Picoto", "F");
INSERT INTO PESSOA VALUES (3, "Duarte Carvalho", 20, 15540645, "Rua Monte Aventino", "M");
INSERT INTO PESSOA VALUES (4, "João Gama Amaral", 20, 04152018, "Rua das Antas", "M");
INSERT INTO PESSOA VALUES (5, "Joana Silva Rodrigues", 23, 03122180, "Rua Manuel Laranjeira", "F");
INSERT INTO PESSOA VALUES (6, "Ricardo Sousa", 22, 0123456, "Rua Igreja das Antas", "M" );

INSERT INTO GESTOR VALUES (1, 6, 790, 966482169, "riacardosousa@gmail.com", 2015-04-25, 2018-03-15);
INSERT INTO GESTOR VALUES (2, 4, 750, 915158744, "joaogamaamaral@gmail.com", 2014-12-01, 2018-03-12);

INSERT INTO CLIENTE VALUES (1, 1);
INSERT INTO CLIENTE VALUES (2, 2);

INSERT INTO LOJA VALUES ("Rua Henrique de Sousa Reis, 4200-003 Porto", 220730920, "Mon-Fri : 8:30AM-11PM, Sat-Sun : 8:30AM-9PM", 1);
INSERT INTO LOJA VALUES ("Avenida Robert Smith, 4710-249 Braga", 253240300, "Mon-Fri : 8:30AM - 11PM, Sat-Sun : 8:30AM - 9PM", 2);

INSERT INTO TIPOPRODUTO VALUES (1, "Bolachas", 056000291452, 2018-07-21, "Nestlé");
INSERT INTO TIPOPRODUTO VALUES (2, "Cereais", 012345678905, 2018-05-10, "Nestlé");


INSERT INTO FORNECEDOR VALUES ("Nestlé","Rua Tronco 864, 4465-244 São Mamede de Infesta", "nestleportugal@gmail.com", 229050200);