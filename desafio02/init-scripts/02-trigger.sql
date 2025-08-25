-- Criar a trigger
DELIMITER $$

CREATE TRIGGER after_insert_funcionarios
AFTER INSERT ON funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_funcionarios (operacao, data_operacao, id, nome, cargo, salario)
    VALUES (
        'I',
        NOW(),
        NEW.id,
        NEW.nome,
        NEW.cargo,
        NEW.salario
    );
END$$

DELIMITER ;
