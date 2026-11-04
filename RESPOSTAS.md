# Respostas da dupla — Atividade PontoCerto

## Dupla

| Papel | Nome completo | Usuário do GitHub |
|---|---|---|
| Integrante 1 (dono do fork) | Sofia Martins van Drunen | |
| Integrante 2 (colaborador) | Mateus de Lira Braga | |

## Explicação da solução
Receber funções como parâmetro nas funções de alta ordem (como `aplicaCampanha`) e usar fábricas de funções elimina a necessidade de reescrever a mesma lógica de cálculo ou iteradores sempre que uma nova regra de bônus for criada.

## Desafio 2
Como a promoção relâmpago é temporária e será usada apenas uma vez, a lambda evita a poluição do código com funções nomeadas no escopo global que nunca mais seriam chamadas.

## Desafio 3
A função `criaMultiplicador 5` devolve uma nova função, e não um número inteiro. O `:t` confirma isso mostrando a assinatura `Int -> Int` (recebe um inteiro e retorna outro inteiro).

## Desafio 4

**a)** Porque a ordem de composição das funções afeta o resultado matemático (dobrar os pontos e depois somar o bônus dá um resultado diferente de somar o bônus e depois dobrar tudo).

**b)** Aplicar primeiro o multiplicador e por último o bônus de aniversário (soma) garante que o bônus fixo não seja inflado indevidamente pela regra multiplicadora.

## Desafio 5 — revisão de código

| Erro | Função | O que estava errado | Como o GHC avisou (resumo da mensagem) | Como corrigimos |
|---|---|---|---|---|
| 1 | aplicaDuasVezes | Assinatura de tipos sem parênteses. | Erro de unificação de tipos, informando que esperava um tipo função e recebeu Int. | Colocamos `(Int -> Int)` para `regra1` e `regra2`. |
| 2 | aplicaDuasVezes | Aplicação das funções estava sequencial como variáveis `regra1 regra2 valor`. | Couldn't match expected type `Int -> Int` with actual type `Int`. | Usamos os parênteses para compor: `regra2 (regra1 valor)`. |

## Desafio 6 — Haskell × C
Em Haskell, a sintaxe lida com funções de alta ordem nativamente sem exigir declarações verbosas de tipo de ponteiro, enquanto em C precisamos declarar explicitamente `int (*regra)(int)`. Além disso, o Haskell aplica funções diretamente (`regra valor`), enquanto o C utiliza parênteses de chamada de função (`regra(valor)`).

