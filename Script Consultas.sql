-- 1 -Buscar o nome e ano dos Filmes
SELECT Nome, Ano FROM Filmes.dbo.Filmes

-- 2 - Buscar o nome e ano dos Filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao 
FROM Filmes.dbo.Filmes 
ORDER BY Ano

-- 3 - Buscar pelo Filme de volta para o Futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao 
FROM Filmes.dbo.Filmes 
WHERE Nome  = 'De Volta para o Futuro'

-- 4 - Buscar os Filmes lançados em 1997
SELECT Nome, Ano, Duracao 
FROM Filmes.dbo.Filmes 
WHERE Ano = 1997

-- 5 - Buscar os Filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao 
FROM Filmes.dbo.Filmes 
WHERE Ano > 2000

-- 6 - Buscar os Filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao 
FROM Filmes.dbo.Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

-- 7 - Buscar a quantidade de Filmes lançadas no ano, aGrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade 
FROM Filmes.dbo.Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do Gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Filmes.dbo.Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do Gênero Feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Filmes.dbo.Atores
WHERE Genero = 'F'
ORDER by PrimeiroNome 

-- 10 - Buscar o nome do Filme e o Gênero
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id

-- 11 - Buscar o nome do Filme e o Gênero do tipo "Mistério"
SELECT F.Nome, G.Genero 
FROM Filmes AS F 
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme 
JOIN Generos AS G ON FG.IdGenero = G.Id 
WHERE Genero = 'Mistério'

-- 12 - Buscar o nome do Filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel 
FROM Filmes.dbo.Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id