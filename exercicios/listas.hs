import Data.List

alunos :: [(String, Float, Float)]
alunos = [("Ricardo", 8.0, 7.0), ("Joao", 7.0, 7.0), ("Jose", 6.0, 6.0), ("Maria", 9.0, 6.0), ("Ana", 5.0, 5.0)]

nome :: (String, Float, Float) -> String
nome (nome,_,_) = nome

media :: Float -> Float -> Float
media n1 n2 = (n1+n2)/2

aprovado :: (String, Float, Float) -> Bool
aprovado (_,n1,n2) = if (media n1 n2) >= 7 then True else False

medias = map (\(nome,n1,n2) -> (nome,(media n1 n2))) alunos

soma_notas_turma = foldl (\x (_,n1,n2) -> x + (media n1 n2)) 0 alunos

media_turma = soma_notas_turma / (fromIntegral (length alunos))

aprovados = filter aprovado alunos


-- l1 = [1..50] --lista de 1 a 50
 

-- factors n  = [x | x <- [1..n], mod n x == 0] --função para retornar os divisores de um número

-- l2 = map factors l1 --obtendo os fatores dos primeiros 50 números

-- isPrime :: Int -> Bool
-- isPrime 1 = True
-- isPrime x = (factors x == [1,x]) --função que retorna se um número é primo ou não


-- l3 = map (\l -> (filter isPrime l)) l2 -- obtendo uma lista de listas de fatores primos dos números

-- l4 = map (\lista -> (foldl (+) 0 lista)) l3 --obtendo a soma dos fatores primos de cada número

main = print media_turma

