-- use e_commerce;

insert into clients (Fname, Mint, Lname, TipoClient, Adress, email, datacadastro) values
		('João', 'A.', 'Silva', 'CPF', 'Rua A, 123', 'joao.silva@email.com', '2024-01-15'),
		('Maria', 'B.', 'Oliveira', 'CPF', 'Rua B, 456', 'maria.oliveira@email.com', '2024-02-20'),
		('Carlos', 'C.', 'Souza', 'CNPJ', 'Rua C, 789', 'carlos.souza@email.com', '2024-03-05'),
		('Ana', 'D.', 'Pereira', 'CPF', 'Rua D, 101', 'ana.pereira@email.com', '2024-04-18'),
		('Fernanda', 'E.', 'Mendes', 'CNPJ', 'Rua E, 202', 'fernanda.mendes@email.com', '2024-05-10'),
		('Paulo', 'F.', 'Costa', 'CNPJ', 'Rua F, 303', 'paulo.costa@email.com', '2024-06-25'),
		('Ricardo', 'G.', 'Lima', 'CPF', 'Rua G, 404', 'ricardo.lima@email.com', '2024-07-14'),
		('Juliana', 'H.', 'Nascimento', 'CPF', 'Rua H, 505', 'juliana.nascimento@email.com', '2024-08-30'),
		('Felipe', 'I.', 'Gomes', 'CPF', 'Rua I, 606', 'felipe.gomes@email.com', '2024-09-22'),
		('Renata', 'J.', 'Ribeiro', 'CNPJ', 'Rua J, 707', 'renata.ribeiro@email.com', '2024-10-05');
        
	-- Produto: idProduct, Pname, classification, category ('Eletrônico', 'Vestimenta', 'Brinquedo', 'Alimentos', 'Móveis'), avaliação, size, valor, descrição
insert into product (Pname, classification_kids, category, avaliação, size, valor, descricao) values
	('Smartphone Galaxy X1', false, 'Eletrônico', 4.8, '6.4 polegadas', 3000.00, 'Smartphone com tela OLED de alta definição, 128GB de armazenamento e câmeras de 64MP. Ideal para quem busca desempenho e qualidade.'),
    ('Blusa de Frio Masculina', true, 'Vestimenta', 4.5, 'G', 50.00, 'Blusa de frio masculina, fabricada com material confortável e quente, perfeita para climas mais frios.'),
    ('Carrinho de Controle Remoto Turbo', true, 'Brinquedo', 3.8, 'Padrão', 200.00, 'Carrinho de controle remoto de alta velocidade para crianças a partir de 6 anos, com design aerodinâmico.'),
    ('Cesta de Frutas Frescas', false, 'Alimentos', 4.9, 'Padrão', 100.00, 'Cesta com frutas frescas selecionadas, orgânicas e sem conservantes. Ideal para um lanche saudável e saboroso.'),
    ('Cadeira Gamer Pro', false, 'Móveis', 4.7, 'Padrão',1500.00, 'Cadeira gamer com suporte ergonômico e ajustes de altura, ideal para longas sessões de jogo e conforto durante o trabalho.'),
    ('Fone de Ouvido Bluetooth Premium', false, 'Eletrônico', 4.6, 'Padrão',50.00, 'Fones de ouvido bluetooth com som de alta definição e cancelamento de ruído, perfeito para momentos de lazer ou concentração.'),
    ('Tênis Esportivo Nike Air Zoom', true, 'Vestimenta', 4.7, '43',800.00, 'Tênis esportivo de alta performance, com tecnologia de amortecimento, ideal para corrida e atividades ao ar livre.'),
    ('Boneco de Ação Marvel', true, 'Brinquedo', 4.4, '15cm',95.00, 'Boneco de ação da Marvel com articulações móveis, perfeito para colecionadores e fãs de super-heróis.'),
    ('Cesta de Café da Manhã', false, 'Alimentos', 4.8, 'Padrão', 130.00, 'Cesta de café da manhã com itens frescos como pães, bolos e sucos, ideal para presentear ou desfrutar em um momento especial.'),
    ('Sofá Retrátil 3 Lugares', false, 'Móveis', 4.9, '3 lugares', 2400.00, 'Sofá retrátil com tecido confortável e estrutura reforçada, ideal para salas de estar e momentos de descanso em família.');

select * from clients;
select * from product;

-- Pedido: idOrder, idOrderClient, frete, dateOrder, total, orderStatus ('Cancelado', 'Confirmado', 'Pendente'), data_envio, orderDescription, sendValue, paymentCash
insert into orders(idOrderclient, frete, dateOrder, total, orderStatus, data_envio, orderDescription, sendValue, paymentCash) values
		(1, 15.00, '2024-11-15', 1120.00, 'Confirmado', '2024-11-17', 'Pedido de Smartphone Galaxy X1, Fone de Ouvido Bluetooth Premium', 20.00, true),
		(2, 20.00, '2024-11-16', 160.00, 'Pendente', '2024-11-18', 'Blusa de Frio Masculina, Tênis Esportivo Nike Air Zoom', 15.00, true),
		(3, 18.00, '2024-11-17', 300.00, 'Cancelado', '2024-11-20', 'Carrinho de Controle Remoto Turbo, Boneco de Ação Marvel', 15.00, false),
		(4, 25.00, '2024-11-18', 535.00, 'Confirmado', '2024-11-19', 'Cesta de Frutas Frescas, Cesta de Café da Manhã', 20.00, true),
		(5, 30.00, '2024-11-19', 1580.00, 'Confirmado', '2024-11-21', 'Cadeira Gamer Pro, Sofá Retrátil 3 Lugares', 30.00, true),
		(6, 12.00, '2024-11-20', 410.00, 'Pendente', '2024-11-22', 'Fone de Ouvido Bluetooth Premium, Tênis Esportivo Nike Air Zoom', 15.00, false),
		(7, 10.00, '2024-11-21', 245.00, 'Confirmado', '2024-11-23', 'Boneco de Ação Marvel, Carrinho de Controle Remoto Turbo', 12.00, true),
		(8, 22.00, '2024-11-22', 1280.00, 'Cancelado', '2024-11-24', 'Smartphone Galaxy X1, Cadeira Gamer Pro', 25.00, false),
		(9, 15.00, '2024-11-23', 390.00, 'Confirmado', '2024-11-25', 'Cesta de Café da Manhã, Cesta de Frutas Frescas', 18.00, true),
		(10, 20.00, '2024-11-24', 670.00, 'Pendente', '2024-11-26', 'Fone de Ouvido Bluetooth Premium, Tênis Esportivo Nike Air Zoom', 16.00, false);
        
describe orders;
select *FROM orders;

-- Pagamento: idPayment, idclient, date_payment, typePayment ('Bolero', 'Cartão', 'dois cartões'), statuspayments('Pendente', 'Pago', 'Cancelado'), limitAvailable, descrição, valor
insert into payments (idclient, date_payment, typePayment, statuspayments, limitAvailable, descrição, valor) value
		(1, '2024-11-15', 'Cartão', 'Pago', 5000.00, 'Pagamento do pedido de Smartphone Galaxy X1, Fone de Ouvido Bluetooth Premium', 1140.00),
		(2, '2024-11-16', 'Bolero', 'Pendente', 2000.00, 'Pagamento do pedido de Blusa de Frio Masculina, Tênis Esportivo Nike Air Zoom', 175.00),
		(3, '2024-11-17', 'dois cartões', 'Cancelado', 1500.00, 'Pagamento do pedido de Carrinho de Controle Remoto Turbo, Boneco de Ação Marvel', 315.00),
		(4, '2024-11-18', 'Cartão', 'Pago', 6000.00, 'Pagamento do pedido de Cesta de Frutas Frescas, Cesta de Café da Manhã', 555.00),
		(5, '2024-11-19', 'Bolero', 'Pendente', 5000.00, 'Pagamento do pedido de Cadeira Gamer Pro, Sofá Retrátil 3 Lugares', 1610.00),
		(6, '2024-11-20', 'Cartão', 'Pago', 3000.00, 'Pagamento do pedido de Fone de Ouvido Bluetooth Premium, Tênis Esportivo Nike Air Zoom', 425.00),
		(7, '2024-11-21', 'dois cartões', 'Pago', 3500.00, 'Pagamento do pedido de Boneco de Ação Marvel, Carrinho de Controle Remoto Turbo', 257.00),
		(8, '2024-11-22', 'Cartão', 'Cancelado', 2500.00, 'Pagamento do pedido de Smartphone Galaxy X1, Cadeira Gamer Pro', 1305.00),
		(9, '2024-11-23', 'Bolero', 'Pendente', 2000.00, 'Pagamento do pedido de Cesta de Café da Manhã, Cesta de Frutas Frescas', 423.00),
		(10, '2024-11-24', 'dois cartões', 'Pendente', 4500.00, 'Pagamento do pedido de Fone de Ouvido Bluetooth Premium, Tênis Esportivo Nike Air Zoom', 686.00);

select * from payments;

-- Estoque: idProdStorage, storageLocation, quantity
insert into productStorage(storageLocation, quantity) values
		('São Paulo, SP, Brasil', 20), 
		('Rio de Janeiro, RJ, Brasil', 30), 
		('Belo Horizonte, MG, Brasil', 45), 
		('Curitiba, PR, Brasil', 40), 
		('Brasília, DF, Brasil', 10), 
		('Salvador, BA, Brasil', 25), 
		('Porto Alegre, RS, Brasil', 15),  
		('Fortaleza, CE, Brasil', 22),
		('Recife, PE, Brasil', 12), 
		('Manaus, AM, Brasil', 8);

-- Fornecedor: idSupplier, SocialName, CNPJ, Address, telefone, email
insert into supplier(SocialName, CNPJ, Address, telefone, email) values
        ('Tech Solutions Ltda', '12345678000190', 'Rua das Tecnologias, 1000, São Paulo, SP', '(11) 98765-4321', 'contato@techsolutions.com.br'),
		('Moda Fashion Comércio', '23456789000112', 'Avenida das Roupas, 550, Rio de Janeiro, RJ', '(21) 99876-5432', 'suporte@modafashion.com.br'),
		('Esportes & Aventura Ltda', '34567890000123', 'Rua do Esporte, 221, Belo Horizonte, MG', '(31) 96325-8741', 'esportes@aventura.com.br'),
		('EletroTech Comércio', '45678901000134', 'Rua da Eletrônica, 800, Curitiba, PR', '(41) 91234-5678', 'atendimento@eletrotech.com.br'),
		('Casa & Conforto Móveis', '56789012000145', 'Avenida dos Móveis, 300, Salvador, BA', '(71) 92674-1122', 'contato@casaconforto.com.br'),
		('Brinquedos Maravilhosos', '67890123000156', 'Rua dos Brinquedos, 400, Porto Alegre, RS', '(51) 93211-3344', 'vendas@brinquedosmaravilhosos.com.br'),
		('Frutas & Alimentos Frescos', '78901234000167', 'Avenida das Frutas, 1020, Brasília, DF', '(61) 93322-4455', 'comercial@frutalimentos.com.br'),
		('GamerTech Produtos', '89012345000178', 'Rua do Jogo, 520, Fortaleza, CE', '(85) 96543-2109', 'suporte@gamertech.com.br'),
		('Livros e Educação S.A.', '90123456000189', 'Rua dos Livros, 600, Recife, PE', '(81) 98234-5566', 'educacao@livros.com.br'),
		('Tecnologia e Inovação', '01234567000101', 'Rua da Inovação, 200, Manaus, AM', '(92) 99888-7777', 'inovacao@tecnologia.com.br');

-- Vendedor: idSeller, SocialName, AbstName, CNPJ, CPF, tipo_frete ('Normal', 'Expresso'), endereço, email, telefone
insert into Seller(SocialName, AbstName, CNPJ, CPF, tipo_frete, endereço, email, telefone) values
		('Tech Solutions Ltda', 'João Silva', '12.345.678/0001-90', '12345678901', 'Normal', 'Rua das Tecnologias, 1000, São Paulo, SP', 'contato@techsolutions.com.br', '(11) 98765-4321'),
		('Moda Fashion Comércio', 'Maria Oliveira', '23.456.789/0001-12', '23456789012', 'Expresso', 'Avenida das Roupas, 550, Rio de Janeiro, RJ', 'suporte@modafashion.com.br', '(21) 99876-5432'),
		('Esportes & Aventura Ltda', 'Carlos Souza', '34.567.890/0001-23', '34567890123', 'Normal', 'Rua do Esporte, 221, Belo Horizonte, MG', 'esportes@aventura.com.br', '(31) 96325-8741'),
		('EletroTech Comércio', 'Fernanda Costa', '45.678.901/0001-34', '45678901234', 'Expresso', 'Rua da Eletrônica, 800, Curitiba, PR', 'atendimento@eletrotech.com.br', '(41) 91234-5678'),
		('Casa & Conforto Móveis', 'Paulo Mendes', '56.789.012/0001-45', '56789012345', 'Normal', 'Avenida dos Móveis, 300, Salvador, BA', 'contato@casaconforto.com.br', '(71) 92674-1122'),
		('Brinquedos Maravilhosos', 'Ricardo Lima', '67.890.123/0001-56', '67890123456', 'Expresso', 'Rua dos Brinquedos, 400, Porto Alegre, RS', 'vendas@brinquedosmaravilhosos.com.br', '(51) 93211-3344'),
		('Frutas & Alimentos Frescos', 'Juliana Nascimento', '78.901.234/0001-67', '78901234567', 'Normal', 'Avenida das Frutas, 1020, Brasília, DF', 'comercial@frutalimentos.com.br', '(61) 93322-4455'),
		('GamerTech Produtos', 'Felipe Gomes', '89.012.345/0001-78', '89012345678', 'Expresso', 'Rua do Jogo, 520, Fortaleza, CE', 'suporte@gamertech.com.br', '(85) 96543-2109'),
		('Livros e Educação S.A.', 'Renata Ribeiro', '90.123.456/0001-89', '90123456789', 'Normal', 'Rua dos Livros, 600, Recife, PE', 'educacao@livros.com.br', '(81) 98234-5566'),
		('Tecnologia e Inovação', 'Luciana Santos', '01.234.567/0001-01', '01234567890', 'Expresso', 'Rua da Inovação, 200, Manaus, AM', 'inovacao@tecnologia.com.br', '(92) 99888-7777');

-- Entrega: identrega, idOrder, status_entrega ('Em Rota', 'Entregue', 'Pendente'), codigo_rasteio, data_envio, data_previsao_entrega, data_entrega   
insert into entrega(idOrder, status_entrega, codigo_rasteio, data_envio, data_previsao_entrega, data_entrega) values
		(1, 'Em Rota', 'TRK123456789', '2024-11-20', '2024-11-23', NULL),
		(2, 'Entregue', 'TRK987654321', '2024-11-18', '2024-11-20', '2024-11-19'),
		(3, 'Pendente', 'TRK234567890', '2024-11-21', '2024-11-24', NULL),
		(4, 'Em Rota', 'TRK345678901', '2024-11-22', '2024-11-25', NULL),
		(5, 'Entregue', 'TRK456789012', '2024-11-17', '2024-11-19', '2024-11-18'),
		(6, 'Pendente', 'TRK567890123', '2024-11-23', '2024-11-26', NULL),
		(7, 'Em Rota', 'TRK678901234', '2024-11-19', '2024-11-22', NULL),
		(8, 'Entregue', 'TRK789012345', '2024-11-16', '2024-11-18', '2024-11-17'),
		(9, 'Pendente', 'TRK890123456', '2024-11-24', '2024-11-27', NULL),
		(10, 'Em Rota', 'TRK901234567', '2024-11-25', '2024-11-28', NULL);

-- Avaliação do produto: idavaliacao_produto, idProduct, nota check (nota >= 1 and nota <= 5), comentarios, data_avaliacao
insert into avaliacao_produto(idProduct, nota, comentarios, data_avaliacao) values
		(1, 5, 'Produto excelente! Muito eficiente e atende todas as expectativas.', '2024-11-20'),
		(2, 4, 'Ótimo produto, mas o material poderia ser melhor.', '2024-11-19'),
		(3, 3, 'O produto é bom, mas demorou muito para chegar e o atendimento não foi o melhor.', '2024-11-21'),
		(4, 5, 'Entrega rápida e produto de ótima qualidade, estou muito satisfeito!', '2024-11-18'),
		(5, 2, 'Produto não correspondeu às minhas expectativas, qualidade abaixo do esperado.', '2024-11-17'),
		(6, 4, 'Bom produto, mas com algumas falhas de acabamento. No geral, vale a pena.', '2024-11-23'),
		(7, 1, 'Muito ruim. O produto veio com defeito e não consegui resolver o problema com o suporte.', '2024-11-22'),
		(8, 5, 'Perfeito! Super recomendo, entrega no prazo e qualidade top!', '2024-11-16'),
		(9, 3, 'Produto razoável, atendeu minhas necessidades, mas nada excepcional.', '2024-11-24'),
		(10, 4, 'Gostei muito do produto, só achei o preço um pouco elevado.', '2024-11-25');
        
        
        
select * from productStorage;
select * from supplier;
select * from Seller;
select * from entrega;
select * from avaliacao_produto;

select count(*) from clients;
select * from clients c, orders o where c.idclient = idOrderclient;

select Fname, Lname, idOrder, orderStatus from clients c, orders o where c.idclient = idOrderclient;
select concat(Fname,' ', Lname) as client, idOrder as Request, orderStatus as Order_Status from clients c, orders o where c.idclient = idOrderclient;

insert into orders(idOrderclient, frete, dateOrder, total, orderStatus, data_envio, orderDescription, sendValue, paymentCash) values
		(2, 15.00, '2024-11-15', 1120.00, 'Confirmado', '2024-11-17', 'Pedido de Smartphone Galaxy X1, Fone de Ouvido Bluetooth Premium', 20.00, true);

select *from clients c , orders o 
		where c.idclient = idOrderclient
		group by idOrder;

select count(*) from clients c, orders o 
		where c.idclient = idOrderclient;
        
select * from productOrder;

-- Recuperar quantos pedidos foram realizados pelos clientes?
select c.idclient, Fname, count(*) as Number_of_orders from clients c 
					inner join orders o ON c.idclient = o.idOrderclient
			group by idclient;
        
-- Recuperar todos os produtos da categoria 'Eletrônico' que possuem preço maior que 100:
select * from product;
select idProduct, Pname, Valor
		from Product
		where category = 'Eletrônico' AND Valor > 100;
        
-- Recuperar as avaliações de produtos com nota 5:
select * from avaliacao_produto;
select idProduct, nota, comentarios, data_avaliacao
		from avaliacao_produto
		where nota = 5;
         
-- Recuperar os produtos ordenados pelo preço em ordem crescente:
select idProduct, Pname, valor
		from Product
		order by valor asc;
        
-- Recuperar as avaliações ordenadas pela data de avaliação mais recente:
select idProduct, nota, comentarios, data_avaliacao
		from avaliacao_produto
		order by data_avaliacao desc;
        
-- Recuperar os produtos que têm a média das avaliações maior ou igual a 4:
select idProduct, avg(nota) as average_rating
		from avaliacao_produto
		group by idProduct
		having avg(nota) >= 4;

-- Recuperar o nome do cliente, o nome do vendedor, o nome do produto, o status da entrega e o valor do pedido:
select clients.Fname, seller.SocialName, product.Pname, orders.orderStatus, orders.total
		from orders
		join product on orders.idOrder = product.idProduct
		join seller on product.idProduct = seller.idSeller
		join clients on orders.idOrderclient = clients.idClient
		group by orders.total desc;

-- Quais produtos têm avaliações com comentários positivos?
select product.PName, avaliacao_produto.comentarios
		from avaliacao_produto
		join product on avaliacao_produto.idProduct = product.idProduct
		where avaliacao_produto.comentarios like '%bom%' or avaliacao_produto.comentarios like '%excelente%' or avaliacao_produto.comentarios like '%Ótimo%' ;

-- Quais produtos de um vendedor específico (por nome) têm avaliações de nota 5?
select product.PName, avaliacao_produto.nota
		from avaliacao_produto
		join product on avaliacao_produto.idProduct = product.idProduct
		join seller on Seller.idSeller = seller.idSeller
		where seller.SocialName = 'Tech Solutions Ltda' and avaliacao_produto.nota = 5;

-- Quais vendedores têm status de entrega 'Em Rota'?
select seller.SocialName, entrega.status_entrega
		from seller
		join entrega on seller.idSeller = entrega.status_entrega
		where entrega.status_entrega = 'Em Rota';

-- Quais produtos têm avaliações positivas (nota maior que 4) e qual a média das avaliações para esses produtos?
select idProduct, avg(nota) as average_rating
		from avaliacao_produto
		where nota > 4
		group by idProduct;

-- Quantos pedidos foram feitos por cada cliente?
select orders.idOrderclient, count(entrega.idOrder) as total_pedidos
		from entrega
		join orders on entrega.idOrder = orders.idOrder
		group by orders.idOrder;

-- Algum vendedor também é fornecedor?
select seller.SocialName
		from  seller
		join supplier on seller.idSeller = seller.idSeller
		group by seller.idSeller
		having count(supplier.idSupplier) > 0;

-- Relação de nomes dos fornecedores e nomes dos produtos;
select seller.SocialName as fornecedor, Product.PName
		from product
		join seller on seller.idSeller = seller.idSeller;

-- Relação de produtos, fornecedores e estoques;
SELECT product.PName, seller.SocialName AS fornecedor, productStorage.quantity AS estoque
		FROM productStorage
		JOIN product ON productStorage.idProdStorage = product.idProduct
		JOIN seller ON seller.idSeller = seller.idSeller;

select * from clients; -- cliente
select * from seller; -- vendedor
select * from orders; -- pedido
select * from entrega;
select * from product; -- produto
select * from avaliacao_produto;
select * from supplier; -- fornecedor
select * from productStorage; -- estoque
describe productStorage;