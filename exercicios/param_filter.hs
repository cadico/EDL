
l = [1,2,3,4,5,6,7,8,9]

filter_param :: (a -> Bool) -> [a] -> [a]
filter_param f l =
    case l of
        [] -> []
        (x:xs) -> if (f x) then (x:(filter_param f xs)) else (filter_param f xs)
    
main = print (filter even l)
