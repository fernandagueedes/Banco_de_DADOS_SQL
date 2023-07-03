CREATE DATABASE normalizacao;
USE normalizacao;
/*
para uma tabela estar na primeira forma normal, é necessário que não existam grupos
de valores repetidos, seus valores devem ser atomicos (únicos) e a tabela deve possuir
um identificador que identifique o dado como único, PARA ISSO é necessário criar
esse identificador, ex criar o id INTEGER.
Comando NOT NULL significa que o campo é obrigatório
comando UNIQUE significa que o campo é único, ou seja, não poderá aceitar
algum dado que já tenha sido cadastrado.
*/


CREATE TABLE pessoa (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
sobrenome VARCHAR(50),
idade INT,
sexo VARCHAR(15),
email VARCHAR(100),
cpf VARCHAR(14) NOT NULL UNIQUE,
cidade VARCHAR(50),
bairro VARCHAR(50),
cep VARCHAR(10),
complemento VARCHAR(100),
logradouro VARCHAR(150),
estado VARCHAR(50),
uf CHAR(2),
numero VARCHAR(10),
telefone VARCHAR(16),
ddd char(3),
celular VARCHAR(16),
fixo VARCHAR(16),
comercial VARCHAR(16)

);

INSERT INTO pessoa VALUES (NULL, "Fernanda", "Guedes", 32, "Feminino", 
"fernandagueedes@gmail.com","123.456.789-10", "Brasília", "Não sei", "72000-000",
 "Taguatinga", "Sig Brasília Asa Sul", "Distrito Federal", "DF", 
 "10A", "98552-6633", "061", NULL, NULL, NULL);
 
 SELECT * FROM pessoa;
 
 /*
 Para estar na segunda forma normal os atributos devem depender da chave primária
 em sua totalidade não apenas parte dela
*/

CREATE TABLE pessoa2(
idPessoa INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
sobrenome VARCHAR(50),
cpf VARCHAR(14) NOT NULL UNIQUE,
sexo VARCHAR(10),
id_endereco INTEGER, 
CONSTRAINT fk_id_endereco_endereco foreign key(id_endereco) references endereco(idEndereco)
);

CREATE TABLE endereco(
idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT,
cep VARCHAR(13),
bairro VARCHAR(100),
cidade VARCHAR(100),
uf VARCHAR(2)

);

INSERT INTO pessoa2 VALUES (null, "Joana", "Araujo", "554.456.789-11", "F",3);
(null, "Luan", "Muruk", "321.654.987-01", "M",1),
(null, "Marilda", "Santos", "258.369.14-02", "F",2),
(null, "José", "Braga", "741.852.963-03", "M",2), 
(null, "Marcos", "Lopes", "963.258.741-04", "M",3),
(null, "Fabiana", "Lima", "789.456.321-05", "F",1);


INSERT INTO endereco VALUES (null, "73000-000", "não sei", "brasilia", "df"),
(null, "73000-000", "taguatinga", "brasilia", "df"),
(null, "73000-000", "ceilandia", "brasilia", "df");


SELECT * FROM pessoa2;

SELECT * FROM endereco;
#se eu deletar um dado que eu já havia inserido na tabela, 
#ele apagará este dado, e apagará o id, porem ele não cria um novo 
#cadastro para aquele mesmo id.
DELETE FROM pessoa2 where idPessoa = 1;
drop table pessoa2;
drop table endereco;
#comando inner join vai unir os dados da tabela 1 contidos na tabela 2
#para puxar os dados das pessoas e os dados do endereco das respectivas pessoas
select *from endereco inner join pessoa2 on endereco.idEndereco = pessoa2.id_endereco;
#id_endereco = chave estrangeira
#idEndereco = chave primaria


select nome, cpf, cep, bairro, cidade, uf from pessoa2 inner join endereco on pessoa2.id_endereco= endereco.IdEndereco;

create table telefone (
idtelefone integer primary key auto_increment,
ddd varchar(5),
numero varchar(10),
id_pessoa integer,
constraint fk_id_pessoa_pessoa foreign key(id_pessoa) references pessoa2(idPessoa)

);
#foreing key = (chave estrangeira id_pessoa fazendo referencia
# a minha tabela de pessoa onde for o dado idPessoa
select *from telefone;

insert into telefone values (null, "061", "8888-9999", 2),
(null, "061", "8888-9998", 2),
(null, "062", "8888-9999", 3),
(null, "063", "8866-9963", 4);

/*Para a tabela estar na terceira forma normal ela precisa estar de acordo com a 1ª 
e a 2ª forma normal não existir dependencias transitivas 
Nenhum atributo não chave pode depender de outro atributo não chave
*/

create table produto(
idProduto integer primary key auto_increment,
nome_produto VARCHAR (50),
quantidade INT,
valor DOUBLE
);
select * from produto;

