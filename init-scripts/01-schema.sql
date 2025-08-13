-- Criação do banco de dados
CREATE DATABASE loja;
USE loja;

-- Criação do banco de dados
CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

-- Criação da tabela Funcionários
CREATE TABLE Funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_contratacao DATE NOT NULL
);

-- Criação da tabela Produtos
CREATE TABLE Produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

CREATE TABLE Status (
  id INT PRIMARY KEY,
  nome ENUM('CARRINHO', 'PAGAMENTO', 'ANDAMENTO', 'ENTREGUE') NOT NULL UNIQUE
);

-- Criação da tabela Pedidos
CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    id_cliente INT,
    id_funcionario INT,
    id_status INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios (id),
    FOREIGN KEY (id_status) REFERENCES Status (id)
);

-- Criação da tabela Itens de Pedidos
CREATE TABLE ItensPedidos (
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos (id),
    FOREIGN KEY (id_produto) REFERENCES Produtos (id)
);

CREATE TABLE Enderecos (
    id INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    logradouro VARCHAR(155) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id)
);
