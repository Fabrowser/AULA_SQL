CREATE DATABASE MERCEARIA

USE MERCEARIA

CREATE TABLE CLIENTE
(
	CD_CLIENTE INT,
	NM_CLIENTE VARCHAR(50),
	DT_NASCIMENTO_CLIENTE DATETIME, 
	CONSTRAINT PK_CD_CLIENTE PRIMARY KEY (CD_CLIENTE)
)

CREATE TABLE PEDIDO
(
	CD_PEDIDO INT,
	DT_PEDIDO DATETIME,
	VL_PEDIDO FLOAT, 
	CD_PEDIDO_CLIENTE INT, 
	CONSTRAINT PK_CD_PEDIDO PRIMARY KEY (CD_PEDIDO),
	CONSTRAINT FK_CD_PEDIDO_CLIENTE FOREIGN KEY (CD_PEDIDO_CLIENTE)
		REFERENCES CLIENTE(CD_CLIENTE)
) 

CREATE TABLE PRODUTO
(
	CD_PRODUTO INT,
	NM_PRODUTO VARCHAR(50),
	VL_PRODUTO FLOAT, 
	CONSTRAINT PK_CD_PRODUTO PRIMARY KEY (CD_PRODUTO)
)

CREATE TABLE ITEM
(
	CD_ITEM INT,
	CD_ITEM_PEDIDO INT,
	CD_ITEM_PRODUTO INT,
	CONSTRAINT PK_CD_ITEM PRIMARY KEY (CD_ITEM),
	CONSTRAINT FK_CD_ITEM_PEDIDO FOREIGN KEY (CD_ITEM_PEDIDO)
		REFERENCES PEDIDO(CD_PEDIDO),
	CONSTRAINT FK_CD_ITEM_PRODUTO FOREIGN KEY (CD_ITEM_PRODUTO)
		REFERENCES PRODUTO(CD_PRODUTO)
) 

INSERT INTO CLIENTE VALUES (1,'ALVARO','06-05-1988');
INSERT INTO CLIENTE VALUES (2,'BIANCA','11-04-1948');
INSERT INTO CLIENTE VALUES (3,'CARLOS','15-12-1938');

SELECT * FROM CLIENTE

INSERT INTO PRODUTO VALUES (1,'LAPIS',1.50);
INSERT INTO PRODUTO VALUES (2,'CADERNO',5.75);

INSERT INTO PRODUTO VALUES (3,'CANETA',2.30);
SELECT * FROM PRODUTO

INSERT INTO PEDIDO VALUES (1,'30-04-2022',50.40, 1);
INSERT INTO PEDIDO VALUES (2,'30-04-2022',20, 1);
INSERT INTO PEDIDO VALUES (3,'30-04-2022',30.40, 1);

SELECT * FROM PEDIDO

INSERT INTO ITEM VALUES (1,1,1);
INSERT INTO ITEM VALUES (2,2,1);
INSERT INTO ITEM VALUES (3,3,2);
INSERT INTO ITEM VALUES (4,1,2);
INSERT INTO ITEM VALUES (5,1,3);

SELECT * FROM ITEM


UPDATE CLIENTE

SET NOME_CLIENTE = 'ANOTHER FUCK'
WHERE CD_CLIENTE = 1

SELECT * FROM CLIENTE

UPDATE CLIENTE

SET DT_NASCIMENTO_CLIENTE = '09-06-2000',
NOME_CLIENTE = 'AGATHA'
WHERE CD_CLIENTE = 2





