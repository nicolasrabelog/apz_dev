/*
SENAC DF - CEP Jessé Freire
2024.07.276 - Aprendizagem Profissional de Qualifaicação em Desenvolvimento de Softwares
Prof Hudson Neves
Projeto Final - Implementação de Banco de Dados Relacional com MySQL
Projeto - Clinica Odontológica OdontoVida */

-- 1. Criação do Arquivo/Banco de Dados
create database OdontoVida;
-- 2. Acessando Arquivo/Banco de Dados\
use OdontoVida;

-- 3. Criando Tabelas
CREATE TABLE Paciente (
  paciente_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE NOT NULL,
  telefone VARCHAR(20),
  endereco TEXT,
  emaiol VARCHAR(100)
);

CREATE TABLE Dentista (
  dentista_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  especialidade VARCHAR(50),
  telefone VARCHAR(20),
  email VARCHAR(100
);

CREATE TABLE Consulta (
  consulta_id INT AUTO_INCREMENT PRIMARY KEY
  paciente_id INT,
  dentista_id INT,
  data_consulta DATATIME,
  FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id),
  FOREIGN KEY (dentista_id REFERENCES Dentista(dentista_id)
);

CREATE TABLE Tratamento (
  tratamento_id INT AUTO_INCREMENT PRIMARY KEY,
  consulta_id INT,
  descricao TEXT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (consulta_id) REFERENCES Consulta(consulta_id)
);

CREATE TABLE Procedimento (
  procedimento_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  custo DECIMAL(10, 2) NOT NULL
);
CREATE TABLE Tratamento_Procedimento (
  tratamento_id INT AUTO_INCREMENT PRIMARY KEY,
  procedimento_id INT,
  quantidade INT DEFAULT 1,
  PRIMARY KEY (tratamento_id, procedimento_id),
  FOREIGN KEY (tratamento_id) REFERENCES Tratamento(tratamento_id),
  FOREIGN KEY (procedimento_id) REFERENCES Procedimento(procedimento_id)
);

CREATE TABLE Pagamento (
  pagamento_id INT AUT_INCREMENT PIRMARY KEY,
  tratamento_id INT,
  valor DECIMAL(10, 2) NOT NULL,
  data_pagamento DATE,
  FOREIGN KEY (tratamento_id) REFERENCES Tratamento(tratamento_id)
);



/*
SENAC DF - CEP Jesse Freire
2024.07.276 - Aprendizagem Profissional de Qualificação em Desenvovlimento de Softwares
Prof Hudson Neves 
Projeto Final - Implementação de Banco de Dados Relacional com MySQL
Projeto - Clinica Odontológica OdontoVida */
INSERT INTO Paciente (nome, data_nascimento, telefone, endereco, email) VALUES
('Ana Silva', '198-04-15', '11987654321', 'Rua das Flores, 123, São Paulo', 'ana.silva@email.com'),
('Carlos Oliveira', '1990-06-30', '2198654321', 'Avenida Paulista, 456, São Paulo', 'carlos.oliveira@email.com'),
('Fernanda Costa', '1982-12-12', '31987654321', 'Rua das Acácias, 789, Belo Horizonte', 'fernanda.costa@email.com'),
('João Santos', '1978-03-21', '41987654321', 'Praça da Liberdade, 101, Belo Horizonte', 'joao.santos@email.com'),
('Maria Souza', '1995-09-10', '51987654321', 'Rua do Mercado, 202, Rio de Janeiro', 'maria.souza@email.com'),
('Pedro Lima', '1988-07-25', '61987654321', 'Rua dos Palmeiras, 303, Rio de Janeiro', 'pedro.lima@email.com'),
('Paula Ferreira', '1992-11-11', '7198765421', 'Rua dos Pinheiros 404, Porto Alegre', 'roberto.almeida@email.com'),
('Roberto Almeida', '1984-01-20', '81987654321', 'Rua das Orquideas, 606, Curitiba', 'sofia.martins@email.com'),
('Sofia Martins', '1984', '91987654321', 'Avenida dos Anjos, 505, Porto Alegre', 'roberto.almeida@email.com'),
('Tiago Pereira', '1991-05-15', '11976543210', 'Rua dos Lirios, 707, Curitiba', 'tiago.pereira@email.com');

INSERT INTO Dentista (nome, especialidade, telefone21 email) VALUES

('Dr. João Mendes', 'Ortodontologia', '11912345678', 'joao.mendes@email.com'),
('Dra. Maria Oliveira', 'Endodontia', '21912345678', 'maria.oliveira@email.com'),
('Dr. Pedro Silva', 'periodontia', '31912345678', 'pedro.silva@email.com'),
('Dra. Fernando Santos', 'Odontopediatria', '41912345678', 'fernanda.santos@email.com'),
('Dr. Paulo Lima', 'Implantes', '51912345678', 'paulo.lima@email.com'),
('Dra. Juliana Costa', 'Estética', '6191234578', 'juliana.costa@email.com'),
('Dr. Ricardo Almeida', 'Cirurgia Oral', '71912345678', 'ricardo.almeida@email.com'),
('Dra. Luana Martins', 'Clinica Geral', '81912345678', 'luana.martins@email.com'),
('Dr Gabriel Pereira', 'Prótese Dentária', '91912345678', 'gabriel.pereira@email.com'),
('Dra. Laura Ferreira', 'Radiologia', '11923456789', 'laura.ferreira@email.com');

INSERT INTO Consulta (paciente_id, dentista_id, data_consulta) VALUES
(1, 1, '2024-09-10 10:00:00'),
(2, 2, '2024-09-11 11:00:00'),
(3, 3, '2024-09-12 09:00:00'),
(4, 4, '2024-09-13 14:00:00'),
(5, 5, '2024-09-14 15:00:00'),
(6, 6, '2024-09-15 13:00:00'),
(7, 7, '2024-09-16 16:00:00'),
(8, 8, '2024-09-17 14:00:00'),
(9, 9, '2024-09-18 12:00:00'),
(10, 10, '2024-09-19 17:00:00');
INSERT INTO Tratamento (consulta_id, descricao, data_inicio, data_fim) VALUES
(1, 'Limpeza e Polimento', '2024-09-10', '2024-09-10'),
(2, 'Tratamento de Canal', '2024-09-11', '2024-09-25'),
(3, 'Aplicação de Flúor', '2024-09-12', '2024-09-12'),
(4, 'Extração de Dente', '2024-09-13', '2024-09-13'),
(5, 'Colocação de Aparelho', '2024-09-14', '2024-12-14'),
(6, 'Implante Dentário', '2024-09-15', '2024-10-15'),
(7, 'Clareamento Dental', '2024-09-16', '2024-09-16'),
(8, 'Prótese Parcial', '2024-09-17', '2024-10-17'),
(9, 'Tratamento de Gengiva', '2024-09-18', '2024-09-25'),
(10, 'Reparo de Prótese', '2024-09-19', '2024-09-19');

INSERT INTO Procedimento (nome, custo) VALUES
('Limpeza Dental', 150.00),
('Tratamento de Canal', 800.00),
('Aplicação de Flúor', 100.00),
('Extração de Dente', 200.00),
('Colocação de Aparelho', 1500.00),
('Implante Dentário', 2000.00),
('Clareamento Dental', 500.00),
('Prótese Parcial', 1200.00),
('Tratamento de Gengiva', 300.00),
('Reparo de Prótese', 250.00);

INSERT INTO Procedimento (nome, custo) VALUES
('Limpeza Dental', 150.00),
('Tratamento de Canal', 800.00),
('Aplicação de Flúor', 100.00),
('Extração de Dente', 200.00),
('Colocação de Aparelho', 1500.00),
('Implante Dentário', 2000.00),
('Clareamento Dental', 500.00),
('Prótese Parcial', 1200.00),
('Tratamento de Gengiva', 300.00),
('Reparo de Prótese', 250.00);

INSERT INTO Tratamento_Procedimento (tratamento_id, procedimento_id, quantidades) VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10);

INSERT INTO Pagamento (tratamento_id, valor, data_pagamento) VALUES
(1, 150.00, '2024-09-10'),
(2, 800.00, '2024-09-25'),
(3, 100.00, '2024-09-12'),
(4, 200.00, '2024-09-13'),
(5, 1500.00, '2024-12-14'),
(6, 2000.00, '2024-10-15'),
(7, 500.00, '2024-09-16'),
(8, 1200.00, '2024-10-17'),
(9, 300.00, '2024-09-25'),
(10, 250.00, '2024-09-19');

/*
SENAC-DF - CEP Jessé Freire
2024.07.276 - Aprendizagem Profissonal de Qualificação em Desenvolvimento de Softwares
Prof Hudson Neves
Projeto Final - Implementação de Banco de Dados relacional com MYSQL 
Projeto - Clinica Odontológica OdontoVida*/
-- Consultas e joins
/*
	Esta consulta lista os detalhes das consultas, incluindo o nome do paciente e o nome do dentista responsável por cada consulta.
*/
SELECT
	c.consulta_id,
    p.nome AS paciente_nome,
    d.nome AS dentista_nome,
    c.data_consulta
FROM
	Consulta c
INNER JOIN 
	Paciente p ON c.paciente_id = p.paciente_id
INNER JOIN
	Dentista d ON c.dentista_id = d.dentista_id;

/*
    Esta consulta motras todos os tratamentos realizados, junto com os procedientos associados a cada tratamento e o custo total de cada procedimento. 
*/
SELECT
t.tratamento_id,
t.descricao AS tratamento_descricao,
p.nome AS procedimento_nome,
tp.quantidade,
pr.curto,
(tp.quantidade * pr.custo) AS custo_total
FROM
	Tratamento t 
INNER JOIN 
	Tratamento_Procedimento tp ON t.tramento_id = tp.tratamento_id
INNER JOIN
Procedimento pr ON tp.procedimento_id = pr.procedimento_id;

/*
  Esta consulta fornece informações sobre os pagamentos efetuados, incluindo o valor pago, a data do pagamento e adescrição do tratamento associado.
*/
   SELECT
   p.pagamento_id,
   t.descricao AS tratamento_descricao,
   p.valor AS valor_pago,
   p.data_pagamento
   FROM
       Pagamento p 
   INNER JOIN
       Tratamento t ON p.tratamento_id = t.tratamento_id;

DELIMITER //
CREATE TRIGGER AtualizarCustoTratamento
AFTER INSERT ON Tratamento_Procedimento
FOR EACH ROW
BEGIN
     DECLARE custo_total DECIMAL(10, 2);
     
     -- Calcula o custo total do tratamento
     SELECT SUM(tp-quantidade * p.custo) INTO custo_total
     FROM Tratamento_Procedimento tp
     JOIN Procedimento p ON tp.procedimento_id = p.procedimento_id
     WHERE tp.tratamento_id = NEW.tratamento_id;
     
     -- Atualiza o valor total do tratamento na tabela Tratamento
     UPDATE Tratamento
     SET valor_total = custo_total
     WHERE tratamento_id = NEW.tratamento_id;
END//
DELIMITER ;

*/
DELIMITER //

CREATE PROCEDURE RelatorioConsultasPaciente(IN pacienteID INT)
BEGIN
     -- Seleciona detalhes das consultas do paciente
     SELECT
          c.consulta_id,
          p.nome AS paciente_nome,
          d.nome AS dentista_nome,
          c.data_consulta
     FROM
         Consulta c
     INNER JOIN
         Paciente p ON c.paciente_id = p.paciente_id
	 INNER JOIN
           Dentista d ON c.dentista_id = d.dentista_id
     WHERE
         p.paciente_id = pacienteID;
END//

DELIMITER ;

