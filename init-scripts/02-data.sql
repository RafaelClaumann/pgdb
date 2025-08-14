-- Populando as tabelas
USE loja;

INSERT INTO Clientes (id, nome, email, senha, telefone)
VALUES      (1, 'Maria Silva', 'maria@gmail.com', 'senha123', '11987654321'),
            (2, 'João Souza', 'joao@hotmail.com', 'joao123', '11923456789');

INSERT INTO Funcionarios (id, nome, cargo, salario, data_contratacao)
VALUES      (1, 'Ana Cardoso', 'Gerente', 4500.00, '2022-01-15'),
            (2, 'Carlos Menezes', 'Vendedor', 2500.00, '2021-10-01');

INSERT INTO Produtos (id, nome, descricao, preco, quantidade_estoque)
VALUES      (1, 'Smartphone XYZ', 'Smartphone com tela de 6.5", 128GB de armazenamento e câmera de 48MP', 1500.00, 25),
            (2, 'Fone de Ouvido Bluetooth', 'Fone de ouvido bluetooth com cancelamento de ruído', 300.00, 50);

INSERT INTO Status (id, nome)
VALUES      (1, 'CARRINHO'),
            (2, 'PAGAMENTO'),
            (3, 'ANDAMENTO'),
            (4, 'ENTREGUE');

INSERT INTO Pedidos (id, id_cliente, id_funcionario, id_status, data_pedido)
VALUES      (1, 1, 1, 4, '2023-03-25'),
            (2, 2, 2, 3, '2023-03-28');

INSERT INTO ItensPedidos (id_pedido, id_produto, quantidade, preco_unitario)
VALUES      (1, 1, 1, 1500.00),
            (1, 2, 2, 300.00),
            (2, 2, 1, 300.00);

<<<<<<< Updated upstream:init-scripts/02-data.sql
INSERT INTO Enderecos(id, id_cliente, logradouro, numero, bairro, cidade, estado, cep)
VALUES      (1, 1, 'Rua das gaivotas', 838, 'Ingleses', 'Florianópolis', 'SC', '88037-299'),
            (2, 1, 'Rua do trabalho', 299, 'Centro', 'Florianópolis', 'SC', '88037-090');

INSERT INTO Enderecos(id, id_cliente, logradouro, numero, complemento, bairro, cidade, estado, cep)
VALUES      (3, 2, 'Rua dos urubus', 383, 'fundos, casa bege', 'Portugueses', 'Florianópolis', 'SC', '88037-199');
=======



>>>>>>> Stashed changes:init-scripts/01-data.sql
