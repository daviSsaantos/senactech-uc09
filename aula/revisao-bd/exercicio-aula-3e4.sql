-- Criação da tabela 'produtos'
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    estoque INT NOT NULL
);

-- Criação da tabela 'clientes'
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(20)
);

-- Criação da tabela 'vendas'
CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    cliente_id INT,
    quantidade INT,
    data_venda DATETIME,
    FOREIGN KEY (produto_id) REFERENCES produtos(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

ALTER TABLE produtos
ADD COLUMN marca VARCHAR(255) NOT NULL;

-- Inserindo dados na tabela 'produtos'
INSERT INTO produtos (nome, preco, descricao, estoque, marca) VALUES
('Smartphone XYZ', 1999.99, 'Última geração com 128GB de memória', 50, 'TechBrand'),
('Notebook ABC', 2999.99, 'Notebook de alto desempenho para jogos', 30, 'GameMasters'),
('Headphone Wireless', 299.99, 'Headphone com cancelamento de ruído', 100, 'AudioPlus');

-- Inserindo dados na tabela 'clientes'
INSERT INTO clientes (nome, email, telefone) VALUES
('João Silva', 'joao.silva@email.com', '1122334455'),
('Maria Souza', 'maria.souza@email.com', '1166554433'),
('Pedro Costa', 'pedro.costa@email.com', '1198765432');

-- Nota: Os IDs dos produtos e clientes devem existir na tabela produtos e clientes, respectivamente.
-- Para o propósito deste exemplo, vamos assumir que os IDs dos produtos e clientes inseridos são 1, 2 e 3.

-- Inserindo dados na tabela 'vendas'
INSERT INTO vendas (produto_id, cliente_id, quantidade, data_venda) VALUES
(1, 1, 1, NOW()),  -- Venda de 1 Smartphone XYZ para João Silva
(2, 2, 1, NOW()),  -- Venda de 1 Notebook ABC para Maria Souza
(3, 3, 2, NOW());  -- Venda de 2 Headphones Wireless para Pedro Costa


INSERT INTO produtos (nome, preco, descricao, estoque, marca) VALUES
('Smartphone 5G', 1200.00, 'Smartphone de última geração com conectividade 5G', 100, 'TechBrand'),
('Laptop Pro', 2500.00, 'Laptop de alto desempenho para profissionais', 50, 'HighTech'),
('Tablet 8"', 600.00, 'Tablet compacto com tela de 8 polegadas', 75, 'TabTech'),
('Câmera DSLR', 1500.00, 'Câmera DSLR com lentes intercambiáveis', 30, 'FotoImagem'),
('Smartwatch Fitness', 299.99, 'Smartwatch com foco em saúde e fitness', 200, 'PulseTech'),
('Fone de Ouvido Bluetooth', 150.00, 'Fones de ouvido sem fio com cancelamento de ruído', 150, 'SoundWave'),
('Mouse Gamer', 75.00, 'Mouse gamer com alta precisão e vários botões programáveis', 250, 'GamerPro'),
('Teclado Mecânico', 130.00, 'Teclado mecânico com retroiluminação RGB', 100, 'KeyBright'),
('Monitor 4K', 800.00, 'Monitor de 27 polegadas com resolução 4K', 60, 'ViewMax'),
('Caixa de Som Bluetooth', 200.00, 'Caixa de som portátil com conexão Bluetooth', 90, 'SoundBox');


INSERT INTO clientes (nome, email, telefone) VALUES
('Ana Beatriz', 'ana.beatriz@email.com', '11987654321'),
('Carlos Eduardo', 'carlos.eduardo@email.com', '11987654322'),
('Daniela Rocha', 'daniela.rocha@email.com', '11987654323'),
('Bruno Martins', 'bruno.martins@email.com', '11987654324'),
('Eliane Souza', 'eliane.souza@email.com', '11987654325'),
('Fernando Lima', 'fernando.lima@email.com', '11987654326'),
('Gabriela Santos', 'gabriela.santos@email.com', '11987654327'),
('Henrique Silva', 'henrique.silva@email.com', '11987654328'),
('Isabela Freitas', 'isabela.freitas@email.com', '11987654329'),
('João Pedro', 'joao.pedro@email.com', '11987654330'),
('Karla Prado', 'karla.prado@email.com', '11987654331'),
('Lucas Marques', 'lucas.marques@email.com', '11987654332'),
('Mariana Costa', 'mariana.costa@email.com', '11987654333'),
('Nícolas Barbosa', 'nicolas.barbosa@email.com', '11987654334'),
('Olívia Ribeiro', 'olivia.ribeiro@email.com', '11987654335'),
('Paulo Henrique', 'paulo.henrique@email.com', '11987654336'),
('Quênia Torres', 'quenia.torres@email.com', '11987654337'),
('Rafael Almeida', 'rafael.almeida@email.com', '11987654338'),
('Sônia Carmo', 'sonia.carmo@email.com', '11987654339'),
('Tiago Neves', 'tiago.neves@email.com', '11987654340'),
('Úrsula Vaz', 'ursula.vaz@email.com', '11987654341'),
('Vítor Hugo', 'vitor.hugo@email.com', '11987654342'),
('Walter Mattos', 'walter.mattos@email.com', '11987654343'),
('Xuxa Meneghel', 'xuxa.meneghel@email.com', '11987654344'),
('Yasmin Figueiredo', 'yasmin.figueiredo@email.com', '11987654345'),
('Ziraldo Alves', 'ziraldo.alves@email.com', '11987654346'),
('Aline Moraes', 'aline.moraes@email.com', '11987654347'),
('Beto Carrero', 'beto.carrero@email.com', '11987654348'),
('Cíntia Cruz', 'cintia.cruz@email.com', '11987654349'),
('Diego Ramos', 'diego.ramos@email.com', '11987654350');

INSERT INTO vendas (produto_id, cliente_id, quantidade, data_venda) VALUES
(4, 20, 2, '2023-06-01'),
(5, 21, 1, '2023-06-02'),
(6, 22, 3, '2023-06-03'),
(7, 23, 1, '2023-06-04'),
(8, 24, 2, '2023-06-05'),
(9, 25, 1, '2023-06-06'),
(10, 26, 3, '2023-06-07'),
(4, 27, 1, '2023-06-08'),
(5, 28, 2, '2023-06-09'),
(6, 29, 1, '2023-06-10'),
(7, 30, 3, '2023-06-11'),
(8, 20, 1, '2023-06-12'),
(9, 21, 2, '2023-06-13'),
(10, 22, 1, '2023-06-14');

INSERT INTO vendas (produto_id, cliente_id, quantidade, data_venda) VALUES
(8, 27, 2, '2023-06-15'),
(9, 28, 1, '2023-06-16'),
(10, 29, 2, '2023-06-17'),
(4, 30, 1, '2023-06-18'),
(5, 20, 3, '2023-06-19'),
(6, 21, 2, '2023-06-20'),
(7, 22, 1, '2023-06-21'),
(8, 23, 2, '2023-06-22'),
(9, 24, 1, '2023-06-23'),
(10, 25, 3, '2023-06-24'),
(4, 26, 1, '2023-06-25'),
(5, 27, 2, '2023-06-26'),
(6, 28, 1, '2023-06-27'),
(7, 29, 2, '2023-06-28'),
(8, 30, 1, '2023-06-29');


-- Inserção de mais dados na tabela 'Compras'
INSERT INTO Compras (livro_id, comprador_id, quantidade, data_compra) VALUES
(3, 3, 1, '2023-05-03'),
(1, 2, 1, '2023-05-04'),
(2, 3, 1, '2023-05-05'),
(3, 1, 2, '2023-05-06'),
(1, 3, 1, '2023-05-07'),
(2, 1, 2, '2023-05-08'),
(3, 2, 1, '2023-05-09'),
(1, 3, 1, '2023-05-10'),
(2, 2, 1, '2023-05-11'),
(3, 1, 1, '2023-05-12'),
(1, 2, 1, '2023-05-13'),
(2, 3, 1, '2023-05-14'),
(3, 2, 2, '2023-05-15'),
(1, 1, 1, '2023-05-16'),
(2, 3, 1, '2023-05-17'),
(3, 1, 1, '2023-05-18'),
(1, 2, 1, '2023-05-19'),
(2, 1, 2, '2023-05-20'),
(3, 3, 1, '2023-05-21'),
(1, 1, 1, '2023-05-22');

-- Inserção de dados na tabela 'Compras' para produtos com IDs de 4 a 10 e clientes com IDs de 20 a 30
INSERT INTO Compras (livro_id, comprador_id, quantidade, data_compra) VALUES
(5, 21, 2, '2023-06-02'),
(6, 22, 1, '2023-06-03'),
(7, 23, 3, '2023-06-04'),
(8, 24, 1, '2023-06-05'),
(9, 25, 2, '2023-06-06'),
(10, 26, 1, '2023-06-07'),
(4, 27, 3, '2023-06-08'),
(5, 28, 1, '2023-06-09'),
(6, 29, 2, '2023-06-10'),
(7, 30, 1, '2023-06-11');


