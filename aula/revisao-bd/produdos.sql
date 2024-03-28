
-- Criando a tabela 'produtos'
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    estoque INT NOT NULL,
    marca VARCHAR(50)
);

-- Criando a tabela 'clientes'
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

-- Criando a tabela 'vendas'
CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT NOT NULL,
    cliente_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Inserindo dados na tabela 'produtos'
INSERT INTO produtos (nome, preco, descricao, estoque, marca) VALUES
('Smartphone XYZ', 1999.99, 'Última geração com 128GB de memória', 50, 'TechBrand'),
('Notebook ABC', 2999.99, 'Notebook de alto desempenho para jogos', 30, 'GameMasters'),
('Headphone Wireless', 299.99, 'Headphone com cancelamento de ruído', 100, 'AudioPlus'),
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

-- Inserindo dados na tabela 'clientes'
INSERT INTO clientes (nome, email, telefone) VALUES
('João Silva', 'joao.silva@email.com', '1122334455'),
('Maria Souza', 'maria.souza@email.com', '1166554433'),
('Pedro Costa', 'pedro.costa@email.com', '1198765432'),
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

-- Inserindo dados na tabela 'vendas'
INSERT INTO vendas (produto_id, cliente_id, quantidade, data_venda) VALUES
(1, 1, 1, NOW()),  -- Venda de 1 Smartphone XYZ para João Silva
(2, 2, 1, NOW()),  -- Venda de 1 Notebook ABC para Maria Souza
(3, 3, 2, NOW()),  -- Venda de 2 Headphones Wireless para Pedro Costa
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
(10, 22, 1, '2023-06-14'),
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
(7, 29, 2, '2023-06-28');

SELECT *
FROM produtos
ORDER BY preco DESC
LIMIT 1;

SELECT *
FROM produtos
WHERE preco = (
  SELECT MAX(preco)
  FROM produtos
);


CREATE TABLE TABELA_TEMPORARIA (
    ID_PEDIDO INT,
    ID_EMPRESA INT,
    EMPRESA_RAZAO_SOCIAL VARCHAR(255),
    EMPRESA_FANTASIA VARCHAR(255),
    EMPRESA_CNPJ_CPF VARCHAR(20),
    EMPRESA_TIPO_PESSOA VARCHAR(50),
    RUA VARCHAR(255),
    NUMERO VARCHAR(20),
    BAIRRO VARCHAR(255),
    CEP VARCHAR(10),
    CIDADE VARCHAR(255),
    ESTADO VARCHAR(2),
    NR_PEDIDO INT,
    SITUACAO_PEDIDO VARCHAR(50),
    TIPO_PEDIDO VARCHAR(50),
    DT_CRIACAO_PEDIDO DATE,
    DT_PRZ_PROGRAMADO_PEDIDO DATE,
    ID_MATERIAL INT,
    PRODUTO_COD_INTERNO VARCHAR(50),
    PRODUTO_DESCRICAO VARCHAR(255),
    QTDE INT,
    UNIDADE_MEDIDA VARCHAR(20),
    PR_UNITARIO_ITEM DECIMAL(10,2),
    PR_DESCONTO_ITEM DECIMAL(10,2),
    PR_TOTAL_ITEM DECIMAL(10,2),
    VENDEDOR_DO_PEDIDO VARCHAR(255),
    NUMERO_DA_NOTA_FISCAL VARCHAR(20),
    TIPO_DE_PAGAMENTO VARCHAR(255),
    PRAZO_DE_PAGAMENTO VARCHAR(20)
);

/Users/cassioatrindade/git/senacTech/aula/cargaDados/dado.csv

LOAD DATA INFILE 'dado.csv'
INTO TABLE TABELA_TEMPORARIA
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW VARIABLES LIKE 'secure_file_priv';
