--Funcoes

select substr ("A Neli e uma professora querida",25,7) from customers;  

substr ("x", _, _)

upper (_)
lower (_)
initcap (_)
concat ( , )

select "a melancia" || " " || "verde" from customers;	-- Concatenar duas colunas
select concat ("melancia","verde") from customers; 	-- junta duas colunas
--	//Testar com colunas//

(select 5+19-14+1985*18 valor from customers;) -- apelidos de tabela
select 5+19-14+1985*18 "o valor e" from customers;


rtim 	//	ltrim 	--apaga espacos a direita/esq

select rtrim("carro   ") || ltrim ("  chao") from customers;

length  --	conta quando caracter ou linhas

select rtrim ("banco    ") || ltrim ("   teste  teste2   ") as from customers; 

select substr (upper ("o queijo"), 1,1) from customers; --substr retira caracters

create table _ as select _ from customers; --cria tabela apartir de um select













