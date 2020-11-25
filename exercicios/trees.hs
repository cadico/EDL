data BinaryTree a = Leaf a
            | Node a (BinaryTree a) (BinaryTree a)
    deriving (Show)


btree :: BinaryTree Bool
btree = (Node True 
            (Node True 
                (Leaf False) 
                (Leaf True))
            (Node False 
                (Leaf True)
                (Leaf False)))

-- data Tree a = Leaf a
--             | Node a (Tree a) (Tree a)
--     deriving (Show)


-- ltree :: Tree [Int]
-- ltree = (Node [1,2,3]
--             (Node [3,2,1]
--                 (Leaf [4,5,6])
--                 (Leaf [7,8,9]))
--             (Node [6,5,4]
--                 (Leaf [9,8,7])
--                 (Leaf [10,11,12])))

main = print btree