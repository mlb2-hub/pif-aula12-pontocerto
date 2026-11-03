# Atividade Prática: Sistema de Fidelidade PontoCerto 🎯

Bem-vindos ao sistema da PontoCerto! Nesta atividade, vocês aplicarão os conceitos de **Funções de Primeira Classe**, **Funções de Alta Ordem** e **Lambdas** para criar um motor de regras de pontuação flexível.

## 📋 Instruções Gerais
- Resolvam os desafios em dupla.
- Façam o fork deste repositório e adicionem o colega como colaborador.
- Façam pelo menos um commit por desafio (ex: `D1: Conclui aplicaCampanha`).
- Preencham seus nomes no arquivo `RESPOSTAS.md`.
- Consultem o `REVISAO_AULA.md` se tiverem dúvidas teóricas.

## 🚀 Desafios

**D1: A Função de Alta Ordem** (Haskell)
Crie a função `aplicaCampanha` que recebe uma regra (uma função de `Int -> Int`) e uma quantidade de pontos base (Int), e retorna os pontos calculados. No arquivo, crie também uma regra simples `dobro` que multiplica os pontos por 2.

**D2: Campanha Relâmpago com Lambda** (Haskell)
A PontoCerto quer dar um bônus de 50 pontos para compras feitas na madrugada, mas essa regra será usada apenas uma vez. Use a função `aplicaCampanha` passando uma função anônima (lambda) que some 50 aos pontos base. Salve o resultado na variável `resultadoMadrugada`.

**D3: A Fábrica de Regras** (Haskell)
Crie uma função `criaMultiplicador` que recebe um fator `Int` e retorna uma *nova função* `(Int -> Int)`. Use essa fábrica para criar a variável `triplo` (fator 3).

**D4: Processamento em Lote** (Haskell)
Temos uma lista com os pontos das compras do mês: `[10, 25, 50, 100]`. Crie uma função `aplicaEmMassa` que recebe uma regra e uma lista de pontos, e aplica a regra a todos os elementos (dica: use a função `map`).

**D5: Revisão de Código** (Haskell)
O estagiário tentou criar uma função que aplica duas regras em sequência (ex: dobra e depois soma 10), mas o código no arquivo inicial não compila. Leia o erro do GHC, arrume a assinatura de tipos ou os parênteses e faça a função `aplicaDuasVezes` funcionar.

**D6: O Passado no C** (C)
No arquivo `main.c`, o mesmo sistema precisa ser implementado em C. Use **Ponteiros de Função** para criar uma função `aplica_regra_c` que recebe uma função de bônus e um valor inteiro.

## 📊 Tabela de Resultados Esperados (Haskell)

| Expressão / Variável | Resultado Esperado |
| :--- | :--- |
| `aplicaCampanha dobro 100` | `200` |
| `resultadoMadrugada` (pontos base: 100) | `150` |
| `aplicaCampanha triplo 100` | `300` |
| `aplicaEmMassa dobro [10, 25, 50]` | `[20, 50, 100]` |
| `aplicaDuasVezes dobro dobro 10` | `40` |
