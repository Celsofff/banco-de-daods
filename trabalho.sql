-- EXERCICIOS


-- 1) Execute a sequência de comandos
-- Crie um banco de dados chamado bd2exercicios
-- Diga que irá usar este banco de dados



-- 2) Crie uma tabela chamada usuarios que deverá conter os seguintes campos: id, nome, email, senha e perfil. Leve em consideração os dados que serão inseridos no item seguinte.




-- 3) insira os seguintes registros nesta tabela

-- Nome: André Neves
-- Email: andr@andr.com.br
-- senha: 123456789
-- perfil: desenvolvedor

-- Nome: Luciene
-- Email: lu@lu.com.br
-- senha: 987654321
-- perfil: administrador

-- Nome: Ana
-- Email: ana@ana.com.br
-- senha: 989898989
-- perfil: gerente

-- Obs.: Tente colocar a senha criptografada no banco de dados. Consulte a documentação para entender mais sobre criptografia e coloque SHA2 (256)
-- https://dev.mysql.com/doc/refman/8.0/en/encryption-functions.html#function_sha2

DROP DATABASE bd2exercicios;
CREATE DATABASE bd2exercicios;

USE bd2exercicios;

CREATE TABLE usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	Nome varchar(80) not null,
    Email varchar(255) not null,
    Senha varchar(90) not null,
    Perfil varchar(255) not null
);


SELECT SHA2('abc', 256);

insert into usuarios (Nome, Email, Senha, Perfil) values ('André Neves', 'andr@andr.com.br', SHA2('123456789', 256), 'desenvolvedor');
insert into usuarios (Nome, Email, Senha, Perfil) values ('Luciene', 'lu@lu.com.br', SHA2('987654321', 256), 'administrador');
insert into usuarios (Nome, Email, Senha, Perfil) values ('Ana', 'ana@ana.com.br', SHA2('989898989', 256), 'gerente');


select * from usuarios;


