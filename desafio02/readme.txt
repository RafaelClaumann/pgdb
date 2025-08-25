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
