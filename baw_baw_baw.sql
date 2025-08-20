create database escola;
use escola;
create table if not exists Aluno(
	IdAluno int primary key,
    Nome varchar (40),
    Curso varchar (30)

    );
    
show tables;
desc aluno;

create table if not exists Disciplina(
	IdDisc int primary key,
    Nome varchar (40),
    Carga int (3)

    );
    
desc Disciplina;

create table if not exists Frequenta(
	IdAluno int,
    IDDisc int,
    data date,
    primary key(IdAluno, IDDisc),
    foreign key (IdAluno) references Aluno (IdAluno),
    foreign key (IDDisc) references Disciplina (IdDisc)
    

    );
    
desc Frequenta;