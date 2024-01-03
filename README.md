# Instruções para Atualização da Collation no Banco de Dados `Teste_1291`

Este guia fornece instruções passo a passo para corrigir erros de collation no banco de dados `Teste_1291`. 

| Passo | Descrição |
|-------|-----------|
| 1.    | **Selecionar o Banco de Dados:** `USE Teste_1291`<br>Esta instrução define que as operações subsequentes serão realizadas no banco de dados `Teste_1291`. |
| 2.    | **Atualizar a Collation na Tabela LOG_APLICACAO_OLD:**<br>`ALTER TABLE LOG_APLICACAO_OLD ALTER COLUMN ds_conteudo varchar(max) COLLATE Latin1_General_CI_AI NULL`<br>Esta instrução altera o tipo de dados e a collation da coluna `ds_conteudo` na tabela `LOG_APLICACAO_OLD` para `varchar(max)` e `Latin1_General_CI_AI`, respectivamente. |
| 3.    | **Atualizar a Collation na Tabela LOG_APLICACAO:**<br>`ALTER TABLE LOG_APLICACAO ALTER COLUMN ds_conteudo varchar(max) COLLATE Latin1_General_CI_AI NULL`<br>Similar à instrução anterior, mas aplicada à tabela `LOG_APLICACAO`. |
| 4.    | **Verificar a Collation Atual:**<br>`SELECT DATABASEPROPERTYEX('Teste_1291', 'Collation') AS Collation`<br>Esta consulta verifica a collation atual do banco de dados após as alterações. |
| 5.    | **Ajustes Adicionais (se necessário):**<br>Se necessário, ajuste outras colunas e tabelas conforme necessário. Certifique-se de seguir a mesma lógica. |
| 6.    | **Ajustar Condição de Comparação:**<br>O último bloco de código `SELECT` utiliza a condição `CONVERT(varchar, ds_titulo_portal) IS NULL` em uma consulta na tabela `LOG_APLICACAO`. Se esta condição depender da collation, ela pode precisar ser ajustada para garantir que a comparação seja feita corretamente após as alterações de collation. |
| 7.    | **Backup e Testes:**<br>Certifique-se de realizar backup dos seus dados antes de fazer alterações significativas na estrutura das tabelas. Além disso, teste as alterações em um ambiente de desenvolvimento antes de aplicá-las em produção. |

Lembre-se de que a ordem e a execução destas instruções devem ser cuidadosamente consideradas para evitar problemas durante o processo de atualização.
