data Lista a = No a (Lista a) | Vazio
    deriving (Show)

l :: Lista (Lista Int)
l = No (No 1 (No 2 (No 3 Vazio))) (No (No 4 (No 5 (No 6 Vazio))) (No (No 7 (No 8 (No 9 Vazio))) Vazio))

main = print l