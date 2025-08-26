-- SHOW TRIGGERS;
-- SHOW TRIGGERS FROM <database_name>;
-- DROP TRIGGER IF EXISTS <trigger_name>;
-- CREATE TRIGGER <trigger_name> { BEFORE | AFTER } { INSERT | UPDATE | DELETE } ON <table_name>;

USE empresa;

-- Criar a trigger
DELIMITER $$

-- trigger apos inserir um novo funcionario
CREATE TRIGGER after_insert_funcionarios
AFTER INSERT ON funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_funcionarios (
        operacao,
        id,
        new_nome, old_nome,
        new_cargo, old_cargo,
        new_salario, old_salario
    )
    VALUES (
        'I',
        NEW.id,
        NEW.nome, NULL,
        NEW.cargo, NULL,
        NEW.salario, NULL
    );
END$$

-- trigger apos atualizar um novo funcionario
CREATE TRIGGER after_update_funcionarios
AFTER UPDATE ON funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_funcionarios (
        operacao,
        id,
        new_nome, old_nome,
        new_cargo, old_cargo,
        new_salario, old_salario
    )
    VALUES (
        'U',
        NEW.id,
        NEW.nome, OLD.nome,
        NEW.cargo, OLD.cargo,
        NEW.salario, OLD.salario
    );
END$$

-- trigger apos deletar um funcionario
CREATE TRIGGER after_delete_funcionarios
AFTER DELETE ON funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_funcionarios (
        operacao,
        id,
        new_nome, old_nome,
        new_cargo, old_cargo,
        new_salario, old_salario
    )
    VALUES (
        'D',
        OLD.id,
        NULL, OLD.nome,
        NULL, OLD.cargo,
        NULL, OLD.salario
    );
END$$

DELIMITER ;
