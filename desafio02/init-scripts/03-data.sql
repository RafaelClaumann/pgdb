USE empresa;

-- Insere 3 funcionarios
-- Devem ser criados 3 registros na tabela `auditoria_funcionarios`
-- Total registros `auditoria_funcionarios` = 3
INSERT INTO funcionarios(id, nome, cargo, salario)
VALUES      (1, 'Rafael', 'Desenvolvedor', 5500.00),
            (2, 'Mariana', 'Analista', 4200.50),
            (3, 'Carlos', 'Gerente', 7800.00);

-- Atualiza salário e cargo de um funcionário
-- Deve ser criado 1 registro na tabela `auditoria_funcionarios`
-- Total registros `auditoria_funcionarios` = 4
UPDATE  funcionarios
SET     salario = 6000.00,
        cargo = 'Desenvolvedor Sênior'
WHERE
        id = 1;

-- Atualiza nome de outro funcionário
-- Deve ser criado 1 registro na tabela `auditoria_funcionarios`
-- Total registros `auditoria_funcionarios` = 5
UPDATE  funcionarios
SET     nome = 'Mariana Silva'
WHERE
        id = 2;

-- Remove um funcionário
-- Deve ser criado 1 registro na tabela `auditoria_funcionarios`
-- Total registros `auditoria_funcionarios` = 6
DELETE FROM funcionarios
WHERE id = 3;

--
-- aqui a tabela auditoria_funcionarios tem 6 registros
-- verificar o arquivo readme.txt para ver o resultado de `auditoria_funcionarios`
--
