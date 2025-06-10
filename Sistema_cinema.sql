CREATE DATABASE Sistema_cinema;
USE Sistema_cinema;

CREATE TABLE filme (
  codigo INT PRIMARY KEY,
  titulo VARCHAR(100),
  genero VARCHAR(50),
  duracao_minutos INT,
  classificacao_indicativa VARCHAR(10)
);

CREATE TABLE sala (
  num_sala INT PRIMARY KEY,
  capacidade INT,
  tipo_sala VARCHAR(10)
);

CREATE TABLE sessao (
  num_sessao INT PRIMARY KEY AUTO_INCREMENT,
  codigo INT,
  num_sala INT,
  data_exibicao DATE,
  horario TIME,
  FOREIGN KEY (codigo) REFERENCES filme(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (num_sala) REFERENCES sala(num_sala) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ingresso (
  num_ingresso INT PRIMARY KEY AUTO_INCREMENT,
  num_sessao INT,
  num_assento VARCHAR(10) NOT NULL,
  valor_ingresso DECIMAL(6,2),
  FOREIGN KEY (num_sessao) REFERENCES sessao(num_sessao) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Filme VALUES
(1, 'Duna: Parte Dois', 'Ficção Científica', 165, '14'),
(2, 'Divertida Mente 2', 'Animação', 100, 'Livre'),
(3, 'Furiosa: Uma Saga Mad Max', 'Ação', 148, '16'),
(4, 'Planeta dos Macacos: O Reinado', 'Aventura', 145, '12'),
(5, 'Os Farofeiros 2', 'Comédia', 100, '12'),
(6, 'Godzilla e Kong: O Novo Império', 'Ação', 115, '12'),
(7, 'Imaculada', 'Terror', 89, '16'),
(8, 'Challengers', 'Drama', 130, '14'),
(9, 'Garfield: Fora de Casa', 'Animação', 100, 'Livre'),
(10, 'Back to Black', 'Biografia', 120, '14');


INSERT INTO Sala VALUES
(1, 150, '2D'),
(2, 120, '3D'),
(3, 200, 'IMAX'),
(4, 100, '2D'),
(5, 80, '3D'),
(6, 160, '2D'),
(7, 120, '3D'),
(8, 180, 'IMAX'),
(9, 90, '2D'),
(10, 110, '3D');


INSERT INTO Sessao VALUES
(1, 1, 3, '2025-06-04', '19:00'),
(2, 2, 1, '2025-06-04', '17:00'),
(3, 3, 2, '2025-06-04', '21:00'),
(4, 4, 3, '2025-06-05', '18:30'),
(5, 5, 4, '2025-06-05', '20:00'),
(6, 6, 5, '2025-06-06', '16:00'),
(7, 7, 6, '2025-06-06', '22:00'),
(8, 8, 7, '2025-06-07', '19:30'),
(9, 9, 8, '2025-06-07', '15:00'),
(10, 10, 9, '2025-06-08', '20:30');


INSERT INTO Ingresso VALUES
(1, 1, 'A1', 50.00),
(2, 1, 'A2', 50.00),
(3, 2, 'B1', 30.00),
(4, 2, 'B2', 30.00),
(5, 3, 'C1', 40.00),
(6, 3, 'C2', 40.00),
(7, 4, 'D1', 60.00),
(8, 4, 'D2', 60.00),
(9, 5, 'E1', 35.00),
(10, 5, 'E2', 35.00),
(11, 1, 'A3', 50.00),
(12, 1, 'A4', 50.00),
(13, 1, 'A5', 50.00),
(14, 1, 'A6', 50.00),
(15, 1, 'A7', 50.00),
(16, 1, 'A8', 50.00),
(17, 1, 'A9', 50.00),
(18, 1, 'A10', 50.00),
(19, 2, 'B3', 30.00),
(20, 2, 'B4', 30.00),
(21, 2, 'B5', 30.00),
(22, 2, 'B6', 30.00),
(23, 2, 'B7', 30.00),
(24, 2, 'B8', 30.00),
(25, 2, 'B9', 30.00),
(26, 2, 'B10', 30.00),
(27, 3, 'C3', 40.00),
(28, 3, 'C4', 40.00),
(29, 3, 'C5', 40.00),
(30, 3, 'C6', 40.00),
(31, 3, 'C7', 40.00),
(32, 3, 'C8', 40.00),
(33, 3, 'C9', 40.00),
(34, 3, 'C10', 40.00),
(35, 4, 'D3', 60.00),
(36, 4, 'D4', 60.00),
(37, 4, 'D5', 60.00),
(38, 4, 'D6', 60.00),
(39, 4, 'D7', 60.00),
(40, 4, 'D8', 60.00),
(41, 4, 'D9', 60.00),
(42, 4, 'D10', 60.00),
(43, 5, 'E3', 35.00),
(44, 5, 'E4', 35.00),
(45, 5, 'E5', 35.00),
(46, 5, 'E6', 35.00),
(47, 5, 'E7', 35.00),
(48, 5, 'E8', 35.00),
(49, 5, 'E9', 35.00),
(50, 5, 'E10', 35.00);