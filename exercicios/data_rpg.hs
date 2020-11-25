-- Guerreiros: possuem nome, altura (em cm) e usam espada
-- Assassinos: possuem nome, altura (em cm) e usam adagas
-- Sacerdotes: possuem nome, altura (em cm) e usam cajado

data Arma = Espada
            | Adagas
            | Cajado
    deriving (Show)

data Classes a = Guerreiro String Int a
                | Assassino Classes a
                | Sacerdote Classes a
    deriving (Show)


guerreiro = Guerreiro "Ricardo" 190 Espada

main = print guerreiro
