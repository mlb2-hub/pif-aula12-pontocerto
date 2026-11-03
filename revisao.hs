module Revisao where

-- D5: Revisão de Código
aplicaDuasVezes :: (Int -> Int) -> (Int -> Int) -> Int -> Int
aplicaDuasVezes regra1 regra2 valor = regra2 (regra1 valor)
