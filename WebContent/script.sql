DROP SCHEMA IF EXISTS jam;
CREATE SCHEMA IF NOT EXISTS jam;
USE jam;


CREATE TABLE `cliente` (
  `id_cliente` int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(40) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `sexo` varchar(3) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `celular` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(40) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` varchar(2) NOT NULL
);

INSERT INTO `cliente` (`username`, `nome`, `cpf`, `dt_nascimento`, `sexo`, `telefone`, `celular`, `email`, `senha`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`) VALUES
('luis', 'luis ben', '98765432111', '2000-09-08', 'M', '31667712', '219988776', 'lbenac@ig.com.br', 'lb1234', '20511000', 'rua do cafe', '25', 'proximo hipermercado Extra', 'Irajá', 'Rio de Janeiro', 'RJ'),
('mari', 'mariana de souza', '234123677', '1998-02-12', 'F', '213234553', '219985576', 'mari@ig.com.br', 'mari1234', '20310000', 'rua do arroz', '32', '','centro', 'Rio de Janeiro', 'RJ'),
('roger', 'roge122', '1237654', '1999-02-12', 'M', '21345566', '219997888', 'roger@ig.com.br', 'rg1234', '2054311', 'rua x', '33', 'mercado zona sul', 'copacabana', 'rio de janeiro', 'rj'),
('xlrogerlx', 'Roger Santos', '123456', '1996-08-24', 'M', '5518000', '0005518', 'roger.santos36@gmail.com', '123456r', '99999999', 'Rua Sao Vicente ', '53', 'Casa 2', 'Botafogo', 'Rio de Janeiro', 'RJ'),
('sas', 'asas', 'sasa', '1999-09-09', 'M', '43434', '434334', 'lben@ig.com.br', 'l12345', '232323', 'sdsd', '323', 'sds', 'sds', 'sd', 'rj'),
('roger', 'rogeril', '2658974', '1999-05-07', 'M', '2136544', '3235546', 'roger@hotmail.com', '123', '21231534', 'estrada', '22', 'sdsdsd', 'bota', 'fogo', 'rj'),
('antonio', 'Alvaro Antonio do carmo', '123987643', '1998-02-12', 'M', '213234553', '219988776', 'antonio@ig.com.br', 'an1234', '20511000','qwqwwqw', '232', 'asas', 'as', 'asas', 'as'),
('a', 'Alvaro Antonio', '12345678991', '1998-02-12', 'M', '31667712', '121', 'antonio@gmail.com', 'an1234', '1212', 'qwqw', '12', 'asa', 'ass', 'as', 'as'),
('admin', 'Administrador', 'xxxxxxxxx', '1996-04-07', 'M', '999999999', '999999999', 'admin@mail.com', 'admin123', 'xxxxxxxx', 'x', 'x', 'x', 'x', 'x', 'x');

CREATE TABLE `contato` (
  `id_contato` int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `texto` text NOT NULL
);

INSERT INTO `contato` (`nome`, `email`, `telefone`, `texto`) VALUES
('Marcelo', 'marcelo@ig.com.br', '212211221', 'Este é apenas um teste para ver funcionar'),
('Roger', 'roger@gmail.com', '5518000', 'Testando formulário de contato'),
('Aline', 'aline@senac.com', 'Quero comprar!', 'quero comprar tudo ai!!!!!!!!!!!!!!!!!!!!!!!1'),
('Roger', 'roger@gmail.com', 'Teste', 'Testando sistema de contato.');

CREATE TABLE `produto` (
  `id_produto` int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome` varchar(50) NOT NULL,
  `quantidade` int(5) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `dt_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `produto` (`nome`, `quantidade`, `foto`, `preco`, `descricao`, `dt_produto`) VALUES
('Baixo Eletrico Fender 4 Cordas', 10, 'img/baixo14.jpg', '900.00', 'descricao', '2000-01-01'),
('Banjo Americano Fender', 10, 'img/banjo21.jpg', '2900.00', 'descricao', '2000-01-02'),
('Sax Alto Eb Laqueado Harmonico', 10, 'img/sax62.jpg', '5500.00', 'descricao', '2000-01-03'),
('Guitarra Eletrica Strato', 10, 'img/guitarra66.jpg', '2200.00', 'descricao', '2000-01-04'),
('Violino 4/4 VNM46 Michael', 10, 'img/violino137.jpg', '850.00', 'descricao', '2000-01-05'),
('Violao Giannini Folk Cutaway Aço', 10, 'img/violao140.jpg', '550.00', 'descricao', '2000-01-06'),
('Harpa Celta 22 Cordas', 30, 'img/arpa147.jpg', '1500.00', 'descricao', '2000-01-07');
