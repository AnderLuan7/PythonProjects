use webloc;

--  projeto criando database locadora de carros chamada web loc

create table marcas (
	id int not null auto_increment,
    nome_marca varchar(255) not null,
    primary key (id)
);

alter table marcas add origem varchar(255);

create table inventario(
	id int not null auto_increment,
    modelo varchar(255) not null,
    transmissao varchar(255) not null,
    motor varchar(255) not null,
    combustivel varchar(255) not null,
    marcas_id int not null,
     primary key (id),
	 foreign key (marcas_id) references marcas(id)
    );
    
    
    create table clientes (
	id int not null auto_increment,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    enderco varchar(255) not null,
     primary key (id)
    );
    
    alter table clientes 
    change enderco endereco varchar(255) not null;
    
    insert into clientes (nome, sobrenome, endereco)
    values 
		('Andre', 'Iacono', 'Rua1'),
        ('Anna', 'Santos', 'Rua2'),
        ('Pedro', 'Silva', 'Rua3'),
        ('Carlos', 'Oliveira', 'Rua4'),
        ('Julia','Braz', 'Rua5');
    
    insert into marcas (nome_marca, origem)
    values 
		('BMW', 'Alemanha'),
        ('Fiat', 'Italia'),
        ('Mercedes-Benz', 'Alemanha'),
        ('Renault', 'Franca'),
        ('Jaguar','Inglaterra');
        
insert into inventario (
	modelo,
    transmissao,
    motor,
    combustivel,
    marcas_id
    )
values 
	('BMW 218', 'Automatica', '2.0', 'Gasolina', '1' ),
	('Argo', 'Automatico', '1.6', 'Flex', '2'),
	('C180', 'Automatica', '2.0', 'Híbrido', '3'),
	('KWID', 'Manual', '1.0', 'Gasolina', '4'),
	('XE', 'Automatica', '2.0', 'Gasolina', '5');
    
    
    
    