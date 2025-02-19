-- Inserindo Pedidos
INSERT INTO pedido (id, comprador, fornecedor) VALUES (1, 'João Silva', 'Tech Supplies Ltda');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (2, 'Maria Oliveira', 'Eletrônicos XYZ');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (3, 'Carlos Souza', 'Gadgets e Cia');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (4, 'Ana Pereira', 'InovaTech Distribuidora');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (5, 'Lucas Martins', 'Tech Solutions Ltda');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (6, 'Fernanda Costa', 'Mega Eletrônicos');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (7, 'Rafael Lima', 'GamerStore');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (8, 'Juliana Alves', 'SuperTec Distribuidora');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (9, 'Roberto Fernandes', 'FastTech Suprimentos');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (10, 'Camila Rocha', 'EletroMundo');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (11, 'Diego Nunes', 'CompuParts Distribuidora');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (12, 'Vanessa Ribeiro', 'GigaTec Eletrônicos');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (13, 'Paulo Cesar', 'HardWare Express');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (14, 'Sofia Mendes', 'Infinity Tech');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (15, 'Ricardo Lopes', 'SuperStore Informática');
INSERT INTO pedido (id, comprador, fornecedor) VALUES (16, 'Mariana Duarte', 'SmartTech Comércio');

-- Inserindo Produtos para os pedidos
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (1, 'Notebook Dell XPS', 2, 7500.00, 1);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (2, 'Mouse Gamer Logitech', 5, 250.00, 1);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (3, 'Monitor 27" LG', 1, 1800.00, 2);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (4, 'Teclado Mecânico Corsair', 2, 600.00, 2);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (5, 'SSD NVMe 1TB Samsung', 3, 800.00, 3);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (6, 'Fone de Ouvido Bluetooth Sony', 4, 350.00, 3);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (7, 'Cadeira Gamer DXRacer', 1, 1500.00, 4);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (8, 'Placa de Vídeo RTX 4060', 1, 3200.00, 4);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (9, 'Tablet Samsung Galaxy Tab S8', 2, 3500.00, 5);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (10, 'Carregador Portátil Anker 20000mAh', 3, 220.00, 5);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (11, 'Headset HyperX Cloud Alpha', 2, 450.00, 6);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (12, 'Mousepad Gamer RGB', 4, 120.00, 6);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (13, 'Processador Ryzen 7 5800X', 1, 1800.00, 7);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (14, 'Memória RAM 16GB DDR4 3200MHz', 2, 350.00, 7);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (15, 'Gabinete ATX com RGB', 1, 600.00, 8);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (16, 'Fonte Corsair 750W 80 Plus Gold', 1, 700.00, 8);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (17, 'Smartphone iPhone 14', 1, 5500.00, 9);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (18, 'Carregador Turbo USB-C 30W', 2, 180.00, 9);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (19, 'Monitor Gamer 32" Curvo Samsung', 1, 2500.00, 10);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (20, 'Teclado Sem Fio Logitech MX Keys', 1, 900.00, 10);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (21, 'Notebook Lenovo ThinkPad', 1, 6700.00, 11);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (22, 'Mouse Bluetooth Microsoft Surface', 1, 350.00, 11);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (23, 'Impressora Multifuncional HP LaserJet', 1, 1200.00, 12);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (24, 'Scanner de Mesa Canon', 1, 900.00, 12);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (25, 'Roteador Wi-Fi 6 TP-Link', 1, 650.00, 13);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (26, 'Cabo HDMI 4K 2m', 2, 80.00, 13);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (27, 'Cadeira Ergonômica de Escritório', 1, 1300.00, 14);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (28, 'Webcam Logitech 1080p', 1, 400.00, 14);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (29, 'HD Externo 2TB Seagate', 1, 450.00, 15);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (30, 'SSD Externo 1TB Samsung T7', 1, 800.00, 15);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (31, 'Placa de Captura Elgato HD60', 1, 1200.00, 16);
INSERT INTO produto (id, nome, quantidade, preco, pedido_id) VALUES (32, 'Microfone Profissional Rode NT-USB', 1, 950.00, 16);