BEGIN TRANSACTION;

CREATE TABLE Cliente( id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
Nome TEXT(80) NOT NULL,
CPF TEXT(20) NOT NULL UNIQUE,
Telefone TEXT,
Aniversario TEXT
);

COMMIT;

----TABELA FUNCIONARIO----

CREATE TABLE funcionario( 
id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
cargo TEXT NOT NULL,
telefone TEXT
);

----TABELA FONECEDOR----

CREATE TABLE fornecedor( 
id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
cnpj TEXT NOT NULL UNIQUE,
telefone TEXT NOT NULL
);

----TABELA PRODUTO----

CREATE TABLE produto(
id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
preco REAL NOT NULL,
validade TEXT,
id_fornecedor INTEGER NOT NULL,
FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

---- TABELA ESTOQUE----

CREATE TABLE estoque(
id_estoque INTEGER PRIMARY KEY AUTOINCREMENT,
id_produto INTEGER NOT NULL,
quantidade INTEGER NOT NULL,
FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

----TABELA VENDA----

CREATE TABLE venda(
id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
id_Cliente INTEGER NOT NULL,
id_funcionario INTEGER NOT NULL,
data_venda TEXT NOT NULL, -- YYYY/MM/DD
subtotal REAL NOT NULL,
FOREIGN KEY (id_Cliente) REFERENCES Cliente(id_Cliente),
FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

----TABELA ITEMVENDA----

CREATE TABLE itemvenda(
id_item INTEGER PRIMARY KEY AUTOINCREMENT,
id_venda INTEGER NOT NULL,
id_produto INTEGER NOT NULL,
quantidade INTEGER NOT NULL,
preco_unitario REAL NOT NULL,
FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);