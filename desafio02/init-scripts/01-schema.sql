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
    operacao ENUM('I','U','D') NOT NULL,
    data_operacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id INT,
    new_nome VARCHAR(100),
    old_nome VARCHAR(100),
    new_cargo VARCHAR(100),
    old_cargo VARCHAR(100),
    new_salario DECIMAL(10, 2),
    old_salario DECIMAL(10, 2)
);

CREATE TABLE auditoria_funcionarios_json (
    auditoria_id INT AUTO_INCREMENT PRIMARY KEY,
    operacao ENUM('I','U','D') NOT NULL,
    data_operacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    text_data JSON NOT NULL
);
