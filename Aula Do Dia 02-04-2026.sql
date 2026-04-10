-- Criando o BD (Schema)
create database cursosql;

-- Set as Default
use cursosql;

-- Deletando o BD (Schema)
drop database cursosql;

create database cursosql;
use cursosql;

-- Criando uma Tabela
create table alunos(
	id int,
    nome varchar(100),
    nota decimal,
    curso varchar(100)
    );
    
    
select * from alunos;
    
-- Adicionar valores na tabela
insert into alunos(id,nome,nota,curso)
values 
		(1,'Ana',8.5,'SQL'), 
        (2,'Bruno',6,'Java'),
        (3,'Carlos',4.5,'Java');
        
select * from alunos;       

drop table alunos;

-- Corrigindo 
create table alunos(
	id int,
    nome varchar(100),
    nota decimal(10,2),
    curso varchar(100)
    );
    
insert into alunos(id, id_empresa, nome, nota, curso)
values 
		(1,5,'Ana',8.5,'SQL'), 
        (2,4,'Bruno',6,'Java'),
        (3,1,'Carlos',4.5,'Java');
        
select * from alunos;

-- null
insert into alunos(id,nota,curso)
values (4, 5, 'SQl');

select * from alunos;

-- Criando restrições
create table empresas(
	id int primary key;
    nome varchar(100) not null
    );
    
insert into empresas(id, nome)
values 
	(1, 'FORD'),
    (2, 'Bradesco'),
	(3, 'Natura'),
	(4, 'Samsung'),
	(5, 'Meta');
    
select * from empresas;
 
insert into empresas(id, nome)
values 
	(6, 'Fiat'),
    (7, 'Apple');
	
select * from empresas;  
    
drop table alunos;

-- Corrigindo os constraints
-- decimal(10,2) => 999999999.99 (10 digitos no total, sendo 2 após a vírgula)
create table alunos(
	id int primary key,
    id_empresa int,
    nome varchar(100) not null,
    nota decimal(10,2) not null,
    curso varchar(100) not null,
    foreign key (id_empresa) references empresas(id)
    );   
    
select * from alunos;  

-- Erro
insert into alunos(id, id_empresa, nota, curso)
values (4, 5, 'SQl');
    
select * from alunos;     
