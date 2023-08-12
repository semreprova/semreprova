-- Criação do banco de dados
CREATE DATABASE SemReprovaMetrics;

-- Usar o banco de dados recém-criado
USE SemReprovaMetrics;

-- Tabela para armazenar métricas das instituições
CREATE TABLE MetricasInstituicao (
    ID INT PRIMARY KEY,
    InstituicaoNome VARCHAR(100),
    DataRegistro DATETIME,
    Faturamento DECIMAL(18, 2),
    NumeroAlunos INT,
    DesempenhoAlunos DECIMAL(5, 2)
);
