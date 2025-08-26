USE empresa;

-- Insere 3 funcionarios
INSERT INTO funcionarios(id, nome, cargo, salario)
VALUES      (1, 'Rafael', 'Desenvolvedor', 5500.00),
            (2, 'Mariana', 'Analista', 4200.50),
            (3, 'Carlos', 'Gerente', 7800.00);

--
-- aqui a tabela auditoria_funcionarios tem 3 registros
--

-- Atualiza salário e cargo de um funcionário
UPDATE  funcionarios
SET     salario = 6000.00,
        cargo = 'Desenvolvedor Sênior'
WHERE
        id = 1;

--
-- aqui a tabela auditoria_funcionarios tem 4 registros
--

-- Atualiza nome de outro funcionário
UPDATE  funcionarios
SET     nome = 'Mariana Silva'
WHERE
        id = 2;

--
-- aqui a tabela auditoria_funcionarios tem 5 registros
--

-- Remove um funcionário
DELETE FROM funcionarios
WHERE id = 3;

--
-- aqui a tabela auditoria_funcionarios tem 6 registros
-- verificar o arquivo readme.txt para ver o resultado de `auditoria_funcionarios`
--
