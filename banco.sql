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

select * from usuarios

INSERT INTO usuarios (nome, email, senha, telefone, cargo, cpf, passaporte, status) VALUES ('Stefany Diniz Plombon', 'admin@gestor.com', 'ac9689e2272427085e35b9d3e3e8bed88cb3434828b43b86fc0596cad4c6e270', '11900000000', 'Gestor(a)', '12345678900', 'AB123456', 'A');

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

CREATE TABLE IF NOT EXISTS aeronaves (
    id SERIAL PRIMARY KEY,
    fabricante VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    passageirosMax INT NOT NULL,
    pilotosMax INT NOT NULL,
    comissariosMax INT NOT NULL,
);

INSERT INTO aeronaves (fabricante, modelo, passageirosMax, pilotosMax, comissariosMax) VALUES
('Airbus', 'A220', 150, 2, 4),
('Airbus', 'A318', 132, 2, 3),
('Airbus', 'A319', 156, 2, 3),
('Airbus', 'A320', 186, 2, 4),
('Airbus', 'A321', 244, 2, 5),
('Airbus', 'A330', 440, 2, 10),
('Airbus', 'A340', 475, 2, 12),
('Airbus', 'A350-900', 350, 2, 12),
('Airbus', 'A350-1000', 440, 2, 12),
('Airbus', 'A380', 853, 2, 24);

INSERT INTO aeronaves (fabricante, modelo, passageirosMax, pilotosMax, comissariosMax) VALUES
('Boeing', '737 Classic', 188, 2, 4),
('Boeing', '737 NG', 215, 2, 5),
('Boeing', '737 MAX', 230, 2, 5),
('Boeing', '747-400', 605, 2, 16),
('Boeing', '747-8', 605, 2, 16),
('Boeing', '767', 375, 2, 10),
('Boeing', '777-200', 440, 2, 14),
('Boeing', '777-300', 550, 2, 14),
('Boeing', '777-300ER', 550, 2, 14),
('Boeing', '777X', 426, 2, 12),
('Boeing', '787-8', 242, 2, 10),
('Boeing', '787-9', 290, 2, 10),
('Boeing', '787-10', 330, 2, 10);

INSERT INTO aeronaves (fabricante, modelo, passageirosMax, pilotosMax, comissariosMax) VALUES
('Embraer', 'E170', 78, 2, 2),
('Embraer', 'E175', 88, 2, 2),
('Embraer', 'E190', 114, 2, 3),
('Embraer', 'E195', 132, 2, 3),
('Embraer', 'E190-E2', 114, 2, 3),
('Embraer', 'E195-E2', 146, 2, 4);

INSERT INTO aeronaves (fabricante, modelo, passageirosMax, pilotosMax, comissariosMax) VALUES
('ATR', 'ATR 42', 50, 2, 2),
('ATR', 'ATR 72', 78, 2, 3);

INSERT INTO aeronaves (fabricante, modelo, passageirosMax, pilotosMax, comissariosMax) VALUES
('Bombardier', 'Dash 8 Q400', 90, 2, 3);

CREATE TABLE IF NOT EXISTS voos (
    id SERIAL PRIMARY KEY,
    idAeronave INT NOT NULL,
    numeroVoo VARCHAR(20) NOT NULL,
    origem VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    dataPartida VARCHAR(10) NOT NULL,
    horaPartida VARCHAR(8) NOT NULL,
    dataChegada VARCHAR(10) NOT NULL,
    horaChegada VARCHAR(8) NOT NULL,
    status VARCHAR(1),

    CONSTRAINT fk_voo_aeronave
        FOREIGN KEY (idAeronave)
        REFERENCES aeronaves(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO voos (
    idAeronave, numeroVoo, origem, destino,
    dataPartida, horaPartida, dataChegada, horaChegada, status
) VALUES
-- Airbus A320
(4, 'AD1235', 'São Paulo (CGH)', 'Belo Horizonte (CNF)', '02/12/2025', '12:20', '02/12/2025', '13:30', 'A'),
(4, 'G31980', 'Rio de Janeiro (GIG)', 'Brasília (BSB)', '03/12/2025', '15:40', '03/12/2025', '17:00', 'A'),

-- Airbus A321
(5, 'TP1035', 'Porto (OPO)', 'Lisboa (LIS)', '04/12/2025', '07:30', '04/12/2025', '08:15', 'A'),
(5, 'LA3042', 'São Paulo (GRU)', 'Lima (LIM)', '05/12/2025', '23:15', '06/12/2025', '02:50', 'A'),

-- Airbus A330
(6, 'AZ6100', 'Recife (REC)', 'Lisboa (LIS)', '10/12/2025', '20:30', '11/12/2025', '08:00', 'A'),
(6, 'LA7512', 'São Paulo (GRU)', 'Miami (MIA)', '12/12/2025', '08:20', '12/12/2025', '16:05', 'A'),

-- Airbus A350
(8, 'LA8102', 'Santiago (SCL)', 'Madrid (MAD)', '15/12/2025', '22:40', '16/12/2025', '15:10', 'A'),
(9, 'BA248', 'Rio de Janeiro (GIG)', 'Londres (LHR)', '16/12/2025', '20:10', '17/12/2025', '10:25', 'A'),

-- Airbus A380
(10, 'EK263', 'Dubai (DXB)', 'São Paulo (GRU)', '18/12/2025', '09:45', '18/12/2025', '17:20', 'A'),
(10, 'QF10', 'Londres (LHR)', 'Melbourne (MEL)', '20/12/2025', '13:00', '21/12/2025', '23:45', 'A'),

-- Boeing 737 MAX
(13, 'G31270', 'São Paulo (CGH)', 'Florianópolis (FLN)', '05/12/2025', '09:10', '05/12/2025', '10:25', 'A'),
(13, 'G31012', 'Curitiba (CWB)', 'Brasília (BSB)', '06/12/2025', '18:20', '06/12/2025', '19:45', 'A'),
(13, 'AD4801', 'Campo Grande (CGR)', 'São Paulo (GRU)', '08/12/2025', '07:05', '08/12/2025', '09:40', 'A'),

-- Boeing 747-8
(16, 'LH508', 'Frankfurt (FRA)', 'São Paulo (GRU)', '18/12/2025', '22:00', '19/12/2025', '05:55', 'A'),
(16, 'KE901', 'Seul (ICN)', 'Los Angeles (LAX)', '22/12/2025', '12:30', '22/12/2025', '06:50', 'A'),

-- Boeing 767
(17, 'UA145', 'Houston (IAH)', 'Orlando (MCO)', '03/12/2025', '11:55', '03/12/2025', '14:30', 'A'),
(17, 'DL405', 'Atlanta (ATL)', 'New York (JFK)', '04/12/2025', '09:15', '04/12/2025', '11:40', 'A'),

-- Boeing 777-300ER
(18, 'QR779', 'Doha (DOH)', 'São Paulo (GRU)', '08/12/2025', '02:20', '08/12/2025', '12:55', 'A'),
(18, 'AF457', 'São Paulo (GRU)', 'Paris (CDG)', '10/12/2025', '18:15', '11/12/2025', '09:50', 'A'),

-- Boeing 777X
(19, 'EK356', 'Dubai (DXB)', 'Cingapura (SIN)', '14/12/2025', '04:30', '14/12/2025', '14:20', 'A'),

-- Boeing 787 Dreamliner
(20, 'NH961', 'Tóquio (NRT)', 'Bangkok (BKK)', '06/12/2025', '11:00', '06/12/2025', '16:00', 'A'),
(21, 'LA720', 'Buenos Aires (EZE)', 'Santiago (SCL)', '07/12/2025', '13:50', '07/12/2025', '15:10', 'A'),
(22, 'BA223', 'Londres (LHR)', 'Dallas (DFW)', '12/12/2025', '10:05', '12/12/2025', '17:50', 'A'),

-- Embraer E170/E175/E190/E195
(23, 'AD2501', 'Uberlândia (UDI)', 'São Paulo (CGH)', '03/12/2025', '06:50', '03/12/2025', '08:35', 'A'),
(24, 'AD2870', 'Joinville (JOI)', 'Campinas (VCP)', '04/12/2025', '15:20', '04/12/2025', '16:25', 'A'),
(25, 'G31050', 'São Paulo (CGH)', 'Londrina (LDB)', '05/12/2025', '19:00', '05/12/2025', '20:10', 'A'),
(26, 'AD4010', 'Porto Alegre (POA)', 'Curitiba (CWB)', '07/12/2025', '08:40', '07/12/2025', '09:50', 'A'),
(26, 'AD4015', 'Curitiba (CWB)', 'Foz do Iguaçu (IGU)', '08/12/2025', '14:15', '08/12/2025', '15:10', 'A'),

-- Embraer E2
(27, 'AD5110', 'Belo Horizonte (CNF)', 'Vitória (VIX)', '09/12/2025', '17:25', '09/12/2025', '18:15', 'A'),
(27, 'AD5115', 'Vitória (VIX)', 'Rio de Janeiro (SDU)', '10/12/2025', '09:10', '10/12/2025', '10:15', 'A'),

-- ATR
(28, 'AZ5505', 'Maceió (MCZ)', 'Recife (REC)', '02/12/2025', '16:40', '02/12/2025', '17:35', 'A'),
(29, 'AZ5510', 'João Pessoa (JPA)', 'Recife (REC)', '03/12/2025', '08:10', '03/12/2025', '08:45', 'A'),

-- Dash 8 Q400
(30, 'VOE3210', 'Porto Seguro (BPS)', 'Salvador (SSA)', '06/12/2025', '13:30', '06/12/2025', '14:20', 'A'),
(30, 'VOE3220', 'Salvador (SSA)', 'Aracaju (AJU)', '08/12/2025', '07:20', '08/12/2025', '08:05', 'A'),

-- Voos finalizados e cancelados
(4, 'AD9999', 'São Paulo (GRU)', 'Rio de Janeiro (GIG)', '01/11/2025', '10:00', '01/11/2025', '11:10', 'F'),
(5, 'TP2001', 'Lisboa (LIS)', 'Paris (ORY)', '05/11/2025', '06:00', '05/11/2025', '08:25', 'F'),
(13, 'G30000', 'Brasília (BSB)', 'São Paulo (GRU)', '10/11/2025', '18:45', '10/11/2025', '20:10', 'C');

CREATE TABLE usuarioVoo (
    id SERIAL PRIMARY KEY,
    idUsuario INTEGER NOT NULL,
    idVoo INTEGER NOT NULL,
    funcao VARCHAR(100) NOT NULL,  
    assento VARCHAR(5),
    
    CONSTRAINT fk_usuario_voo_usuario
        FOREIGN KEY (idUsuario) REFERENCES usuarios(id),
        
    CONSTRAINT fk_usuario_voo_voo
        FOREIGN KEY (idVoo) REFERENCES voos(id)
);

select * from usuarioVoo