# Desafio 1 - Gerenciamento de Banco de Dados Estudo de Caso 

O objetivo é aplicar os conceitos como backup e restauração, recuperação de dados, controle de permissões, ética e segurança, integridade e consistência de dados.

A empresa está enfrentando problemas com o gerenciamento do seu banco de dados, como falhas de segurança, inconsistências e falta de 
controle das permissões de acesso.

#### Você deve realizar as seguintes tarefas, documentando cada etapa e justificando suas escolhas:

1. **Análise e Planejamento**: Analise a situação da E-Shop e identifique os principais problemas e desafios relacionados ao gerenciamento do banco de dados e como resolvê-los.

2. **Backup e Restauração**: Descreva um procedimento de backup e restauração para o banco de dados da E-Shop, detalhando as etapas e o cronograma para a realização destas tarefas.

3. **Recuperação de Dados**: Crie uma situação hipotética em que alguns dados foram perdidos ou corrompidos. Descreva como você aplicaria o procedimento de recuperação de dados criado no passo 2.

4. **Controle de Permissões**: Defina um esquema de controle de permissões para os diferentes usuários do sistema, como administradores, funcionários e clientes. Justifique suas escolhas.

5. **Ética e Segurança**: Identifique possíveis vulnerabilidades de segurança e questões éticas no gerenciamento do banco de dados. Proponha soluções para melhorar a segurança e garantir a ética no tratamento dos dados.

6. **Integridade e Consistência de Dados**: Verifique a integridade e a consistência dos dados no banco de dados atual e proponha melhorias. Implemente as mudanças sugeridas, utilizando constraints e outros recursos do SGBD.

#### Uma visão geral das respostas esperadas para cada uma das tarefas da atividade abrange:

1. Análise e Planejamento: Problemas identificados podem incluir falhas de segurança (acesso não autorizado, vazamento de informações), inconsistências nos dados (duplicação, dados incorretos), controle de permissões inadequado (usuários com privilégios excessivos). O plano de ação deve abordar soluções para cada problema identificado.

2. Backup e Restauração: Escolha do tipo de backup (completo, incremental ou diferencial), frequência dos backups (diário, semanal, mensal), armazenamento dos backups (local ou remoto), procedimento de restauração em caso de falhas.

3. Recuperação de Dados: Descrever uma situação hipotética, por exemplo a corrupção de uma tabela devido a uma falha no sistema ou até mesmo uma catástrofe, como um incêndio. Descrever como aplicar o procedimento de recuperação de dados, utilizando o backup adequado e seguindo as etapas estabelecidas no passo 2.

4. Controle de Permissões: Definir os diferentes níveis de permissões para administradores, funcionários e clientes. Implementar as permissões no SGBD, utilizando recursos como roles e grants.

5. Ética e Segurança: Identificar vulnerabilidades, como o armazenamento inseguro de senhas (está sendo armazenada como texto) e protocolos inseguros de redes (não está descrito, mas deve haver a preocupação). Propor soluções.

6. Integridade e Consistência de Dados: Verificar as tabelas e identificar problemas de integridade e consistência. Implementar melhorias, como a adição de constraints.
