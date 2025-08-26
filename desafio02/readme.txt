Critérios de avaliação

*   Implementação correta dos triggers:
        - funcionarios_insert
        - funcionarios_update
        - funcionarios_delete
    devem ser criados corretamente e estar associados à tabela funcionarios.
    Os triggers devem ser disparados após as operações corretas (INSERT, UPDATE e DELETE)
    e executar as instruções adequadas para inserir registros na tabela auditoria_funcionarios.


*   Funcionamento adequado do sistema de auditoria: os registros na tabela auditoria_funcionarios devem refletir corretamente
    as operações realizadas na tabela funcionarios (inserções, atualizações e exclusões).
    
    As informações dos registros de auditoria, como a operação realizada (I, U ou D), a data da operação e os
    dados do funcionário afetado devem ser armazenadas corretamente na tabela auditoria_funcionarios.


*   Testes e verificação: os testes de inserção, atualização e exclusão na tabela funcionarios devem ser realizados com sucesso.

    A consulta para verificar os registros de auditoria na tabela auditoria_funcionarios deve mostrar os
    resultados esperados, de acordo com as operações realizadas na tabela funcionarios.


*   Qualidade e clareza do código: o código SQL deve ser bem organizado, legível e fácil de entender.

    Devem ser utilizados nomes apropriados e descritivos para tabelas, colunas e triggers.
    Caso seja necessário, comentários devem ser inseridos para explicar partes complexas ou não óbvias do código.


*   Solução de problemas e criatividade: a capacidade do aluno de identificar e resolver problemas encontrados durante o desenvolvimento do desafio.
    A habilidade em utilizar recursos e técnicas adicionais para melhorar o sistema de auditoria ou simplificar a implementação.


*   Prazo: Entregar atividade conforme prazo estabelecido.

-------------------------------------------------------------------------------------------------------------------------------------------------------

Resultado da tabela `auditoria_funcionarios` após execução dos scripts em `03-data.sql`:

+--------------+---------------------+----------+------+---------------+----------+-----------------------+---------------+-------------+-------------+
| auditoria_id | data_hora           | operacao | id   | new_nome      | old_nome | new_cargo             | old_cargo     | new_salario | old_salario |
+--------------+---------------------+----------+------+---------------+----------+-----------------------+---------------+-------------+-------------+
|            1 | 2025-08-25 23:59:51 | I        |    1 | Rafael        | NULL     | Desenvolvedor         | NULL          |     5500.00 |        NULL |
|            2 | 2025-08-25 23:59:51 | I        |    2 | Mariana       | NULL     | Analista              | NULL          |     4200.50 |        NULL |
|            3 | 2025-08-25 23:59:51 | I        |    3 | Carlos        | NULL     | Gerente               | NULL          |     7800.00 |        NULL |
|            4 | 2025-08-25 23:59:51 | U        |    1 | Rafael        | Rafael   | Desenvolvedor Sênior  | Desenvolvedor |     6000.00 |     5500.00 |
|            5 | 2025-08-25 23:59:51 | U        |    2 | Mariana Silva | Mariana  | Analista              | Analista      |     4200.50 |     4200.50 |
|            6 | 2025-08-25 23:59:51 | D        |    3 | NULL          | Carlos   | NULL                  | Gerente       |        NULL |     7800.00 |
+--------------+---------------------+----------+------+---------------+----------+-----------------------+---------------+-------------+-------------+
