/* TSQL � UM BLOCO DE LINGUAGEM DE PROGRAMACAO.
PROGRAMAS SAO UNIDADES QUE PODEM SER CHAMADAS DE BLOCOS
AN�NIMOS. BLOCOS ANONIMOS NAO RECEBEM NOME, POIS
NAO SAO SALVOS NO BANCO. CRIAMOS BLOCOS ANONIMOS QUANDO
IREMOS EXECUTA-LOS UMA SO VEZ OU TESTAR ALGO */

/* BLOCO DE EXECU��O */

BEGIN
		PRINT 'PRIMEIRO BLOCO'
END
GO

/* BLOCOS DE ATRIBUICAO DE VARIAVEIS */

DECLARE
		@CONTADOR INT
BEGIN
		SET @CONTADOR = 5
		PRINT @CONTADOR
END
GO

/* NO SQL SERVER CADA COLUNA, VARIAVEL LOCAL, EXPRESSAO E PARAMETRO TEM UM TIPO. */

DECLARE

		@V_NUMERO NUMERIC(10,2) = 100.52,
		@V_DATA DATETIME = '20170207'
BEGIN
		PRINT 'VALOR NUMERICO: ' + CAST(@V_NUMERO AS VARCHAR)
		PRINT 'VALOR NUMERICO: ' +CONVERT(VARCHAR, @V_NUMERO)
		PRINT 'VALOR DE DATA: ' + CAST(@V_DATA AS VARCHAR)
		PRINT 'VALOR DE DATA: ' + CONVERT(VARCHAR, @V_DATA, 121)
		PRINT 'VALOR DE DATA: ' + CONVERT(VARCHAR, @V_DATA, 120)
		PRINT 'VALOR DE DATA: ' + CONVERT(VARCHAR, @V_DATA, 105)
END
GO

/* ATRIBUINDO RESULTADOS A UMA VARIAVEL */

CREATE TABLE CARROS(
	CARRO VARCHAR(20),
	FABRICANTE VARCHAR(30)
)
GO

INSERT INTO CARROS VALUES('KA','FORD')
INSERT INTO CARROS VALUES('FIESTA','FORD')
INSERT INTO CARROS VALUES('PRISMA','FORD')
INSERT INTO CARROS VALUES('CLIO','RENAULT')
INSERT INTO CARROS VALUES('SANDERO','RENAULT')
INSERT INTO CARROS VALUES('CHEVETE','CHEVROLET')
INSERT INTO CARROS VALUES('OMEGA','CHEVROLET')
INSERT INTO CARROS VALUES('PALIO','FIAT')
INSERT INTO CARROS VALUES('DOBLO','FIAT')
INSERT INTO CARROS VALUES('UNO','FIAT')
INSERT INTO CARROS VALUES('GOL','VOLKSWAGEN')
GO

DECLARE 
		@V_CONT_FORD INT,
		@V_CONT_FIAT INT
BEGIN
		--METODO 1 - O SELECT PRECISA RETORNAR UMA SIMPLES COLUNA
		--E UM SO RESULTADO
		SET @V_CONT_FORD = (SELECT COUNT(*) FROM CARROS
		WHERE FABRICANTE = 'FORD')
		
		PRINT 'QUANTIDADE FORD: ' + CAST(@V_CONT_FORD AS VARCHAR)

		--METODO 2
		SELECT @V_CONT_FIAT = COUNT(*) FROM CARROS WHERE FABRICANTE = 'FIAT'

		PRINT 'QUANTIDADE FIAT: ' + CONVERT(VARCHAR, @V_CONT_FIAT)

END
GO


/* BLOCOS IF E ELSE 
BLOCO NOMEADO - PROCEDURES
*/

DECLARE
		@NUMERO INT = 6 --DINAMICO
BEGIN
		IF @NUMERO = 5 -- EXPRESSAO BOOLEANA - TRUE
			PRINT 'O VALOR � VERDADEIRO'
		ELSE
			PRINT 'O VALOR � FALSO'
END
GO

/* CASE */

DECLARE
		@CONTADOR INT
BEGIN
		SELECT -- O CASE REPRESENTA UMA COLUNA
		CASE
			WHEN FABRICANTE = 'FIAT' THEN 'FAIXA 1'
			WHEN FABRICANTE = 'CHEVROLET' THEN 'FAIXA 2'
			ELSE 'OUTRAS FAIXAS'
		END AS "INFORMACOES",
		*
		FROM CARROS
END
GO

		SELECT -- O CASE REPRESENTA UMA COLUNA
		CASE
			WHEN FABRICANTE = 'FIAT' THEN 'FAIXA 1'
			WHEN FABRICANTE = 'CHEVROLET' THEN 'FAIXA 2'
			ELSE 'OUTRAS FAIXAS'
		END AS "INFORMACOES",
		*
		FROM CARROS

