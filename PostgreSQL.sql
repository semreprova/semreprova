-- Tabela para armazenar dados dos alunos
CREATE TABLE alunos (
    id serial PRIMARY KEY,
    nome VARCHAR(50),
    data_nascimento DATE,
    cpf VARCHAR(15) UNIQUE,
    email VARCHAR(50) UNIQUE,
    senha VARCHAR(50)
);

-- Tabela para armazenar dados dos professores
CREATE TABLE professores (
    id serial PRIMARY KEY,
    nome VARCHAR(50),
    formacao VARCHAR(100),
    onde_leciona VARCHAR(50),
    disciplinas VARCHAR(100),
    email VARCHAR(50) UNIQUE,
    senha VARCHAR(50)
);

-- Tabela para armazenar dados dos administradores
CREATE TABLE administradores (
    id serial PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    setor VARCHAR(50),
    privilegios VARCHAR(100),
    equipe VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    senha VARCHAR(50)
);

-- Tabela para armazenar dados dos cursos
CREATE TABLE cursos (
    id serial PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    id_professor INT REFERENCES professores(id)
);

-- Tabela para armazenar dados das disciplinas
CREATE TABLE disciplinas (
    id serial PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    id_curso INT REFERENCES cursos(id),
    id_professor INT REFERENCES professores(id)
);

-- Tabela para armazenar dados das turmas
CREATE TABLE turmas (
    id serial PRIMARY KEY,
    id_aluno INT REFERENCES alunos(id),
    id_professor INT REFERENCES professores(id),
    disciplina VARCHAR(100),
    tamanho_turma INT
);

-- Tabela para armazenar dados das compras
CREATE TABLE compras (
    id serial PRIMARY KEY,
    id_aluno INT REFERENCES alunos(id),
    id_curso INT REFERENCES cursos(id),
    descricao_curso VARCHAR(100)
);

-- Tabela para armazenar dados das notas
CREATE TABLE notas (
    id serial PRIMARY KEY,
    id_aluno INT REFERENCES alunos(id),
    id_disciplina INT REFERENCES disciplinas(id),
    nota FLOAT
);

-- Tabela para armazenar dados das avaliações
CREATE TABLE avaliacoes (
    id serial PRIMARY KEY,
    id_aluno INT REFERENCES alunos(id),
    id_curso INT REFERENCES cursos(id),
    estrelas INT,
    comentario TEXT
);

-- Tabela para armazenar dados do carrinho de compras
CREATE TABLE carrinho (
    id serial PRIMARY KEY,
    id_aluno INT REFERENCES alunos(id),
    id_curso INT REFERENCES cursos(id),
    quantidade INT,
    valor_compra FLOAT
);