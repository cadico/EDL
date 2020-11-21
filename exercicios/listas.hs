import Data.List

l1 = [1..50] --lista de 1 a 50
 

factors n  = [x | x <- [1..n], mod n x == 0] --função para retornar os divisores de um número

l2 = map factors l1 --obtendo os fatores dos primeiros 50 números

isPrime :: Int -> Bool
isPrime 1 = True
isPrime x = (factors x == [1,x]) --função que retorna se um número é primo ou não


l3 = map (\l -> (filter isPrime l)) l2 -- obtendo uma lista de listas de fatores primos dos números

l4 = map (\lista -> (foldl (+) 0 lista)) l3 --obtendo a soma dos fatores primos de cada número

main = print l4

