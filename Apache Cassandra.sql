from cassandra.cluster import Cluster

cluster = Cluster(['127.0.0.1'])  # Substitua pelo endereço dos nós do seu cluster
session = cluster.connect()

session.execute("CREATE KEYSPACE IF NOT EXISTS sem_reprova WITH replication = {'class':'SimpleStrategy', 'replication_factor':1}")
session.execute("USE sem_reprova")

# Tabela para dados do MySQL
session.execute("""
    CREATE TABLE IF NOT EXISTS dados_mysql (
        id UUID PRIMARY KEY,
        nome TEXT,
        idade INT
    )
""")

# Tabela para dados do PostgreSQL
session.execute("""
    CREATE TABLE IF NOT EXISTS dados_postgresql (
        id UUID PRIMARY KEY,
        descricao TEXT,
        valor DECIMAL
    )
""")

# Tabela para dados do SQL Server
session.execute("""
    CREATE TABLE IF NOT EXISTS dados_sql_server (
        id UUID PRIMARY KEY,
        titulo TEXT,
        conteudo TEXT
    )
""")

# Tabela para dados do RDF (exemplo fictício)
session.execute("""
    CREATE TABLE IF NOT EXISTS dados_rdf (
        sujeito TEXT PRIMARY KEY,
        predicado TEXT,
        objeto TEXT
    )
""")

# Tabela para dados do Redis (exemplo fictício)
session.execute("""
    CREATE TABLE IF NOT EXISTS dados_redis (
        chave TEXT PRIMARY KEY,
        valor TEXT
    )
""")

# Inserção de dados em cada tabela (exemplo fictício)
session.execute("""
    INSERT INTO dados_mysql (id, nome, idade)
    VALUES (uuid(), 'Alice', 25)
""")

# Repita as inserções para as outras tabelas

cluster.shutdown()
