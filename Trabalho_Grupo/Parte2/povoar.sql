PRAGMA foreign_keys = ON;

INSERT INTO PESSOA VALUES (1, "Alexandra Mendes", 20, 201604741, "Rua do Picoto", "F");
INSERT INTO PESSOA VALUES (2, "Ana Claudia Mendes", 26, 20181504, "Rua do Picoto", "F");
INSERT INTO PESSOA VALUES (3, "Duarte Carvalho", 20, 15540645, "Rua Monte Aventino", "M");
INSERT INTO PESSOA VALUES (4, "Joao Gama Amaral", 20, 04152018, "Rua das Antas", "M");
INSERT INTO PESSOA VALUES (5, "Joana Silva Rodrigues", 23, 03122180, "Rua Manuel Laranjeira", "F");
INSERT INTO PESSOA VALUES (6, "Ricardo Sousa", 22, 0123456, "Rua Igreja das Antas", "M" );
INSERT INTO PESSOA VALUES (7, "Carolina Soares", 20, 3213132, "Rua Igreja das notas", "F" );
INSERT INTO PESSOA VALUES (8, "Herrera Ferreira", 105, 231123, "Estadio do dragao", "M" );
INSERT INTO PESSOA VALUES (9, "Alexandra Carvalho", 24, 204604741, "Rua do Fereiro", "F");
INSERT INTO PESSOA VALUES (10, "Ana Mendes", 26, 20181504, "Avenida dos Clérigos", "F");
INSERT INTO PESSOA VALUES (11, "Filipe Carvalho", 22, 15544645, "Rua Monte Aventino", "M");
INSERT INTO PESSOA VALUES (12, "Joao Silva", 20, 04158018, "Rua das Antas", "M");
INSERT INTO PESSOA VALUES (13, "Joana Rodrigues", 23, 03172180, "Rua Manuel Américo", "F");
INSERT INTO PESSOA VALUES (14, "Rui Sousa", 22, 0193456, "Avenida Europa", "M" );
INSERT INTO PESSOA VALUES (15, "Rui Soares", 20, 3253132, "Rua Igreja dos Monges", "F" );
INSERT INTO PESSOA VALUES (16, "Rui Alves", 19, 237123, "Estadio do Bessa", "M" );

INSERT INTO GESTOR VALUES (1, 6, 790, 966482169, "ricardosousa@gmail.com", "2015-04-25", "2018-03-15");
INSERT INTO GESTOR VALUES (2, 4, 750, 915158744, "joaogamaamaral@gmail.com", "2014-12-01", "2018-03-12");
INSERT INTO GESTOR VALUES (3, 7, 800, 969529577, "alexanderwegner@hotmail.com", "2016-05-02", "2018-04-30");
INSERT INTO GESTOR VALUES (4, 9, 900, 979378288, "auchan_2018@web.com", "2017-08-02", "2019-04-04");

INSERT INTO CLIENTE VALUES (1, 1);
INSERT INTO CLIENTE VALUES (2, 2);
INSERT INTO CLIENTE VALUES (3, 3);
INSERT INTO CLIENTE VALUES (4, 4);
INSERT INTO CLIENTE VALUES (5, 5);
INSERT INTO CLIENTE VALUES (6, 6);
INSERT INTO CLIENTE VALUES (7, 7);
INSERT INTO CLIENTE VALUES (8, 8);
INSERT INTO CLIENTE VALUES (9, 9);
INSERT INTO CLIENTE VALUES (10, 10);
INSERT INTO CLIENTE VALUES (11, 11);

INSERT INTO FUNCIONARIO VALUES (1, 1, 600, "Full Time", 3, "2016-01-01", "2019-01-01");
INSERT INTO FUNCIONARIO VALUES (2, 2, 610, "Part Time", 5, "2014-01-01", "2017-01-01");
INSERT INTO FUNCIONARIO VALUES (3, 3, 610, "Full Time", 6, "2016-01-01", "2019-01-01");
INSERT INTO FUNCIONARIO VALUES (4, 4, 610, "Part Time", 5, "2014-01-01", "2017-01-01");
INSERT INTO FUNCIONARIO VALUES (5, 6, 600, "Full Time", 3, "2016-02-21", "2019-02-21");
INSERT INTO FUNCIONARIO VALUES (6, 12, 610, "Part Time", 5, "2014-06-22", "2017-06-22");
INSERT INTO FUNCIONARIO VALUES (7, 13, 610, "Full Time", 6, "2016-07-01", "2019-07-01");
INSERT INTO FUNCIONARIO VALUES (8, 14, 610, "Part Time", 5, "2014-08-01", "2017-08-01");
INSERT INTO FUNCIONARIO VALUES (9, 5, 600, "Full Time", 3, "2016-09-01", "2019-09-01");
INSERT INTO FUNCIONARIO VALUES (10, 15, 610, "Part Time", 5, "2014-11-01", "2017-11-01");

INSERT INTO SEGURANCA VALUES (1,1);
INSERT INTO OPLIMPEZA VALUES (2,2);
INSERT INTO OPCAIXA VALUES (3,3);
INSERT INTO GERENTE VALUES (4,4);

INSERT INTO LOJA VALUES ("Rua Henrique de Sousa Reis, 4200-003 Porto", 220730920, "Mon-Fri : 8:30AM-11PM, Sat-Sun : 8:30AM-9PM", 1);
INSERT INTO LOJA VALUES ("Avenida Robert Smith, 4710-249 Braga", 253240300, "Mon-Fri : 8:30AM - 11PM, Sat-Sun : 8:30AM - 9PM", 2);

INSERT INTO FORNECEDOR VALUES ("Nestle","Rua Tronco 864, 4465-244 Sao Mamede de Infesta", "nestleportugal@gmail.com", 229050200);

INSERT INTO CENTRODISTRIBUICAO VALUES (1, "Rua da Nestle, 116-3860", "Mon-Fri : 9AM-6PM, Sat-Sun : 9AM-5PM" );

INSERT INTO TIPOPRODUTO VALUES (1, "Chocolate", 056000291452, "2018-07-21", "Nestl�");
INSERT INTO TIPOPRODUTO VALUES (2, "Cereais", 012345678905, "2018-05-10", "Nestl�");

INSERT INTO PRODUTO VALUES (1, 1.10, 3, "KitKat", 1);
INSERT INTO PRODUTO VALUES (2, 2.00, 2, "Wonka", 1);
INSERT INTO PRODUTO VALUES (3, 2.70, 1, "Estrelitas", 2);
INSERT INTO PRODUTO VALUES (4, 2.70, 1, "Cheerios", 2);

INSERT INTO DESCONTO VALUES (1, 15, "2018-04-05", "2018-04-15", "Avenida Robert Smith, 4710-249 Braga", 1);

INSERT INTO COMPRA VALUES (1, (1.10 - 0.15*1.10)*3, "2018-04-10", "Multibanco", NULL, NULL, 1);
INSERT INTO COMPRA VALUES (2, (2.00 - 0.15*2.00)*2, "2018-04-10", "Multibanco", NULL, NULL, 1);
INSERT INTO COMPRA VALUES (3, 2.70, "2018-04-10", "Multibanco", NULL, NULL, 2);
INSERT INTO COMPRA VALUES (4, 2.70, "2018-04-10", "Multibanco", NULL, NULL, 2);
