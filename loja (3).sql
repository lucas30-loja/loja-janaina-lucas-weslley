-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jun-2019 às 16:06
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `Cod` int(11) NOT NULL,
  `Primeiro_Nome` varchar(50) DEFAULT NULL,
  `Segundo_Nome` varchar(50) DEFAULT NULL,
  `Ultimo_Nome` varchar(40) DEFAULT NULL,
  `Login` varchar(100) DEFAULT NULL,
  `Senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`Cod`, `Primeiro_Nome`, `Segundo_Nome`, `Ultimo_Nome`, `Login`, `Senha`) VALUES
(1, 'Lucas', 'Weslley', 'Bezerra', 'admin', '74af58eff838ef3f41feb90170fa6077c21f4bca');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `cod` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`cod`, `nome`) VALUES
(3, 'Eletrônicos'),
(4, 'Tecnologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `Cod` int(11) NOT NULL,
  `Primeiro_Nome` varchar(50) DEFAULT NULL,
  `Segundo_Nome` varchar(50) DEFAULT NULL,
  `Ultimo_Nome` varchar(40) DEFAULT NULL,
  `Senha` varchar(100) DEFAULT NULL,
  `Login` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Cpf` varchar(30) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Rg` varchar(30) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `Cep` varchar(40) DEFAULT NULL,
  `Telefone_Fixo` varchar(30) DEFAULT NULL,
  `Telefone_Celular1` varchar(30) DEFAULT NULL,
  `Telefone_Celular2` varchar(30) DEFAULT NULL,
  `Data_Nasc` varchar(20) DEFAULT NULL,
  `Rua` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`Cod`, `Primeiro_Nome`, `Segundo_Nome`, `Ultimo_Nome`, `Senha`, `Login`, `Email`, `Cpf`, `Sexo`, `Rg`, `Estado`, `Cidade`, `Bairro`, `Numero`, `Cep`, `Telefone_Fixo`, `Telefone_Celular1`, `Telefone_Celular2`, `Data_Nasc`, `Rua`) VALUES
(3, 'Janaina', 'Davilla', 'Oliveira', '7decf15a80fa8e69acc2df117516f1b7bc99013c', 'luc', 'luccapedrohenriquemartins_@yaooh.com', '333.333.333-33', 'Feminino', '3333333-3', 'CE', 'América', '33333', 1612, '62240-974', '3422-1017', '(22) 22222-2222', '(22) 22222-2222', '99/99/9999', 'Rua Gregório Pereira de Sousa, s/n'),
(4, 'Lucas', 'Weslley', 'Bezerra', 'b5f030aa6367d03b1f57facc5078ebec721c5b23', 'lucas', 'lucasweslley@hotmail.com', '888.888.888-88', 'Masculino', '8888888-8', 'CE', 'Morada Nova', 'Populares', 1612, '62240-974', '9999-9999', '(99) 99999-9999', '(99) 99999-9999', '04/09/2001', 'petronio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `Cod` int(11) NOT NULL,
  `FK_Cliente_Cod` int(11) DEFAULT NULL,
  `FK_Produto_Cod` int(11) DEFAULT NULL,
  `Data_Compra` varchar(20) DEFAULT NULL,
  `Data_Entrega` varchar(40) DEFAULT NULL,
  `Frete` varchar(40) DEFAULT NULL,
  `Num_Cartao` double DEFAULT NULL,
  `Nome_Cartao` varchar(100) DEFAULT NULL,
  `Data_Validade_Cartao` varchar(20) DEFAULT NULL,
  `Codigo_Cartao` int(11) DEFAULT NULL,
  `Preco_Venda` varchar(50) DEFAULT NULL,
  `Qtd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`Cod`, `FK_Cliente_Cod`, `FK_Produto_Cod`, `Data_Compra`, `Data_Entrega`, `Frete`, `Num_Cartao`, `Nome_Cartao`, `Data_Validade_Cartao`, `Codigo_Cartao`, `Preco_Venda`, `Qtd`) VALUES
(12, 3, 3, '09/06/19', '22/03/2019', '0', 99900099888, 'Lucas Weslley', '22/22/22', 999, '10x R$8 987,50', 1),
(14, 3, 3, '09/06/19', '13/06/2019', 'Aguardando informações', 0, 'uuu', '999', 99, 'R$ 89 875,00', 1),
(18, 3, 3, '09/06/19', '20/08/2019', 'Aguardando informações', 88, '888', '88', 88, 'R$ 99,00', 1),
(19, 3, 2, '09/06/19', '01/12/2019', '888', 0, 'yyyy', 'yy', 0, '2x R$44 888,00', 1),
(21, 3, 2, '12/06/19', '13/06/2019', 'Aguardando informações', 88888, 'hjhjh', '888888', 888, '5x R$18 576,80', 1),
(22, 3, 1, '12/06/19', '24/06/2019', 'Aguardando informações', 88888, 'hjhjh', '888888', 888, '5x R$18 576,80', 4),
(23, 3, 2, '15/06/19', '16/06/2019', 'Aguardando informações', 99999999999999, 'nnnnn', '99999', 999, '9x R$9 986,11', 1),
(24, 3, 3, '15/06/19', '25/06/2019', '888', 99999999999999, 'nnnnn', '99999', 999, '9x R$9 986,11', 1),
(25, 3, 2, '15/06/19', '16/06/2019', 'Aguardando informações', 222, 'dfdsf', '222', 222, 'R$ 88 888,00', 1),
(26, 3, 2, '15/06/19', '16/06/2019', 'Aguardando informações', 9999999999, 'kjkj', '99999', 999, 'R$ 88 888,00', 1),
(27, 3, 2, '15/06/19', '16/06/2019', '00', 999999, 'Lucas Weslley', '9999999', 999, 'R$88 888,00', 1),
(28, 3, 3, '15/06/19', '20/11/2021', '888', 88888, 'MARIANA BEZERRA OLI', '99999', 999, '9x R$109,67', 1),
(29, 3, 3, '15/06/19', '20/11/2021', '888', 88888, 'MARIANA BEZERRA OLI', '99999', 999, '9x R$109,67', 1),
(30, 3, 3, '15/06/19', '20/11/2021', '888', 88888, 'MARIANA BEZERRA OLI', '99999', 999, '9x R$109,67', 1),
(31, 3, 3, '15/06/19', '20/11/2021', '888', 88888, 'MARIANA BEZERRA OLI', '99999', 999, '9x R$109,67', 1),
(32, 3, 3, '15/06/19', '20/11/2021', '888', 88888, 'MARIANA BEZERRA OLI', '99999', 999, '9x R$109,67', 1),
(33, 3, 2, '15/06/19', '16/06/2019', '00', 888, 'nnnnn', '999999', 888, 'R$88 888,00', 1),
(34, 3, 2, '15/06/19', '16/06/2019', '00', 888, 'nnnnn', '999999', 888, 'R$88 888,00', 1),
(35, 3, 2, '15/06/19', '16/06/2019', '00', 8888888888, 'jkjkjkj', '888888', 888, 'R$88 888,00', 1),
(36, 3, 2, '15/06/19', '16/06/2019', '00', 88888, 'dfsdf', '88888', 888, 'R$88 888,00', 1),
(37, 3, 2, '15/06/19', '16/06/2019', '00', 88888, 'dfsdf', '88888', 888, 'R$88 888,00', 1),
(38, 3, 2, '15/06/19', '16/06/2019', 'Aguardando informações', 4444444444, 'fsdfds', '44444', 4444, '2x R$44 444,00no carrinho', 1),
(39, 4, 4, '17/06/2019', '28/06/2019', '100', 0, '', '00/00', 0, '9x R$380,00no carrinho', 1),
(40, 4, 1, '17/06/2019', '28/04/2019', '88', 0, '', '00/00', 0, '9x R$380,00no carrinho', 1),
(41, 3, 4, '17/06/2019', '28/06/2019', '100', 9999, '', '99/99', 999, '4x R$583,25no carrinho', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `Cod` int(11) NOT NULL,
  `Nome` varchar(40) DEFAULT NULL,
  `Slogan_img` varchar(50) DEFAULT NULL,
  `Frase_efeito` varchar(50) DEFAULT NULL,
  `Texto_empresa` varchar(2000) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `Cep` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telefone_1` varchar(40) DEFAULT NULL,
  `Telefone_2` varchar(40) DEFAULT NULL,
  `Num` int(11) DEFAULT NULL,
  `Frase_2` varchar(200) DEFAULT NULL,
  `Frase_3` varchar(100) DEFAULT NULL,
  `Slide_1` varchar(50) DEFAULT NULL,
  `Slide_2` varchar(50) DEFAULT NULL,
  `Slide_3` varchar(50) DEFAULT NULL,
  `Slide_4` varchar(50) DEFAULT NULL,
  `Frase_slide_1` varchar(50) DEFAULT NULL,
  `Sub_frase_slide_1` varchar(50) DEFAULT NULL,
  `Frase_slide_2` varchar(50) DEFAULT NULL,
  `Sub_frase_slide_2` varchar(50) DEFAULT NULL,
  `Frase_slide_3` varchar(50) DEFAULT NULL,
  `Sub_frase_slide_3` varchar(50) DEFAULT NULL,
  `Frase_slide_4` varchar(50) DEFAULT NULL,
  `Sub_frase_slide_4` varchar(50) DEFAULT NULL,
  `Bg_img1` varchar(50) DEFAULT NULL,
  `Bg_img2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`Cod`, `Nome`, `Slogan_img`, `Frase_efeito`, `Texto_empresa`, `Cidade`, `Estado`, `Bairro`, `Cep`, `Email`, `Telefone_1`, `Telefone_2`, `Num`, `Frase_2`, `Frase_3`, `Slide_1`, `Slide_2`, `Slide_3`, `Slide_4`, `Frase_slide_1`, `Sub_frase_slide_1`, `Frase_slide_2`, `Sub_frase_slide_2`, `Frase_slide_3`, `Sub_frase_slide_3`, `Frase_slide_4`, `Sub_frase_slide_4`, `Bg_img1`, `Bg_img2`) VALUES
(1, 'Janas Eletronics', '1e0b5606aa32cddbdabc3f85ed487bc510e6e3b0.jpg', 'Abrindo um multiverso para voce.', 'Não vamos tão a fundo nos novos hábitos, aliás, que tal voltarmos a meados da década de 90, para quem tem idade. Lembram-se de como era a sua infância? Já contei noutro post, se não houvesse internet, como foi a minha, confesso que fui uma criança feliz, tive oportunidade de brincar na rua, jogar futebol quase todos os dias, andar de bicicleta pela cidade, sem que meus pais se preocupassem. Você deixaria seus filhos a solta por qualquer que seja o município? Aí está.\r\nMuitas pessoas questionam, por que as crianças de hoje em dia não andam mais de bicicleta, jogam futebol, não estão mais na rua brincando como “crianças normais”. O medo, a insegurança nos trouxe isto, não foi apenas o avanço tecnológico e seus videogames, ou foi? Não vejo assim.', 'Morada Nova', 'Ceará', 'Populares', '62940-000', 'JanaEletronics@gmail.com', '3422-1017', '(88) 99877336253', 1222, 'mensagem de bg1', 'mensagem de bg dois', 'c3d9d925651e7e764e0f5e6f4db01f168f095465.jpg', '061e4d913434c7d0ce332d549cda293e5934cb99.jpg', '724a928fc9e55f0dcdf37429f2239a81799f63fb.jpeg', '6ca6185659aa5ba00ab39d60cedd96dc8a1554e9.jpg', 'Janas Eletronics', 'Levando um novo Mundo para dentro do seu Mundo', 'Melhores Produtos', 'Menores preços você só encontra aqui', 'Aproveite já as melhores ofertas', 'Não perca tempo Cadastre-se', 'Produtos de todas as categorias', 'Confira já', 'cf7b739eb26d2afc382efa3ffb9dd2d5b29106bb.jpg', '4d2c8cd05d6d5b6d805bd46dd5feb830ef6a8e74.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `Cod` int(11) NOT NULL,
  `Norte` varchar(20) NOT NULL,
  `Tempo_norte` varchar(20) NOT NULL,
  `Sul` varchar(20) NOT NULL,
  `Tempo_sul` varchar(20) NOT NULL,
  `Sudeste` varchar(20) NOT NULL,
  `Tempo_sudeste` varchar(20) NOT NULL,
  `Centro_Oeste` varchar(20) NOT NULL,
  `Tempo_centro_oeste` varchar(20) NOT NULL,
  `Nordeste` varchar(20) NOT NULL,
  `Tempo_nordeste` varchar(20) NOT NULL,
  `Cod_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`Cod`, `Norte`, `Tempo_norte`, `Sul`, `Tempo_sul`, `Sudeste`, `Tempo_sudeste`, `Centro_Oeste`, `Tempo_centro_oeste`, `Nordeste`, `Tempo_nordeste`, `Cod_produto`) VALUES
(20, '200', '22', '124', '25', '122', '10', '14', '44', '40', '10', 2),
(22, '88', '9', '77', '9', '88', '3', '88', '3', '888', '9', 3),
(23, '200', '13', '448', '30', '229', '10', '370', '220', '100', '10', 4),
(24, '120', '17', '280', '32', '200', '29', '180', '20', '88', '10', 1),
(25, '88', '12', '882', '12', '889', '12', '88', '12', '88', '39', 5),
(26, '33', '33', '33', '33', '33', '33', '33', '33', '33', '3', 6),
(28, '77', '77', '7', '7', '77', '7', '77', '777', '77', '66', 7),
(29, '8', '88', '88', '88', '88', '88', '88', '88', '8', '2', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `Cod` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Preco_Compra` float DEFAULT NULL,
  `Descricao` varchar(20000) DEFAULT NULL,
  `Qtd_Estoque` int(11) DEFAULT NULL,
  `Categoria` int(50) NOT NULL,
  `Imagem_1` varchar(50) DEFAULT NULL,
  `Imagem_2` varchar(50) DEFAULT NULL,
  `Imagem_3` varchar(50) DEFAULT NULL,
  `Imagem_4` varchar(50) DEFAULT NULL,
  `Parcelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`Cod`, `Nome`, `Preco_Compra`, `Descricao`, `Qtd_Estoque`, `Categoria`, `Imagem_1`, `Imagem_2`, `Imagem_3`, `Imagem_4`, `Parcelas`) VALUES
(1, 'Smart TV LCD', 2390, 'No Brasil, a televisão foi inaugurada em 18 de setembro de 1950. Chegou pelas mãos de Assis Chateaubriand, fundador do primeiro canal de televisão no país, a TV Tupi. Foram instalados vários aparelhos de televisão, espalhados pela cidade, para que a população conhecesse e entendesse o que era a TV, uma vez que a maioria das pessoas ainda não fazia ideia do que se tratava.', 22, 3, '053e7ca4f6820a00da71f1ee921d4059629b70a6.jpg', '43ffaa8a1230d57cd38cddcba410cccfff62afa6.jpg', 'e9da757976bfdc8c0d6e418b51ef99f87c883329.jpg', 'c13215aebd4a8cefe24dcecbaeb07374f51de2c1.jpg', 7),
(2, 'Notbook Positivo', 88888, 'uuuu', 66, 3, 'f0eb072e34c130acb3c7022a0f8ebb09ce0de279.jpg', '75e5deb6c78f18445bcb98a8c3121c2b4fc73c14.jpg', 'a2cd1cc7acd84b5cf2f3ceee12d9217f6fe57ecf.jpg', 'fe7e8289c8192e284290494c2a0a33f1c985b875.jpg', 4),
(3, 'Notbook Samsumg', 99, 'Nootbook tecnologico de grande qualidade para ser usado por todo tipo de pessoa atentendo todas as demandas', 23, 3, 'b38145dd10d9f082cfa631bf64d6da4e0f9eba3f.jpg', 'bbb0b394cbb8495a1928c4e767b29144f93298be.jpg', '6f4d8b726c1ab09ff63627d3292e53659deb2d41.jpg', '61b03623c51d0ddd880ebf2712089a2c86d21f7a.jpg', 12),
(4, 'Notbook Samsumg', 2233, 'Um laptop, no Brasil, também denominado de notebook ou a expressão pouco usada computador compacto e em Portugal chamado de computador portátil é um computador portátil, leve, projetado para ser transportado e utilizado em diferentes lugares com facilidade.', 10, 4, '768161d3df9e81ecfd675f340a98e47e5ae6d85c.jpg', 'e69c412e70d320cbb2a728043deee38362e4c2c1.jpg', 'ae28788b5e17a89ba60c8e7da1eac1310b571ac6.jpg', 'd4b4a94108ab70f2bf104e55c400b01e1ae2e1f4.jpg', 10),
(6, 'Notbook Positivo', 8888, 'Galaxy J8, Galaxy J5 Prime e Galaxy J4 Plus estão no pódio. Levantamento do comparador Buscapé traz iPhone 8 Plus na oitava posição.', 88, 4, '202eb9a5a2e0d7f117f8806a4411d918b765207b.jpg', 'ce53b35afa1fa4f6b259e8a4f8286972236c59f5.jpg', '1871affa2a61d3d37b1e18f5372fcc8306c0a2d7.jpg', 'af1eef9679402d9aca1601aaef4073502cc352d6.jpg', 12),
(7, 'adhasjdhas', 888888, 'ksdjaskdj', 555, 3, 'f2f101363f2d966b3b3d352f1b6baf26c8307c7f.jpg', 'bd6743466b4a873bceb60e8fc312a181f32a8e9d.jpg', '85cf49d21db1429818c48c5377e3f22e1aeeae1f.jpg', '4c508385f04df350224f75265e04cd60f1ee7388.jpg', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Cod`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Cod`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`Cod`),
  ADD KEY `FK_compra_Cliente` (`FK_Cliente_Cod`),
  ADD KEY `FK_compra_Produto` (`FK_Produto_Cod`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`Cod`);

--
-- Indexes for table `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`Cod`),
  ADD KEY `fk_produto` (`Cod_produto`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`Cod`),
  ADD KEY `fk_categoria` (`Categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entrega`
--
ALTER TABLE `entrega`
  MODIFY `Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `FK_compra_Cliente` FOREIGN KEY (`FK_Cliente_Cod`) REFERENCES `cliente` (`Cod`),
  ADD CONSTRAINT `FK_compra_Produto` FOREIGN KEY (`FK_Produto_Cod`) REFERENCES `produto` (`Cod`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
