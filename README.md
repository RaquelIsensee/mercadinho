# mercadinho
trabalho final 3 semestre programação delphi 



#banco de dados 
 create database if not exists mercado; use mercado;



create table if not exists Fornecedor( 
id int not null primary key auto_increment,
nome varchar(45) not null,
cnpj varchar(45) not null 
);



create table if not exists Produto( 
id int not null primary key auto_increment,
nome varchar(45) not null,
preco float not null, 
quantidade float not null, 
id_fornecedor int not null, 
foreign key fk_id_fornecedor(id_fornecedor) references fornecedor(id) 
);



create table if not exists Genero( 
 id int not null primary key auto_increment,
 nome varchar(45) not null
 );



create table if not exists Estado_Civil( 
 id int not null primary key auto_increment,
 nome varchar(45) not null 
 );



create table if not exists Estado( 
 id int not null primary key auto_increment,
 nome varchar(45),
 sigla varchar(5) not null 
 );



create table if not exists Cidade( 
id int not null primary key auto_increment, 
nome varchar(45) not null, 
id_estado int not null, 
foreign key fk_id_estado(id_estado) references estado(id) 
);



create table if not exists Bairro( 
 id int not null primary key auto_increment,
 nome varchar(45) not null, 
 id_cidade int not null, 
 foreign key fk_id_cidade(id_cidade) references cidade(id) 
 );



create table if not exists Rua( 
 id int not null primary key auto_increment,
 nome varchar(45) not null,
 id_bairro int not null,
 foreign key fk_id_bairro(id_bairro) references bairro(id)
 );



create table if not exists Endereco(
 id int not null primary key auto_increment,
 numero varchar(10) not null, 
 complemento varchar(40),
 cep varchar(8) not null,
 id_rua int not null,
 id_bairro int not null,
 id_cidade int not null,
 id_estado int not null,
 foreign key fk_endereco_id_rua(id_rua) references rua(id),
 foreign key fk_endereco_id_bairro(id_bairro) references bairro(id),
 foreign key fk_endereco_id_cidade(id_cidade) references cidade(id),
 foreign key fk_endereco_id_estado(id_estado) references estado(id) 
 );
 
 create table if not exists Pessoa(
	id int primary key auto_increment, 
	nome varchar(45) not null, 
	cpf varchar(15) not null, 
	id_genero int not null, 
	id_estado_civil int not null, 
    id_endereco int not null,
	foreign key fk_id_genero(id_genero) references genero(id), 
	foreign key fk_id_estado_civil(id_estado_civil) references estado_civil(id),
	foreign key fk_id_pessoa_endereco (id_endereco) references endereco(id)  
);

create table if not exists Nota_Fiscal( 
 id int not null primary key auto_increment,
 id_pessoa int not null, 
 foreign key fk_id_pessoa(id_pessoa) references pessoa(id) 
 );

create table if not exists Compra( 
id int not null primary key auto_increment, 
id_nota_fiscal int not null, 
valor_total float, 
foreign key fk_id_nota_fiscal(id_nota_fiscal) references nota_fiscal(id)
);

create table if not exists Produto_has_Compra( 
 id_produto int not null,
 id_compra int not null,
 quantidade int not null,
 valor float not null, 
 foreign key fk_id_produto(id_produto) references produto(id), 
 foreign key fk_id_compra(id_compra) references compra(id) 
 );

create table if not exists Telefone( 
id int not null primary key auto_increment, 
numero varchar(45) not null, 
id_pessoa int not null, 
foreign key fk_telefone_id_pessoa(id_pessoa) references pessoa(id)
);
