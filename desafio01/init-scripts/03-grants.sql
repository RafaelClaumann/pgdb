-- =========================
-- Usuários Administrativos
-- =========================

-- DBA: controle total
CREATE USER 'dba_user'@'%' IDENTIFIED BY 'senhaSegura#1';
GRANT ALL PRIVILEGES ON *.* TO 'dba_user'@'%' WITH GRANT OPTION;
-- Justificativa: acesso irrestrito para administração completa do banco.

-- Infra: monitoramento e manutenção
CREATE USER 'infra_user'@'%' IDENTIFIED BY 'senhaSegura#2';
GRANT PROCESS, RELOAD, REPLICATION CLIENT, SHOW DATABASES ON *.* TO 'infra_user'@'%';
-- Justificativa: monitorar performance, replicação e reinicializar cache, sem acesso direto aos dados.

-- Auditor: leitura global
CREATE USER 'auditor_user'@'%' IDENTIFIED BY 'senhaSegura#3';
GRANT SELECT ON loja.* TO 'auditor_user'@'%';
-- Justificativa: leitura completa para compliance/auditoria, sem alterar nada.

-- =========================
-- Usuários Operacionais
-- =========================

-- RH: gestão de funcionários
CREATE USER 'rh_user'@'%' IDENTIFIED BY 'senhaSegura#4';
GRANT SELECT, INSERT, UPDATE ON loja.Funcionarios TO 'rh_user'@'%';
-- Justificativa: gerencia dados de funcionários, sem acesso a clientes/pedidos.

-- E-commerce: vendas online
CREATE USER 'ecom_user'@'%' IDENTIFIED BY 'senhaSegura#6';
GRANT SELECT, INSERT, UPDATE ON loja.Pedidos TO 'ecom_user'@'%';
GRANT SELECT, INSERT, UPDATE ON loja.ItensPedidos TO 'ecom_user'@'%';
GRANT SELECT, INSERT, UPDATE ON loja.Produtos TO 'ecom_user'@'%';
GRANT SELECT, INSERT, UPDATE ON loja.Clientes TO 'ecom_user'@'%';
GRANT SELECT, INSERT, UPDATE ON loja.Enderecos TO 'ecom_user'@'%';
-- Justificativa: pode registrar pedidos online, gerenciar dados de clientes e endereços, mas não alterar produtos.

-- BI: relatórios e dashboards
CREATE USER 'bi_user'@'%' IDENTIFIED BY 'senhaSegura#7';
GRANT SELECT ON loja.* TO 'bi_user'@'%';
-- Justificativa: acesso apenas leitura para relatórios, sem risco de modificação.

-- =========================
-- Aplicar as permissões
-- =========================
FLUSH PRIVILEGES;
