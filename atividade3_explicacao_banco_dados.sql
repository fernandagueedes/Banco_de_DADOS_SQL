#Para criar um novo banco de dados clique no +SQL (Create a new SQL tab for executing queries)
#o comando CREATE DATABASE serve para criar o novo banco de dados e junto a ele vai o nome
#do seu banco de dados, finaliza o comando com o ponto e vírgula.
#Para executar o comando clique com o botao esquerdo do mouse no raio com o cursor, isso irá 
#executar a linha de comando a qual o cursos está inserido. o comando: USE nome_Banco; serve 
#para inicializar o banco de dados que está sendo criado.

CREATE DATABASE atividade_explicacao;
 USE atividade_explicacao;
 
 #para criar uma tabela use o comando : CREATE TABLE nome_tabela () 
 #abre parenteses e insira os dados do nome das colunas da sua tabela, nome da sua variável e 
 # e o tipo da variavél e entre parenteses a quantidade de caracteres que poderá 
 #ser inserido nessa variável, se houver mais de uma variável eu os separo com vírgula
 #ex: nome VARCHAR (30), idade INT (10); 
 #logo ficaria: CREATE TABLE nome_tabela (nome VARCHAR (30), idade INT (10));
 #Use desc nome_tabela; para descrever a tabela.
 #Para inserir dados na tabela uso o comando  INSERT INTO seguido do nome da minha tabela VALUES e entre parenteses 
 #os dados que eu quero que sejam inseridos, ex: INSERT INTO nome_tabela VALUES("Fernanda Guedes", 32); 
 #Toda variável do tipo VARCHAR deve ser escrita entre aspas duplas.
 #Para consultar dados da tabela use o comando SELECT * FROM e o nome da tabela;  executa o comando,
 #ex: SELECT * FROM nome_tabela; 
 #Usa-se o comando ENUM para tipo de dados com opções pré-definidas
 #Usa-se o comando DROP quando quiser apagar alguma informação, ex: DROP table para apagar a tabela, DROP column para apagar a coluna;
 #Usa-se o comando Count(*) caso precise mostrar a quantidade de determinado dado cadastrado no banco de dados
 #Usa-se o comando AS para apelidar a coluna  e na frente a palavra que eu quero que apareça como apelido.alter
 
 

 
 
 CREATE TABLE produtos (
 descricao VARCHAR (30),
 unidade_medida enum ("und", "lts", "mts"),
 valor_unitario DOUBLE,
 quantidade DOUBLE
 );
 
 desc produtos;
 
 INSERT INTO produtos VALUES ( "leite", 2, 5.99, 5),
 ("biscoito", 1, 3.99, 10),
 ("tecido", 3, 4.50, 20),
 ("suco", 2, 7.50, 8),
 ("paes", 1, 1.20, 12),
 ("pen drive", 1, 32.25, 5);
 
 SELECT * FROM produtos;
 
 SELECT Concat("há ", quantidade," ", unidade_medida, " de ", descricao, " no estoque, com valor unitário de ", valor_unitario, " reais.") AS informacao FROM produtos;  



 

 
 
 