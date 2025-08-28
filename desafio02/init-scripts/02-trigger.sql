-- Comandos úteis:
--  SHOW TRIGGERS;
--  SHOW TRIGGERS FROM <database_name>;
--  DROP TRIGGER IF EXISTS <trigger_name>;
--  CREATE TRIGGER <trigger_name> { BEFORE | AFTER } { INSERT | UPDATE | DELETE } ON <table_name>;

USE empresa;

-- Criar a trigger
DELIMITER $$

-- Trigger disparada apos inserir um novo funcionario
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

-- Trigger disparada apos atualizar um funcionario
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

-- Trigger disparada apos deletar um funcionario
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

-- Testando triggers com campo no formato JSON
-- São as mesmas triggers mostradas acima, porém com o campo text_data recebendo JSON

-- Trigger disparada apos inserir um novo funcionario
CREATE TRIGGER after_insert_funcionarios_json
AFTER INSERT ON funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_funcionarios_json (
        operacao,
        text_data
    )
    VALUES (
        'I',
        JSON_OBJECT(
            'id_cliente', NEW.id,
            'nome', NEW.nome,
            'cargo', NEW.cargo,
            'salario', NEW.salario
        )
    );
END$$

-- Trigger disparada apos atualizar um funcionario
CREATE TRIGGER after_update_funcionarios_json
AFTER UPDATE ON funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_funcionarios_json (
        operacao,
        text_data
    )
    VALUES (
        'U',
        JSON_OBJECT(
            'id_cliente', NEW.id,
            'nome', NEW.nome,
            'cargo', NEW.cargo,
            'salario', NEW.salario,
            'old_nome', OLD.nome,
            'old_cargo', OLD.cargo,
            'old_salario', OLD.salario
        )
    );
END$$

DELIMITER ;
