#include <stdio.h>

enum CLASSE {GUERREIRO, ASSASSINO, SACERDOTE};
enum ARMA {ESPADA, ADAGAS, CAJADO};

struct Arma {
    enum ARMA tipo;
    
    union {
        struct {char nome_espada[50];};
        struct {char nome_adaga[50];};
        struct {char nome_cajado[50];};
    };
};

struct Classes {
    enum CLASSE classe;
    char nome[50];
    int altura;
    
    union {
        struct {struct Arma espada;}; //guerreiro
        struct {struct Arma adaga;}; //assassino
        struct {struct Arma cajado;}; //sacerdote
    };
};

int main() {
    struct Classes guerreiro = {GUERREIRO, "Ricardo", 190, {ESPADA, {"espada do aprendiz"}}};
    return 0;
}