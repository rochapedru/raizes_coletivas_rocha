CREATE DATABASE db_raizes_coletivas;

USE db_raizes_coletivas;

-- Criação da tabela CATEGORIA, que será nossa CHAVE PRIMÁRIA
CREATE TABLE tb_categorias(
id BIGINT auto_increment,
tipo varchar (255) NOT NULL, -- FRUTAS, LEGUMES, VERDURAS
fornecedor varchar (255) NOT NULL, -- DE ONDE VEM?
PRIMARY KEY (id)
);

-- Criação da tabela PRODUTOS, que recebe uma chave estrangeira
CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome varchar (255) NOT NULL,
preco decimal (6,2) NOT NULL,
estoque bigint,
descricao varchar (500),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) references tb_categorias(id)
);


-- Criação da tabela USUARIOS, que não recebe chave estrangeira pois não estamos fazendo Marketplace. 
CREATE TABLE tb_usuarios(
id BIGINT auto_increment,
nome varchar (255) NOT NULL,
usuario varchar (255) NOT NULL,
senha varchar (255) NOT NULL,
foto varchar (255),
PRIMARY KEY (id)
);





