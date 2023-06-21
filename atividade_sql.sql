#Crie um banco de dados chamado atividade_sql, crie nesse banco a tabela de pessoas, com os seguintes atributos:
#nome, idade, telefone, endereço, e-mail, 
#insira ao menos 10 cadastros no banco e no máximo 20;
#mostre os dados inseridos.
#mostre os dados das pessoas que moram na mesma cidade e são maiores de 18 anos;
#insira mais de um telefone para uma pessoa;
#mostre quantas pessoas residem no mesmo estado;
#mostre os dados das pessoas onde a idade é igual a 30 anos;
#drop table pessoas
drop table pessoas;
CREATE TABLE pessoas (
nome VARCHAR(100),
idade INT,
telefone VARCHAR(20),
endereço VARCHAR(150),
email VARCHAR(100)

);
desc pessoas;

INSERT INTO pessoas  values ("Fernanda Guedes", 32, "83279457", "QND 90 CS 100, DF, Brasilia", "fernandagueedes@gmail.com"),
("Joana Lima", 58, "84849977", "DF, Brasilia, QND 57 CS 99", "joana@gmail.com"),
("Luan Muruk", 33, "99885544", "GO, Goiania, QNJ 35 CS 47", null),
("Jose Souza", 70, "99881133", "GO, Goiania, QND 36 CS 21", "josesouza@gmail.com"),
("Amanda Cecília", 35, "99665478", "MG, Belo Horizonte,QND 40 CS 34", null),
("Juliana Souza", 39, "98543241", "GO, Goiania, QND 39 CS 32", "juliana@gmail.com"),
("Arthur Guedes", 12, "98745236", "MG, Belo Horizonte, QND 12 CS 19", "arthurguedes@gmail.com"),
("Francisco Almeida", 66, "98547485", "DF, Brasilia, QNJ 21 CS 33", "felipe@gmail.com"),
("Luana Farias", 75, "99663322", "BA, Salvador, QNL 30 CS 15", "luana@gmail.com"),
("Simone Lima", 16, "88445212", "BA, Salvador, QNA 42 CS 02", "simonelima@gmail.com"),
("Gilmar Nunes", 28, "98541458", "DF, Brasilia, QNJ CS 03", null);

SELECT * FROM pessoas;

SELECT * FROM pessoas WHERE endereço like "%Brasilia%" and idade> 18;

SELECT Count(*) as Quantidade FROM pessoas WHERE endereço LIKE "%BA%";

INSERT INTO pessoas VALUES ("Gilmar Nunes", 28, "99554466", "DF, Brasilia, QNJ CS 03", null);

SELECT * FROM pessoas WHERE idade > 32;

SELECT * FROM pessoas WHERE idade < 32;

SELECT Count(*) as quantidade, nome FROM pessoas WHERE idade > 15 GROUP BY nome;
 