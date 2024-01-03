-- Criar tabela com collation case-insensitive
CREATE TABLE Usuarios_CI
(
    Nome VARCHAR(50) COLLATE Latin1_General_CI_AS
);

-- Inserir dados
INSERT INTO Usuarios_CI (Nome) VALUES ('Joao');
INSERT INTO Usuarios_CI (Nome) VALUES ('joao');
INSERT INTO Usuarios_CI (Nome) VALUES ('Maria');

-- Consulta case-insensitive
SELECT * FROM Usuarios_CI WHERE Nome = 'Joao';
-- Resultado: Retorna 'Joao' e 'joao', pois a comparação é case-insensitive
