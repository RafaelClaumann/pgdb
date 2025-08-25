-- Criação do banco de dados
CREATE DATABASE empresa;
USE empresa;

-- Criação da tabela de funcionários
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10, 2)
);

-- Criação da tabela de auditoria
-- 'I' para inserção, 'U' para update, 'D' para delete
CREATE TABLE auditoria_funcionarios (
    auditoria_id INT AUTO_INCREMENT PRIMARY KEY,
    operacao CHAR(1),
    data_operacao TIMESTAMP NOT NULL,
    id INT,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2)
);
