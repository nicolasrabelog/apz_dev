-- 01. Exibindo apenas Olá mundo
SELECT "Olá Mundo";

-- 01.1 A função CONCAT realiza e concatenação de tres strings
SELECT CONCAT("Olá"," 2024 ", "Mundo");

-- 01.2 A função LOWER converte as letras maiúsculas  em letras minúsculas
SELECT LOWER("Converte TUDO para minúsculas"); 

-- 01.3 A função LPAD (left pad) acrescenta zerros (terceiro argumento) á string "123"
SELECT LPAD('123' , 4, '0');

-- 01.4 Exibe string com espaços nas extremidades 
SELECT ' string com espaços nas extremidades ';

-- 01.5 A função TRIM remove os espaços em branco das extremidades da string
SELECT TRIM(' string com espaços nas extremidades ');

-- 01.6 A função REGEXP_SUBSTR procura um determinado padrão (segundo argumento) nums string informada (primeiro argumento)
SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '//d+');

-- 02. Criando nova tabela

CREATE TABLE clientes_experimentos (
 id INT PRIMARY KEY,
 nome_completo VARCHAR(255),
 email VARCHAR(255),
 telefone VARCHAR(20)
);

-- 02.1
INSERT INTO  clientes_experimentos (id, nome_completo, email, telefone)
VALUES 
	(1, 'João Pedro Silva', 'joao.pedro@gmail.com', '(11) 1234-5678'),
	(2, 'Maria Luiza OLiveira', 'maria.luiza@yahoo.com', '(21) 9876-5432'),
	(3, 'Carlos Eduardo Santos', 'carlos.eduardo@hotmail.com', '(31) 1111-2222'),
	(4, 'Ana Beatriz Costa', 'ana.beatriz@gmail.com', '(41) 3333-4444'),
	(5, 'Luis Felipe Pereira', 'luis.felipe@yahoo.com', '(51) 5555-6666'),
	(6, 'Rafaela Cristina Souza', 'rafaela.cristina@hotmail.com', '(61) 7777-8888'),
	(7, 'Pedro Henrique Almeida', 'pedro.henrique@gmail.com', '(71) 9999-0000'),    
	(8, 'Gabriela Oliveira Lima', 'gabriela.oliveira@yahoo.com', '(81) 1234-5678'),
	(9, 'Felipe Augusto Rocha', 'felipe.augusto@hotmail.com', '(91) 9876-5432'),
	(10, 'Isabela Cristina Ferreira', 'isabela.cristina@gmail.com', '(10) 1111-2222'),
	(11, 'Chico Buarque', 'chico.buarque@gmail.com', '(11) 1234-5678'),
	(12, 'Silva Buarque', 'silva.buarque@yahoo.com', '(21) 9876-5432'),
	(13, 'Eduardo Bueno', 'eduardo.bueno@hotmail.com', '(31) 1111-2222'),
	(14, 'Mestre Sprinter', 'mestre.sprinter@gmail.com', '(41) 3333-4444'),
	(15, 'Dr. Coorper', 'dr.coorper2yahoo.com', '(51) 5555-6666');
