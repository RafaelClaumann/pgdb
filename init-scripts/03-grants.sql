CREATE ROLE 'pdv_role';
GRANT SELECT, INSERT, UPDATE, DELETE ON loja.Clientes TO 'pdv_role';
GRANT SELECT, INSERT, UPDATE, DELETE ON loja.Produtos TO 'pdv_role'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON loja.Pedidos TO 'pdv_role'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON loja.ItensPedidos TO 'pdv_role';
GRANT SELECT, INSERT, UPDATE, DELETE ON loja.Enderecos TO 'pdv_role';
GRANT SELECT ON loja.Funcionarios TO 'pdv_role';
GRANT SELECT ON loja.Status TO 'pdv_role';

CREATE USER 'app_pdv'@'%' IDENTIFIED WITH caching_sha2_password BY 'password';
GRANT 'pdv_role' TO 'app_pdv'@'%';
SET DEFAULT ROLE 'pdv_role' TO 'app_pdv'@'%';

-- SHOW GRANTS FOR 'pdv_role';
-- SHOW GRANTS FOR 'app_pdv'@'%';
