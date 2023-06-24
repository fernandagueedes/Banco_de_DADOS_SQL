CREATE DATABASE banco_teste;
USE banco_teste;


#CREATE TABLE: cria a tabela
CREATE TABLE pessoa(
	nome VARCHAR(50),
    idade INT,
    sexo CHAR(1),
    peso DOUBLE
	
    );
    #senha: Sen@i123 
    # desc: descreve a tabela
    desc pessoa;
    
    #INSERT INTO: insere o produto na tabela
    INSERT INTO pessoa VALUES("Fernanda Guedes", 32, 'F', 64);
    
    INSERT INTO pessoa(nome, idade) values("Fernanda Guedes", 32);
    
    INSERT INTO pessoa VALUES("Jose", 65, 'M',70), 
    ("Maria", 70, 'F', 96),
    ("Morgana", 50, 'F', 98),
    ("Cristiano Ronaldo", 35, 'M', 110);
    
    #SELECT * FROM: pesquisa todos os dados da tabela
    SELECT * FROM pessoa;
   
   #no preco (6,2) o 6 significa até 6 casas no total e o 2 duas casas depois da vígula
    create table produto (descricaoProduto varchar(100),
    preco double(6,2), 
    #enum é um tipo de dados com opcoes pré definidas
    status_pedido enum("entregue", "preparando", "saiu pra entrega")
);    

#para acessar dados no enum posso usar o nome da opçãoo que ele ocupa no enum ou 
# a casa que ele ocupa (índice) ex: 1 (posição/índice) entregue (nome da opção)

insert into produto values("Sanduba", 15.56, 3);
    select *from produto; 
    #selecione apenas o campo nome na tabela pessoa onde a idade for igual a 32.
    select nome from pessoa where idade = 32;
    
    select sexo from pessoa where nome like "Fernanda%";
    
    #or = ou; and = e;
    select * from pessoa where sexo = 'M' or idade > 32;
    select * from pessoa where sexo = 'M' and idade >33;
    
    #caso precise mostrar a quantidade de pessoas cadastradas no banco de dados:
    #as : (para apelidar a coluna)  e na frente a palavra que eu quero que apareça,
    #se for só uma palavra coloco a palavra direto, 
    #se houver espaço escrevo entre aspas a palavra ex:
    #para quantidade escreva: as quantidade; 
    #para quantidade de pessoas escreva: as "quantidade de pessoas"
    select count(*) as "Quantidade de Pessoas" from pessoa; 
    
    #select, não necessariamente será selecione, e sim "projete alguma informação"
    #no caso abaixo vai aparecer primeiro (2+4) e embaixo o resultado.
    select (2 + 4); 
    
    