-- criação do banco de dados para o cenário de E-commerce
-- drop database ecommerce;
create database E_commerce;
use e_commerce;

-- criar tabela cliente
create table clients(
		idClient int auto_increment primary key,
        Fname varchar(10) not null,
        Mint char(10),
        Lname varchar(20),
        CPF char(11) not null,
        Adress varchar(30),
        email varchar (255) not null unique,
        datacadastro date, 
        constraint unique_cpf_client unique (CPF)
);
alter table clients auto_increment=1;

-- desc clients;

-- criar tabela produto
-- size = dimensão de produto
create table product(
		idProduct int auto_increment primary key,
        Pname varchar(255) not null,
        classification_kids boolean default false,
        category enum('Eletrônico', 'Vestimenta', 'Brinquedo', 'Alimentos', 'Móveis') not null,
        avaliação float default 0,
        size varchar(50),
        valor float not null,
        descricao text
);

-- criar tabela pagamento 
-- para ser continuado no desafio: termine de implementar a tabela e crie a conexão com as tabelas ncessárias. 
-- além disso, reflita essa modificação no diagrama de esquema relacional
-- criar constraints relacionadas ao pagamento
 
create table payments(
		idPayment int auto_increment primary key,
        idclient int not null,
        date_payment timestamp default current_timestamp,
        typePayment enum('Bolero', 'Cartão', 'dois cartões') not null,
        statuspayments enum('Pendente', 'Pago', 'Cancelado') not null,
        limitAvailable float,
        descrição text,
        valor float not null,
        foreign key (idClient) references clients(idClients)       
);

-- criar tabela pedido
create table orders(
		idOrder int auto_increment primary key,
        idOrderclient int, 
        frete float not null,
        dateOrder timestamp default current_timestamp,
        total float not null,
        orderStatus enum('Cancelado', 'Confirmado', 'Pendente') default 'Pendente',
        data_envio timestamp,
        orderDescription varchar(255),
        sendValue float default 10,
        paymentCash boolean default false, 
        constraint fk_orders_client foreign key (idOrderClient) references clients(idClients)
				on update cascade
);
-- desc orders;

-- criar tabela estoque
create table productStorage(
		idProdStorage int auto_increment primary key,
        storageLocation varchar(255),
        quantity int not null default 0
);
alter table clients auto_increment=1; 

-- criar tabela fornecedor
create table supplier(
		idSupplier int auto_increment primary key,
        SocialName varchar(255) not null,
        CNPJ char(14) not null unique,
        Address varchar (255) not null,
        telefone char(15) not null,
        email varchar(255)
);
-- desc supplier;

-- criar tabela vendedor
create table seller(
		idSeller int auto_increment primary key,
        SocialName varchar(255) not null,
        AbstName varchar(255),
        CNPJ char(20),
        CPF char(11),
        tipo_frete enum('Normal', 'Expresso') not null,
        endereço varchar(255),
        email varchar(255),
        telefone varchar(15) not null,
        constraint unique_cnpj_seller unique(CNPJ),
        constraint unique_cpf_seller unique(CPF)
);

-- criar tabela de entrega
create table entrega(
		identrega int auto_increment primary key,
        idOrder int not null,
        status_entrega enum ('Em Rota', 'Entregue', 'Pendente') not null,
        codigo_rasteio varchar(255),
        data_envio timestamp,
        data_previsao_entrega date,
        data_entrega date,
        foreign key (idOrder) references orders(idOrder)
);

-- criar tabela avaliação do produto
create table avaliacao_produto (
    idavaliacao_produto int auto_increment primary key,
    idProduct int not null,
    nota int not null check (nota >= 1 and nota <= 5),  -- Nota entre 1 e 5
    comentarios text,
    data_avaliacao timestamp default current_timestamp,
    FOREIGN KEY (idProduct) REFERENCES product (idProduct)
);

-------------- cardinalidade nXm ------------------------
-- criar tabela Produto/vendedor
create table productSeller(
		idPseller int,
        idPproduct int,
        prodQuantity int default 1,
        primary key(idPseller, idPproduct),
        constraint fk_product_seller foreign key(idPseller) references seller(idSeller),
        constraint fk_product_product foreign key(idPproduct) references product(idProduct)
);
-- desc productSeller;

-- criar tabela Produto/pedido
create table productOrder(
		idPOproduct int,
        idOorder int,
        poQuantity int default 1,
        poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
        primary key(idPOproduct,idOorder),
        constraint fk_productorder_seller foreign key(idPOproduct) references product(idProduct),
        constraint fk_productorder_product foreign key(idOorder) references orders(idOrder)
);

-- criar tabela Estoque/produto
create table StorageLocation(
		idLproduct int,
        idLstorage int,
        location varchar(255) not null,
        primary key(idLproduct, idLstorage),
        constraint fk_storage_location_product foreign key(idLproduct) references product(idProduct),
        constraint fk_storage_location_storage foreign key(idLstorage) references productStorage(idProdStorage)
);

-- criar tabela Produto/fornecedor
create table productSupplier(
		idPsSupplier int,
        idPsProduct int,
        quantity int not null,
        primary key(idPsSupplier,idPsProduct),
        constraint fk_product_supplier_supplier foreign key(idPsSupplier) references supplier(idSupplier),
        constraint fk_product_supplier_product foreign key(idPsProduct) references product(idProduct)
);

show tables;

show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'e_commerce';

