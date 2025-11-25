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

INSERT INTO usuarios (nome, email, senha, telefone, cargo, cpf, passaporte, status) VALUES ('Stefany Diniz Plombon', 'admin@gestor.com', 'ac9689e2272427085e35b9d3e3e8bed88cb3434828b43b86fc0596cad4c6e270', '11900000000', 'Gestor(a)', '12345678900', 'AB123456', 'A');

INSERT INTO usuarios (nome, email, senha, telefone, cargo, cpf, passaporte, status) VALUES
-- senha: senha001
('Lucas Andrade', 'lucas.andrade@example.com', '6c17cddc0b61a53ce38afcb7631c6fba58828a741b93d7c5edda6afdd1fb26a9', '11990010001', 'Gestor(a)', '11111111101', 'PX100001', 'A'),

-- senha: senha002
('Marina Oliveira', 'marina.oliveira@example.com', '1b164db0c0c03c7a839d820a1bddb1eab1ca637d9d14b5c7db2270a5d3f1b691', '11990010002', 'Passageiro(a)', '11111111102', 'PX100002', 'A'),

-- senha: senha003
('Eduardo Martins', 'eduardo.martins@example.com', '3a746eb0bc1dd822f813395dcdbd2d3ffa998b1c0877f4e971d10d8df47b1b84', '11990010003', 'Piloto(a)', '11111111103', 'PX100003', 'A'),

-- senha: senha004
('Carolina Mendes', 'carolina.mendes@example.com', 'edab0bba23d69fd8d35df1a233c3b5f21a9ee20107185b7ca3e8bc2e244dd673', '11990010004', 'Comissario(a)', '11111111104', 'PX100004', 'A'),

-- senha: senha005
('Rafael Rocha', 'rafael.rocha@example.com', '8a27fb9dd18a403eb088e5a77517d20acbb4702977c978bae20dfd57de84825d', '11990010005', 'Passageiro(a)', '11111111105', 'PX100005', 'A'),

-- senha: senha006
('Beatriz Nunes', 'beatriz.nunes@example.com', 'e285842c2b020c421f473819644b0fe94175614ff0788684e312fbd271bf2f44', '11990010006', 'Comissario(a)', '11111111106', 'PX100006', 'A'),

-- senha: senha007
('Thiago Ferreira', 'thiago.ferreira@example.com', 'b6c5656380de00265d2d6c7c1dcf2eeb3b7749462762bfe94bfc841f90e85dc5', '11990010007', 'Piloto(a)', '11111111107', 'PX100007', 'A'),

-- senha: senha008
('Larissa Carvalho', 'larissa.carvalho@example.com', 'ea6e3f7b4b2ce1a4a531b1284de3c6b5ac0c35d985dcb536d7a9a280b2c12c37', '11990010008', 'Passageiro(a)', '11111111108', 'PX100008', 'A'),

-- senha: senha009
('Gustavo Farias', 'gustavo.farias@example.com', '98f55f130e788ebce6554c89f902d933e234388d4962845563c3fc82ab3e4158', '11990010009', 'Comissario(a)', '11111111109', 'PX100009', 'A'),

-- senha: senha010
('Amanda Reis', 'amanda.reis@example.com', '2bc1bfc16b449dd8f706ee948ba2d4129978de3ed95c0e1714c7d8b2ded1c4f0', '11990010010', 'Passageiro(a)', '11111111110', 'PX100010', 'A'),

-- senha: senha011
('Fernando Lopes', 'fernando.lopes@example.com', 'bc89516e8c96799bb54e93b01e8c200c39202b884f6d4e178a12b0210174d318', '11990010011', 'Piloto(a)', '11111111111', 'PX100011', 'A'),

-- senha: senha012
('Patrícia Santos', 'patricia.santos@example.com', '41e61363cf3a6a0b551a3f748167bb45c29eed14f23480f5dab7d9108eb99072', '11990010012', 'Gestor(a)', '11111111112', 'PX100012', 'A'),

-- senha: senha013
('Rodrigo Alves', 'rodrigo.alves@example.com', '58b6056fdcd67e47b3fe2e400fa0029f68efaf2cd75101cd95c55d7e0d51fb8e', '11990010013', 'Passageiro(a)', '11111111113', 'PX100013', 'A'),

-- senha: senha014
('Julia Barros', 'julia.barros@example.com', '94c66a5d40bd5b868e4b4ecca387fb891e1942e3a721e35e466c01d2bc2cd479', '11990010014', 'Comissario(a)', '11111111114', 'PX100014', 'A'),

-- senha: senha015
('Marcelo Cunha', 'marcelo.cunha@example.com', '078f3e15ebffdd0bdfb7e7964c77a4e7efd63619f778cc48764b9086118bd29b', '11990010015', 'Piloto(a)', '11111111115', 'PX100015', 'A'),

-- senha: senha016
('Sara Lima', 'sara.lima@example.com', 'ef07b6de5ed7f26d14df4c5f37b17141e34fcb4eb2c838201d094dcf13ca65d1', '11990010016', 'Passageiro(a)', '11111111116', 'PX100016', 'A'),

-- senha: senha017
('Igor Melo', 'igor.melo@example.com', '1a224975f0847f504843c021fd2a63e47403e0c05b9b9f7066abc1f61940f726', '11990010017', 'Comissario(a)', '11111111117', 'PX100017', 'A'),

-- senha: senha018
('Bruna Xavier', 'bruna.xavier@example.com', '7c8be873e5fcd62c55f0c45520d77b6304dd51b8dfd3c10bab983a66e05474ba', '11990010018', 'Passageiro(a)', '11111111118', 'PX100018', 'A'),

-- senha: senha019
('Diego Amaral', 'diego.amaral@example.com', '19d331692d7fd174ea4e434653be67e5a61fa85d40eb4a4dc74a1eecb713a204', '11990010019', 'Piloto(a)', '11111111119', 'PX100019', 'A'),

-- senha: senha020
('Vitória Prado', 'vitoria.prado@example.com', '8d0d874efd7c35c88a64cd25e77acacd8f0df454ba3c7f70531ffc367d8399f7', '11990010020', 'Comissario(a)', '11111111120', 'PX100020', 'A'),

-- senha: senha021
('Henrique Batista', 'henrique.batista@example.com', '2fbf6636d98eafbdc6814f9c22bfe635975160c99cefb6bbff5b49d17bf7d4ad', '11990010021', 'Gestor(a)', '11111111121', 'PX100021', 'A'),

-- senha: senha022
('Isabela Moura', 'isabela.moura@example.com', 'b0091f474a95153ba645f677b7e780be5eac04faf711cb8a4aa11a9f51bca960', '11990010022', 'Passageiro(a)', '11111111122', 'PX100022', 'A'),

-- senha: senha023
('Samuel Torres', 'samuel.torres@example.com', 'af172f49c35aeb80e89531fcf13d1c196af3e0eb1f0ab0cb0dd109e4df2e4a1b', '11990010023', 'Piloto(a)', '11111111123', 'PX100023', 'A'),

-- senha: senha024
('Letícia Ramos', 'leticia.ramos@example.com', '39d47495ce3dae4c7a07291aa179f75fe5527ab78053c11800d3713b7072b886', '11990010024', 'Comissario(a)', '11111111124', 'PX100024', 'A'),

-- senha: senha025
('Daniel Barcelo', 'daniel.barcelo@example.com', '0de76a44f2ab5b30cb4fdb9c2eb81fa4a1b8511263b1da7db0fa860760803f0c', '11990010025', 'Passageiro(a)', '11111111125', 'PX100025', 'A');

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
	status VARCHAR(1) NOT NULL
);

INSERT INTO aeronaves (fabricante, modelo, passageirosMax, pilotosMax, comissariosMax, status) VALUES
('Airbus', 'A220', 150, 2, 4, 'A'),
('Airbus', 'A318', 132, 2, 3, 'A'),
('Airbus', 'A319', 156, 2, 3, 'A'),
('Airbus', 'A320', 186, 2, 4, 'A'),
('Airbus', 'A321', 244, 2, 5, 'A'),
('Airbus', 'A330', 440, 2, 10, 'A'),
('Airbus', 'A340', 475, 2, 12, 'A'),
('Airbus', 'A350-900', 350, 2, 12, 'A'),
('Airbus', 'A350-1000', 440, 2, 12, 'A'),
('Airbus', 'A380', 853, 2, 24, 'A'),

('Boeing', '737 Classic', 188, 2, 4, 'A'),
('Boeing', '737 NG', 215, 2, 5, 'A'),
('Boeing', '737 MAX', 230, 2, 5, 'A'),
('Boeing', '747-400', 605, 2, 16, 'A'),
('Boeing', '747-8', 605, 2, 16, 'A'),
('Boeing', '767', 375, 2, 10, 'A'),
('Boeing', '777-200', 440, 2, 14, 'A'),
('Boeing', '777-300', 550, 2, 14, 'A'),
('Boeing', '777-300ER', 550, 2, 14, 'A'),
('Boeing', '777X', 426, 2, 12, 'A'),
('Boeing', '787-8', 242, 2, 10, 'A'),
('Boeing', '787-9', 290, 2, 10, 'A'),
('Boeing', '787-10', 330, 2, 10, 'A'),

('Embraer', 'E170', 78, 2, 2, 'A'),
('Embraer', 'E175', 88, 2, 2, 'A'),
('Embraer', 'E190', 114, 2, 3, 'A'),
('Embraer', 'E195', 132, 2, 3, 'A'),
('Embraer', 'E190-E2', 114, 2, 3, 'A'),
('Embraer', 'E195-E2', 146, 2, 4, 'A'),

('ATR', 'ATR 42', 50, 2, 2, 'A'),
('ATR', 'ATR 72', 78, 2, 3, 'A'),

('Bombardier', 'Dash 8 Q400', 90, 2, 3, 'A');

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
(5, 'TP1036', 'Porto (OPO)', 'Lisboa (LIS)', '04/12/2025', '07:30', '04/12/2025', '08:15', 'A'),
(5, 'TP1037', 'Porto (OPO)', 'Lisboa (LIS)', '04/12/2025', '07:30', '04/12/2025', '08:15', 'A'),
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
(10, 'QF11', 'Londres (LHR)', 'Melbourne (MEL)', '20/12/2025', '13:00', '21/12/2025', '23:45', 'A'),
(10, 'QF12', 'Londres (LHR)', 'Melbourne (MEL)', '20/12/2025', '13:00', '21/12/2025', '23:45', 'A'),
(10, 'QF13', 'Londres (LHR)', 'Melbourne (MEL)', '20/12/2025', '13:00', '21/12/2025', '23:45', 'A'),

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
(18, 'AF458', 'São Paulo (GRU)', 'Paris (CDG)', '10/12/2025', '18:15', '11/12/2025', '09:50', 'A'),
(18, 'AF459', 'São Paulo (GRU)', 'Paris (CDG)', '10/12/2025', '18:15', '11/12/2025', '09:50', 'A'),
(18, 'AF460', 'São Paulo (GRU)', 'Paris (CDG)', '10/12/2025', '18:15', '11/12/2025', '09:50', 'A'),

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
(27, 'AD5116', 'Vitória (VIX)', 'Rio de Janeiro (SDU)', '10/12/2025', '09:10', '10/12/2025', '10:15', 'A'),

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