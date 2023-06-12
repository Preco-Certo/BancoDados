-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bdprecocerto
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `codigo_cidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bairro_cidade` (`codigo_cidade`),
  CONSTRAINT `fk_bairro_cidade` FOREIGN KEY (`codigo_cidade`) REFERENCES `cidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Centro',1),(2,'Copacabana',2),(3,'Savassi',3),(4,'Barra',4),(5,'Batel',5),(6,'Trindade',6),(7,'Moinhos de Vento',7),(8,'Setor Oeste',8),(9,'Boa Viagem',9),(10,'Meireles',10),(11,'Batista Campos',11),(12,'Centro',12),(13,'Araés',13),(14,'Bessa',14),(15,'Mangabeiras',15),(16,'Jardim Camburi',16),(17,'Atalaia',17),(18,'Central',18),(19,'Centro',19),(20,'Plano Diretor Norte',20);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `codigo_estado` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cidade_estado` (`codigo_estado`),
  CONSTRAINT `fk_cidade_estado` FOREIGN KEY (`codigo_estado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'São Paulo',1),(2,'Rio de Janeiro',2),(3,'Belo Horizonte',3),(4,'Salvador',4),(5,'Curitiba',5),(6,'Florianópolis',6),(7,'Porto Alegre',7),(8,'Goiânia',8),(9,'Recife',9),(10,'Fortaleza',10),(11,'Belém',11),(12,'Manaus',12),(13,'Cuiabá',13),(14,'João Pessoa',14),(15,'Maceió',15),(16,'Vitória',16),(17,'Aracaju',17),(18,'Macapá',18),(19,'Boa Vista',19),(20,'Palmas',20);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `cpf` varchar(40) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `rua` int NOT NULL,
  `numero` varchar(30) NOT NULL,
  `complemento` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_rua` (`rua`),
  CONSTRAINT `fk_cliente_rua` FOREIGN KEY (`rua`) REFERENCES `rua` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'João Silva','123.456.789-01','(11) 9876-5432',1,'123','Apartamento 101'),(2,'Maria Santos','987.654.321-09','(11) 1234-5678',2,'456','Casa 2'),(3,'Pedro Souza','654.321.987-54','(11) 8765-4321',3,'789','Sala 3'),(4,'Ana Pereira','321.654.987-08','(11) 2345-6789',4,'987','Loja 4'),(5,'José Santos','567.890.123-45','(11) 7654-3210',5,'345','Apartamento 201'),(6,'Mariana Oliveira','890.123.567-90','(11) 4321-9876',6,'678','Casa 3'),(7,'Fernando Almeida','234.567.890-12','(11) 8765-4321',7,'901','Sala 4'),(8,'Juliana Rodrigues','678.901.234-56','(11) 3210-9876',8,'234','Loja 5'),(9,'Rafaela Costa','901.234.567-89','(11) 9876-5432',9,'567','Apartamento 301'),(10,'Luiz Mendes','123.456.789-01','(11) 5432-1098',10,'890','Casa 4'),(11,'Camila Fernandes','345.678.901-23','(11) 2109-8765',11,'123','Sala 5'),(12,'Gustavo Lima','567.890.123-45','(11) 1098-7654',12,'456','Loja 6'),(13,'Carolina Pereira','789.012.345-67','(11) 8765-4321',13,'789','Apartamento 401'),(14,'André Santos','012.345.678-90','(11) 5432-1098',14,'012','Casa 5'),(15,'Letícia Oliveira','234.567.890-12','(11) 1098-7654',15,'345','Sala 6'),(16,'Roberto Almeida','456.789.012-34','(11) 3210-9876',16,'678','Loja 7'),(17,'Clara Rodrigues','678.901.234-56','(11) 5432-1098',17,'901','Apartamento 501'),(18,'Gabriel Costa','901.234.567-89','(11) 1098-7654',18,'234','Casa 6'),(19,'Isabela Mendes','123.456.789-01','(11) 5432-1098',19,'567','Sala 7');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nf_pedido` int NOT NULL,
  `data` date NOT NULL,
  `codigo_fornecedor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rua_bairro` (`codigo_fornecedor`),
  CONSTRAINT `fk_rua_bairro` FOREIGN KEY (`codigo_fornecedor`) REFERENCES `fornecedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,1234,'2023-01-01',1),(2,5678,'2023-01-02',2),(3,9012,'2023-01-03',3),(4,3456,'2023-01-04',4),(5,7890,'2023-01-05',5),(6,1235,'2023-01-06',1),(7,5679,'2023-01-07',2),(8,9013,'2023-01-08',3),(9,3457,'2023-01-09',4),(10,7891,'2023-01-10',5),(11,1236,'2023-01-11',1),(12,5680,'2023-01-12',2),(13,9014,'2023-01-13',3),(14,3458,'2023-01-14',4),(15,7892,'2023-01-15',5),(16,1237,'2023-01-16',1),(17,5681,'2023-01-17',2),(18,9015,'2023-01-18',3),(19,3459,'2023-01-19',4),(20,7893,'2023-01-20',5);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_ingredientes`
--

DROP TABLE IF EXISTS `compra_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_ingredientes` (
  `codigo_ingrediente` int NOT NULL,
  `codigo_compra` int NOT NULL,
  `quantidade` int NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  PRIMARY KEY (`codigo_ingrediente`,`codigo_compra`),
  KEY `fk_compra_ingredienteS` (`codigo_compra`),
  CONSTRAINT `fk_compra_ingredienteS` FOREIGN KEY (`codigo_compra`) REFERENCES `compra` (`id`),
  CONSTRAINT `fk_compraS_ingrediente` FOREIGN KEY (`codigo_ingrediente`) REFERENCES `ingredientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_ingredientes`
--

LOCK TABLES `compra_ingredientes` WRITE;
/*!40000 ALTER TABLE `compra_ingredientes` DISABLE KEYS */;
INSERT INTO `compra_ingredientes` VALUES (1,1,2,6),(2,1,1,3),(3,1,3,8),(4,1,1,3),(5,1,4,10),(6,2,2,8),(7,2,1,5),(8,2,3,12),(9,2,1,4),(10,2,4,14),(11,3,2,10),(12,3,1,5),(13,3,3,13),(14,3,1,4),(15,3,4,16),(16,4,2,12),(17,4,1,6),(18,4,3,15),(19,4,1,5),(20,4,4,18);
/*!40000 ALTER TABLE `compra_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'São Paulo','SP'),(2,'Rio de Janeiro','RJ'),(3,'Minas Gerais','MG'),(4,'Bahia','BA'),(5,'Paraná','PR'),(6,'Santa Catarina','SC'),(7,'Rio Grande do Sul','RS'),(8,'Goiás','GO'),(9,'Pernambuco','PE'),(10,'Ceará','CE'),(11,'Pará','PA'),(12,'Amazonas','AM'),(13,'Mato Grosso','MT'),(14,'Paraíba','PB'),(15,'Alagoas','AL'),(16,'Espírito Santo','ES'),(17,'Sergipe','SE'),(18,'Amapá','AP'),(19,'Roraima','RR'),(20,'Tocantins','TO');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `razaosocial` varchar(80) NOT NULL,
  `nome_fantasia` varchar(80) NOT NULL,
  `cpf_cnpj` varchar(50) NOT NULL,
  `rg_ie` varchar(50) NOT NULL,
  `rua` int NOT NULL,
  `numero` varchar(80) NOT NULL,
  `complemento` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rua_fornecedores` (`rua`),
  CONSTRAINT `fk_rua_fornecedores` FOREIGN KEY (`rua`) REFERENCES `rua` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Fornecedor XPTO Ltda','Fantasia ABC','123.456.789/0001-00','12345678-9',5,'345','Apartamento 201'),(2,'Fornecedor XYZ S/A','Fantasia DEF','987.654.321/0001-11','98765432-1',6,'678','Casa 3'),(3,'Fornecedor ABCD EIRELI','Fantasia GHI','789.012.345/0001-22','78901234-5',7,'901','Sala 4'),(4,'Fornecedor LMN Ltda','Fantasia OPQ','234.567.890/0001-33','23456789-0',8,'234','Loja 5'),(5,'Fornecedor RST S/A','Fantasia UVW','567.890.123/0001-44','56789012-3',9,'567','Apartamento 301'),(6,'Fornecedor XYZ LTDA','Fantasia ABC','901.234.567/0001-55','90123456-7',10,'890','Casa 4'),(7,'Fornecedor GHI EIRELI','Fantasia DEF','345.678.901/0001-66','34567890-1',11,'123','Sala 5'),(8,'Fornecedor JKL Ltda','Fantasia MNO','678.901.234/0001-77','67890123-4',12,'456','Loja 6'),(9,'Fornecedor PQR S/A','Fantasia STU','012.345.678/0001-88','01234567-8',13,'789','Apartamento 401'),(10,'Fornecedor VWX EIRELI','Fantasia YZA','456.789.012/0001-99','45678901-2',14,'012','Casa 5'),(11,'Fornecedor BCD S/A','Fantasia EFG','890.123.456/0001-00','89012345-6',15,'345','Sala 6'),(12,'Fornecedor KLM Ltda','Fantasia NOP','234.567.890/0001-11','23456789-0',16,'678','Loja 7'),(13,'Fornecedor STU EIRELI','Fantasia VWX','567.890.123/0001-22','56789012-3',17,'901','Apartamento 501'),(14,'Fornecedor XYZ S/A','Fantasia ABC','901.234.567/0001-33','90123456-7',18,'234','Casa 6'),(15,'Fornecedor HIJ EIRELI','Fantasia KLM','345.678.901/0001-44','34567890-1',19,'567','Sala 7');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `login` varchar(16) NOT NULL,
  `senha` varchar(16) NOT NULL,
  `nivel` int NOT NULL,
  `cpf` varchar(40) NOT NULL,
  `rua` int NOT NULL,
  `numero` varchar(30) NOT NULL,
  `complemento` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_funcionario_rua` (`rua`),
  CONSTRAINT `fk_funcionario_rua` FOREIGN KEY (`rua`) REFERENCES `rua` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'João Silva','joao123','senha123',1,'123.456.789-01',1,'123','Apartamento 101'),(2,'Maria Santos','maria456','senha456',2,'987.654.321-09',2,'456','Casa 2'),(3,'Pedro Souza','pedro789','senha789',1,'654.321.987-54',3,'789','Sala 3'),(4,'Ana Pereira','ana987','senha987',3,'321.654.987-08',4,'987','Loja 4');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `tamanho` decimal(10,0) NOT NULL,
  `valor_unitario` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'Farinha de Trigo',2,3),(2,'Açúcar Refinado',1,1),(3,'Leite Integral',2,4),(4,'Fermento em Pó',1,2),(5,'Ovos',1,1),(6,'Chocolate em Pó',3,5),(7,'Manteiga',0,1),(8,'Sal',1,1),(9,'Óleo de Soja',2,3),(10,'Canela em Pó',0,1),(11,'Leite Condensado',3,4),(12,'Creme de Leite',1,2),(13,'Amido de Milho',1,1),(14,'Fermento Biológico',1,3),(15,'Cebola',0,1),(16,'Alho',0,0),(17,'Salsa',0,0),(18,'Pimenta-do-Reino',0,0),(19,'Tomate',0,1),(20,'Queijo Parmesão',0,2);
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes_receitas`
--

DROP TABLE IF EXISTS `ingredientes_receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredientes_receitas` (
  `codigo_ingrediente` int NOT NULL,
  `codigo_receita` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`codigo_ingrediente`,`codigo_receita`),
  KEY `fk_receita_receitas` (`codigo_receita`),
  CONSTRAINT `fk_ingrediente_ingredientes` FOREIGN KEY (`codigo_ingrediente`) REFERENCES `ingredientes` (`id`),
  CONSTRAINT `fk_receita_receitas` FOREIGN KEY (`codigo_receita`) REFERENCES `receitas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes_receitas`
--

LOCK TABLES `ingredientes_receitas` WRITE;
/*!40000 ALTER TABLE `ingredientes_receitas` DISABLE KEYS */;
INSERT INTO `ingredientes_receitas` VALUES (1,1,2),(2,1,1),(3,1,3),(4,1,1),(5,1,4),(6,2,2),(7,2,1),(8,2,3),(9,2,1),(10,2,4),(11,3,2),(12,3,1),(13,3,3),(14,3,1),(15,3,4),(16,4,2),(17,4,1),(18,4,3),(19,4,1),(20,4,4);
/*!40000 ALTER TABLE `ingredientes_receitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `valor_pagamento` decimal(10,0) NOT NULL,
  `codigo_pedido` int NOT NULL,
  `tipo_pagamento` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_codigopagamento_pedidos` (`codigo_pedido`),
  KEY `fk_tipopagamento_pedidos` (`tipo_pagamento`),
  CONSTRAINT `fk_codigopagamento_pedidos` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `fk_tipopagamento_pedidos` FOREIGN KEY (`tipo_pagamento`) REFERENCES `tipo_pagamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'2023-06-23',55,1,3),(2,'2023-06-24',70,2,2),(3,'2023-06-25',45,3,1),(4,'2023-06-26',60,4,1),(5,'2023-06-27',80,5,2),(6,'2023-06-28',35,6,3),(7,'2023-06-29',50,7,1),(8,'2023-06-30',75,8,2),(9,'2023-07-01',65,9,1),(10,'2023-07-02',90,10,2),(11,'2023-07-03',40,11,3),(12,'2023-07-04',55,12,1),(13,'2023-07-05',70,13,2),(14,'2023-07-06',45,14,1),(15,'2023-07-07',60,15,3),(16,'2023-07-08',80,16,2),(17,'2023-07-09',35,17,1);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `codigo_cliente` int NOT NULL,
  `frete` decimal(10,0) NOT NULL,
  `desconto` decimal(10,0) NOT NULL,
  `adicional` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) NOT NULL,
  `codigo_funcionario` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_cliente` (`codigo_cliente`),
  KEY `fk_pedido_funcionario` (`codigo_funcionario`),
  CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`codigo_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fk_pedido_funcionario` FOREIGN KEY (`codigo_funcionario`) REFERENCES `funcionarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2023-05-26',2,8,2,NULL,60,2),(2,'2023-05-27',3,6,2,NULL,45,1),(3,'2023-05-28',4,8,1,NULL,55,3),(4,'2023-05-29',1,5,3,NULL,40,2),(5,'2023-05-30',3,6,1,2,70,3),(6,'2023-06-01',2,8,3,NULL,65,1),(7,'2023-06-02',4,8,2,1,75,2),(8,'2023-06-03',1,5,2,NULL,55,3),(9,'2023-06-04',3,6,1,NULL,40,1),(10,'2023-06-05',2,8,3,2,80,3),(11,'2023-06-06',4,8,2,NULL,70,1),(12,'2023-06-07',1,5,2,NULL,45,2),(13,'2023-06-08',3,6,2,NULL,60,3),(14,'2023-06-09',2,8,1,2,55,1),(15,'2023-06-10',4,8,3,NULL,80,2),(16,'2023-06-11',1,5,2,NULL,55,3),(17,'2023-06-12',3,6,1,NULL,40,1),(18,'2023-06-13',2,8,3,2,75,2),(19,'2023-06-14',4,8,2,NULL,65,3),(20,'2023-06-15',1,5,1,NULL,35,1);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preco`
--

DROP TABLE IF EXISTS `preco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `codigo_produto` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_preco_produto` (`codigo_produto`),
  CONSTRAINT `fk_preco_produto` FOREIGN KEY (`codigo_produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preco`
--

LOCK TABLES `preco` WRITE;
/*!40000 ALTER TABLE `preco` DISABLE KEYS */;
INSERT INTO `preco` VALUES (1,'2023-01-01',15.99,1),(2,'2023-01-05',16.99,1),(3,'2023-01-10',17.99,1),(4,'2023-01-01',19.99,2),(5,'2023-01-05',20.99,2),(6,'2023-01-10',21.99,2),(7,'2023-01-01',10.99,3),(8,'2023-01-05',11.99,3),(9,'2023-01-10',12.99,3),(10,'2023-01-01',25.99,4),(11,'2023-01-05',26.99,4),(12,'2023-01-10',27.99,4),(13,'2023-01-01',18.99,5),(14,'2023-01-05',19.99,5),(15,'2023-01-10',20.99,5);
/*!40000 ALTER TABLE `preco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `tamanho` decimal(10,0) NOT NULL,
  `taxa_lucro` decimal(10,0) NOT NULL,
  `codigo_receita` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_receita` (`codigo_receita`),
  CONSTRAINT `fk_pedido_receita` FOREIGN KEY (`codigo_receita`) REFERENCES `receitas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Macarronada','Deliciosa macarronada para 2 pessoas',10,1,1),(2,'Lasanha','Clássica lasanha com molho de tomate e queijo gratinado',15,1,2),(3,'Risoto de Frango','Risoto cremoso com pedaços suculentos de frango',12,1,3),(4,'Feijoada','Feijoada completa com carne de porco e acompanhamentos',20,1,4),(5,'Salmão Grelhado','Salmão fresco grelhado com legumes e molho especial',18,1,5),(6,'Pizza Margherita','Pizza clássica com massa fina, molho de tomate, queijo e manjericão',14,1,6),(7,'Hambúrguer Cheeseburguer','Hambúrguer suculento com queijo derretido e acompanhamentos',8,1,7),(8,'Torta de Frango','Torta recheada com frango desfiado e temperos especiais',12,1,8),(9,'Strogonoff de Carne','Carne macia em molho cremoso de creme de leite e champignon',16,1,9),(10,'Sushi Combo','Combinação variada de sushis frescos e saborosos',18,1,10),(11,'Salada Caesar','Salada refrescante com alface, croutons, queijo parmesão e molho caesar',9,1,11),(12,'Pasta Carbonara','Massa italiana ao molho cremoso de queijo, ovos e bacon',13,1,12),(13,'Frango Xadrez','Frango cozido com legumes crocantes e molho agridoce',15,1,13),(14,'Coxinha de Frango','Salgadinho tradicional com recheio de frango desfiado',6,1,14),(15,'Mousse de Chocolate','Sobremesa cremosa de chocolate com raspas e calda',7,1,15),(16,'Torta de Limão','Torta gelada com recheio de limão e cobertura de chantilly',10,1,16),(17,'Picanha Grelhada','Suculenta picanha grelhada com acompanhamentos',20,1,17),(18,'Ravióli de Queijo','Massa fresca recheada com queijo e servida com molho de tomate',12,1,18),(19,'Camarão à Baiana','Camarões temperados e refogados ao estilo baiano',16,1,19),(20,'Sanduíche Vegetariano','Sanduíche saudável com legumes frescos e queijo',9,1,20);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_pedidos`
--

DROP TABLE IF EXISTS `produtos_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_pedidos` (
  `codigo_produto` int NOT NULL,
  `codigo_pedido` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`codigo_produto`,`codigo_pedido`),
  KEY `fk_pedido_pedidos` (`codigo_pedido`),
  CONSTRAINT `fk_pedido_ingrediente` FOREIGN KEY (`codigo_produto`) REFERENCES `produtos` (`id`),
  CONSTRAINT `fk_pedido_pedidos` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `fk_produto_produtos` FOREIGN KEY (`codigo_produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_pedidos`
--

LOCK TABLES `produtos_pedidos` WRITE;
/*!40000 ALTER TABLE `produtos_pedidos` DISABLE KEYS */;
INSERT INTO `produtos_pedidos` VALUES (1,3,2),(1,5,1),(1,7,2),(1,9,1),(2,3,1),(2,5,2),(2,7,1),(2,9,2),(3,4,3),(3,6,2),(3,8,3),(3,10,2),(4,4,2),(4,6,3),(4,8,2);
/*!40000 ALTER TABLE `produtos_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receitas`
--

DROP TABLE IF EXISTS `receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receitas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_criacao` date NOT NULL,
  `taxa` decimal(10,0) NOT NULL,
  `preco_custo` decimal(10,0) DEFAULT NULL,
  `rendimento` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitas`
--

LOCK TABLES `receitas` WRITE;
/*!40000 ALTER TABLE `receitas` DISABLE KEYS */;
INSERT INTO `receitas` VALUES (1,'2023-01-01',1,10,10),(2,'2023-01-02',1,15,15),(3,'2023-01-03',1,20,20),(4,'2023-01-04',1,12,12),(5,'2023-01-05',1,18,18),(6,'2023-01-06',1,11,11),(7,'2023-01-07',1,16,16),(8,'2023-01-08',1,19,19),(9,'2023-01-09',1,14,14),(10,'2023-01-10',1,17,17),(11,'2023-01-11',1,13,13),(12,'2023-01-12',1,22,22),(13,'2023-01-13',1,16,16),(14,'2023-01-14',1,21,21),(15,'2023-01-15',1,11,11),(16,'2023-01-16',1,18,18),(17,'2023-01-17',1,15,15),(18,'2023-01-18',1,20,20),(19,'2023-01-19',1,12,12),(20,'2023-01-20',1,19,19);
/*!40000 ALTER TABLE `receitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rua`
--

DROP TABLE IF EXISTS `rua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rua` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `codigo_bairro` int NOT NULL,
  `CEP` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ruas_bairro` (`codigo_bairro`),
  CONSTRAINT `fk_ruas_bairro` FOREIGN KEY (`codigo_bairro`) REFERENCES `bairro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rua`
--

LOCK TABLES `rua` WRITE;
/*!40000 ALTER TABLE `rua` DISABLE KEYS */;
INSERT INTO `rua` VALUES (1,'Rua A',1,'01000-000'),(2,'Avenida Atlântica',2,'22000-000'),(3,'Avenida Getúlio Vargas',3,'30100-000'),(4,'Rua Oito de Dezembro',4,'40100-000'),(5,'Rua XV de Novembro',5,'80000-000'),(6,'Avenida da Trindade',6,'88000-000'),(7,'Rua Padre Chagas',7,'90400-000'),(8,'Rua dos Buritis',8,'74100-000'),(9,'Avenida Boa Viagem',9,'51000-000'),(10,'Avenida Beira Mar',10,'60100-000'),(11,'Travessa Angustura',11,'66000-000'),(12,'Rua Amazonas',12,'69000-000'),(13,'Avenida do CPA',13,'78000-000'),(14,'Rua dos Girassóis',14,'58000-000'),(15,'Avenida Fernandes Lima',15,'57000-000'),(16,'Avenida Dante Michelini',16,'29000-000'),(17,'Rua João Cardoso',17,'49000-000'),(18,'Avenida FAB',18,'68900-000'),(19,'Avenida Ville Roy',19,'69300-000'),(20,'Quadra 104 Norte',20,'77000-000');
/*!40000 ALTER TABLE `rua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pagamento`
--

DROP TABLE IF EXISTS `tipo_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_pagamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` int NOT NULL,
  `parcela` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pagamento`
--

LOCK TABLES `tipo_pagamento` WRITE;
/*!40000 ALTER TABLE `tipo_pagamento` DISABLE KEYS */;
INSERT INTO `tipo_pagamento` VALUES (1,7,2),(2,8,1),(3,9,3),(4,10,1),(5,11,2),(6,12,3),(7,13,1),(8,14,2),(9,15,1),(10,16,3),(11,17,1),(12,18,2),(13,19,3),(14,20,1),(15,21,2),(16,22,3),(17,23,1);
/*!40000 ALTER TABLE `tipo_pagamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 17:22:27
