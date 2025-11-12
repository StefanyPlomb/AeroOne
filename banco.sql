CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    senha VARCHAR(255),
    telefone VARCHAR(20),
    cargo VARCHAR(100),
    cpf VARCHAR(14),
    passaporte VARCHAR(20),
    status VARCHAR(1)
);

CREATE TABLE enderecos (
    id SERIAL PRIMARY KEY,
    idUsuario INTEGER NOT NULL,
    cep VARCHAR(9) NOT NULL,
    rua VARCHAR(150) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    uf CHAR(2) NOT NULL,
    numero VARCHAR(10),
    CONSTRAINT fk_endereco_usuario
        FOREIGN KEY (idUsuario)
        REFERENCES usuarios(id)
        ON DELETE CASCADE
);

CREATE TABLE voos (
    id SERIAL PRIMARY KEY,
	numeroVoo VARCHAR(20) NOT NULL, 
    origem VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    dataPartida VARCHAR(10) NOT NULL,
	horaPartida VARCHAR(8) NOT NULL,
    dataChegada VARCHAR(10) NOT NULL,
	horaPartida VARCHAR(8) NOT NULL,
    status VARCHAR(1);
);

INSERT INTO usuarios (nome, email, senha, telefone, cargo, cpf, passaporte, status) VALUES ('Stefany Diniz Plombon', 'admin@gestor.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '11900000000', 'Gestor', '12345678900', 'AB123456', 'A');