drop database if exists PET_SHOP;{

create table if not exists PET_SHOP;
use PET_SHOP;

create table if not exists CLIENTE(
    idcliente int auto_increment not null,
    Nomecliente varchar(30),
    CPF Nchar(12),
    telefone varchar(15),
    primary key (idcliente),
);
create table if not exists ANIMAL(
    idANIMAL int auto_increment not null,
    Nomeanimal varchar(20),
    especie varchar(15),
    racaanimal varchar(15),
    pesoanimal decimal(10,3),
    datanascimento decimal(10,3) 
    idcliente int,
    primary key(idanimal),
    foreign key (idcliente) references CLIENTE (idclinete)
);
creante table if not exists PRODUTOS_SERVICOS(
    IDprodutos_sevicos int auto_increment not NULL
    nome varchar(30),
    descricao varchar(30),
    valor decimal(10,2),
    fornecedor varchar(30),
    tipo varchar(45),
    primary key(idprodutos_servicos),
    FOREIGN key (idcliente) references cliente(idcliente),
);
create table if not exists item(
    quantidade int,
    valortotal decimal(10,2)
    idvendas INT,
    idprotudos_servidos int,
    primary KEY(idvendas,idprodutos_servicos)
    FOREIGN KEY(idvendas)REFERENCES vendas (idvendas),
    Foreign Key (idprodutos_servicos) REFERENCES produtos_servicos (idprodutos_servicos),
);
/*INSERIR CLEINTES--->IDCLIENTES,NOME,TELEFONE,CPF, IDCLIENTE*/
INSERT INTO CLIENTE VALUES
(null, 'francisco vandickson','979811226701','05712367871'),
(NULL, 'Roberto silva','9234657138913','23456781934'),
(null, 'roberta lima','929855371989','05739246189'),
(null,'ana silva','935825638639','05739217571'),
/*inserir valores---> idanimal, nomeanimal, especie, racaanimal, pesoanimal, data de nascimento,idcliente*/
insert int animal VALUES
(null,'tobi','cachorro','buldoque','24.500','2015-11-15',1)
(null,'bob','cachorro','pasto alemão','23.500','2019-11-04',2)
(null,'obito','gato','siames','22.220','2020-12-01',3)
(null,'naruto','gato','siames','24.550','2021-01-25',2)
(null,"ze","passaro", "pintassilgo","1.400",'2022-01-12'2)
(null,"eliot","gato","persa","3.6000","2020-05-29",1)
(null,"cerveja","gato",'siames',"24.550","2023-12-12",3 )
/* inserir valores--> idprodutos_servido,nome, descrição, valor, fornecedor, tipo*/
insert into produdos_servicos VALUES
(null,"toca","aparar de pelos","40.00","pet_shop",'servicp' )
(null,"ração frango","alimento para caões/gatos",12.00,"pedigree","protudo"),
(null,"banho","lavar os pelos",20.00,"pet shop r","serviço"),
(null,"ração carne","alimentos para cãoes/gatos",15.00,"pedigree","produto"),
(null,"vacina anti-raiva","medicação",15.00,"pedigree","produto"),
(null,"alpiste",'alimentos de passaro',5.00,'magnus',"protudo")
(null,"girassol","alimentos apra passaro",3.50,'magnus','protudo')
(null,"painço",'alimentos para passaro',6,70,'magnus','protudo')
(null,"escovação",'escovar os pelos',25.00,'pet shopr','seviço')
insert into vendas VALUES
/*inserir valores--->idvendas,quantidades,datavenda,valortotal,idcliente*/ 
(null,2,'2022-02-25','35.0',1),
(null,3,'2023-01-25','11.60',2)
(null,5,"2023-05-12","58.60"2)
(null,4,"2023-04-25","25.90",3)
(null,2,"2023-06-31","25.20",2)
(null,3,"2022-09-23","12.90",1)
(null,5,"2022-10-09","23.70",2)
(null,7,"2022-11-11","22.50",1)
/*inserir valores--->idtem,quantidade,valortotal,idvendas,idprodutos_servicos*/
insert into item VALUES
(2,32.00,1,1),
(2,35.00,2,2),
(2,60.00,2,3),
(2,52.00,3,4),
(2,30.00,5,6),
(2,8.50,7,8),
(2,35.00,7,6),
(3,23.70,2,5),
(2,65.00,7,6);
select * from ANIAML;
select * FROM  PRODUTOS_SERVICOS;
select * FROM VENDAS;
select * FROM ITEM;
/*1 EXibir os dados dos animal (nome,especie e raça)com os respectivos nomes dos clientes.*/
select CC.idanimal,CC.nomeanimal,CC.especie,CC.especie,CC.racaanimal,C.nomecliente,C.idcliente
FROM animal CC,cliente C
where CC.idcliente=c.idcliente;

/*2 quais os produtos cadastrados são pedigree*/
select * from protudor_servicos a where p.fornecerdor LIKE "%pedigree%"

/*3.qual é o cliente que tem um hamster como animal de estimação*/
select e.idanimal,C.nomecliente,E.especie
from animal e inner join cliente CALL
or E.idcliente C.idcliente where E.especie like "%hamster%";
/*4. qual a média do peso dos animais cadastrados*/
/*media dos pesos dos animais na tabela ANIMAL com titula "media dos pesos" */
select*from ANIMAL;
SELECT round (avg(pesoANIMAL),2) AS "MEDIA DOS PESOS" from animal;
/*5. qual o valor de valor da venda mais cara realizada pelo loja
maior preço na tabela vendas com titulo "venda mais cara"*/
select*from vendas;
select max(valortotal) if "venda mais cara" from venda;




























}
