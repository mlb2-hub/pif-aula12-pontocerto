module Fidelidade where

-- D1: A Função de Alta Ordem
aplicaCampanha :: (Int -> Int) -> Int -> Int
aplicaCampanha regra valor = regra valor

dobro :: Int -> Int
dobro x = x * 2

-- D2: Campanha Relâmpago com Lambda
resultadoMadrugada :: Int
resultadoMadrugada = aplicaCampanha (\x -> x + 50) 100

-- D3: A Fábrica de Regras
criaMultiplicador :: Int -> (Int -> Int)
criaMultiplicador fator = \x -> x * fator

triplo :: Int -> Int
triplo = criaMultiplicador 3

-- D4: Processamento em Lote
aplicaEmMassa :: (Int -> Int) -> [Int] -> [Int]
aplicaEmMassa regra lista = map regra lista
 
