USE Filmes

--1 - Buscar o nome e ano dos filmes
select f.Nome, f.Ano from Filmes f;




-- 2- Buscar o nome ando dos fiomes, ordenados por ordem crescente pelo ano
select f.Nome, f.Ano from Filmes f
order by f.Ano asc;





-- 3 Buscar pelo filme de colta para o futuro, trazendo o noke, ano e duração
select f.Nome, f.Ano, f.Duracao from Filmes f 
where f.Nome ='De Volta para o Futuro';





-- 4 Buscar os filmes lançados em 1997
select f.Nome, f.Ano, f.Duracao from Filmes f 
where f.Ano = '1997';



-- 5 Buscar os filmes lançados APÓS O ANO 2000
select f.Nome, f.Ano, f.Duracao from Filmes f 
where f.Ano > 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select f.Nome, f.Ano, f.Duracao from Filmes f 
where f.Duracao > 100 AND  f.Duracao < 150
order by f.Duracao asc;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- OBS enunciado está equivocado, não fazer um order by sem a coluna não existir no groupby
select f.Ano, COUNT(f.Ano) total from Filmes f 
group by f.Ano
order by total desc;




--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select a.PrimeiroNome, a.UltimoNome from Atores a
where a.Genero = 'M';



--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select a.PrimeiroNome, a.UltimoNome from Atores a
where a.Genero = 'F';





--10 - Buscar o nome do filme e o gênero
select f.Nome, g.Genero from FilmesGenero fg
JOIN Filmes f on fg.IdFilme = f.Id
JOIN Generos g on fg.IdGenero = g.Id







--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome, g.Genero from FilmesGenero fg
JOIN Filmes f on fg.IdFilme = f.Id
JOIN Generos g on fg.IdGenero = g.Id
where g.Id = 10



--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from ElencoFilme ef
JOIN Filmes f on ef.IdFilme = f.id
JOIN Atores a on ef.IdAtor = a.Id