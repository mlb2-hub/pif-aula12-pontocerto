#include <stdio.h>

// D6: O Passado no C
// 1. Crie a função de bônus que soma 10
int bonus_dez(int valor) {
    return valor + 10;
}

// 2. Crie a função aplica_regra_c que recebe um ponteiro de função e um valor
void aplica_regra_c(int (*regra)(int), int valor) {
    int resultado = regra(valor);
    printf("Resultado: %d\n", resultado);
}

int main() {
    printf("Sistema PontoCerto em C\n");
    // 3. Chame a função aplica_regra_c passando bonus_dez e o valor 100
    aplica_regra_c(bonus_dez, 100);
    
    return 0;
}
