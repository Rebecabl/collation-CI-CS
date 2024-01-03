-- 1. Usar o banco de dados
USE Teste_1291

-- 2. Alterar o tipo de dados e a collation da coluna ds_conteudo na tabela LOG_APLICACAO_OLD
ALTER TABLE LOG_APLICACAO_OLD 
ALTER COLUMN ds_conteudo varchar(max) COLLATE Latin1_General_CI_AI NULL

-- 3. Alterar o tipo de dados e a collation da coluna ds_conteudo na tabela LOG_APLICACAO
ALTER TABLE LOG_APLICACAO 
ALTER COLUMN ds_conteudo varchar(max) COLLATE Latin1_General_CI_AI NULL

-- 4. Verificar a collation do banco de dados após as alterações
SELECT DATABASEPROPERTYEX('Teste_1291', 'Collation') AS Collation

-- 5. Se necessário, ajustar outras colunas e tabelas conforme necessário

-- 6. Se a condição CONVERT(varchar, ds_titulo_portal) is null depender da collation,
--    ajuste conforme necessário
SELECT TOP(1000000)
    dt_acao,
    CASE 
        WHEN CONVERT(varchar, ds_titulo_portal) IS NULL THEN CONVERT(varchar, ds_conteudo)
        ELSE CONVERT(varchar, ds_titulo_portal)
    END AS ds_titulo_portal
FROM LOG_APLICACAO 
JOIN DOCUMENTO ON LOG_APLICACAO.cd_chave = DOCUMENTO.cd_documento
