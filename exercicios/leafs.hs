data Arvore a = Folha a
                | No a (Arvore a) (Arvore a)
    deriving (Eq,Show)

folhas :: Arvore a -> Int
folhas arv =
    case arv of
        (Folha v) -> 1
        (No v a1 a2) -> (folhas a1) + (folhas a2)

arvore = (No 1
            (No 2
                (No 3
                    (Folha 4) 
                    (Folha 5)) 
                (No 6 
                    (Folha 7) 
                    (Folha 8)))
            (No 9
                (Folha 10)
                (Folha 11)))

main = print (folhas arvore)