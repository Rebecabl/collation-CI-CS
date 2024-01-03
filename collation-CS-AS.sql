-- Criar tabela sem collation definida
CREATE TABLE Usuarios_CS
(
    Nome VARCHAR(50)
);

-- Inserir dados
INSERT INTO Usuarios_CS (Nome) VALUES ('Joao');
INSERT INTO Usuarios_CS (Nome) VALUES ('joao');
INSERT INTO Usuarios_CS (Nome) VALUES ('Maria');

-- Consulta case-sensitive
SELECT * FROM Usuarios_CS WHERE Nome COLLATE Latin1_General_CS_AS = 'Joao';
-- Resultado: Retorna apenas 'Joao', pois a comparação é case-sensitive
