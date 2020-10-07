## Introdução

 ***Scala*** é uma linguagem de programação de software de propósito geral, multi-paradigma, com conceitos de orientação a objetos e com recursos de programação funcional que suportam um estilo de programação mais conciso do que outras linguagens de uso geral, como Java, reduzindo a quantidade de código que os desenvolvedores precisam escrever. Outro benefício da abordagem combinada objeto-funcional é que os recursos que funcionam bem em pequenos programas tendem a aumentar a eficiência quando executados em ambientes maiores, o que torna a linguagem altamente flexível e **escalável**, de onde surgiu seu nome (**SCA**lable **LA**nguage).
 
## Origens e Influências

Scala foi originalmente escrito por Martin Odersky e seu grupo na École Polytechnique Federale de Lausanne, na Suíça. Seu trabalho anterior incluiu a criação da linguagem Funnel, que compartilhava algumas características com o Scala, mas não empregava as JVMs como mecanismo de execução. Odersky começou a trabalhar no Scala em 2001 e continua a desempenhar um papel de liderança no seu desenvolvimento.

Scala não é uma extensão de Java, porém é completamente interoperável com ela. A compilação de programas em Scala traduz o código para Java bytecodes, e sua eficiência é igual à de Java. Uma consequência dessa interoperabilidade entre as duas é a possibilidade de utilizar Scala para desenvolvimento Android, comumente realizado em Java.  
Outras implementação de Scala permite a compilação em JavaScript, com **Scala.js**, o que permite utilizar a linguagem para desenvolvimento web.  
O design do Scala começou em 2001, tendo seu primeiro lançamento ao público em 2003. Em 2006, uma segunda versão remodelada foi lançada como Scala v 2.0 e, desde então, a linguagem tem ganhado popularidade.

Em Janeiro de 2011, uma bolsa de pesquisa de cinco anos foi concedida ao grupo Scala, pelo Conselho Europeu de Investigação (CEI) com o valor total de €2,3 milhões. Já em Maio do mesmo ano, Odersky e seus colaboradores lançaram uma empresa, a Typesafe Inc. (posteriormente viria a ser chamada de Lightbend Inc.), a qual tinha como intuito fornecer à Scala suporte comercial, treinamento e serviços diversos. Isso só foi possível em decorrência do investimento que a Typesafe recebeu da Greylock Partners, no valor de $3 milhões. 

Com influências de C e Java na implementação, em Scala são utilizados os mesmos operadores e controles de estruturas bem similares. 

As principais diferenças sintáticas são:

* Definições começam com uma palavra reservada.
* Em Scala não precisamos declarar explicitamente o tipo das variáveis, pois o próprio compilador infere os tipos no momento do uso delas, o que traz grande flexibilidade na programação.
* O tipo Array é escrito como Array[T] em vez de T[], e o acesso aos elementos do array é feito, por exemplo, a(i) ao invés de a[i].
* Diferentemente de Java, Scala não exige ";" ao final de comandos

A linguagem Scala está sendo usada em diversas empresas, como por exemplo, o Twitter, o GitHub e o FourSquare, e em diversos projetos OpenSource famosos, como por exemplo, o Apache Spark.  

As principais frentes da computação que utilizam Scala atualmente são: Engenharia de Software e Engenharia de dados. Discutiremos sobre o porque de essas áreas adotarem esta linguagem mais a frente.  

* Funções podem ser aninhadas dentro de outras funções. Funções aninhadas podem acessar parâmetros e variáveis locais anexando funções (Closures).

## Classificação

Scala é puramente orientada a objetos, tipos e comportamento dos objetos são descritos pelas classes e traços. Abstrações de classes são estendidas por "subclassing" e um flexível mecanismo de "mixin-based composition" como uma forma "limpa" de substituição a heranças múltiplas. 

Classes em Scala são templates estáticos que podem ser instanciados como vários objetos em tempo de execução.

Scala é também uma linguagem funcional e fornece uma sintaxe "leve" para definição de funções anônimas, suporta funções de alta ordem, permite que funções sejam aninhadas, permitindo a criação de closures, e suporta currying (uma funcionalidade característica de linguagens funcionais). Classes Scala e seu suporte interno para pattern matching modela tipos algébricos usados em muitas linguagens de programação funcionais. Além disso, sua noção de "pattern matching" natural é estendida para o processamento de arquivos XML com a ajuda de expressões regulares. Neste contexto, a linguagem se torna de grande valia para o processamento de sintaxes futuras. Estas características fazem com que o Scala seja ideal para o desenvolvimento de aplicações como web services.

- Pattern Matching: Funciona mais ou menos como um Switch/Case, mas é muito mais poderoso,
permitindo a comparação utilizando expressões regulares.
- Funções de Alta Ordem: Em Scala funções são objetos, por isso podemos utilizá-las de muitas
formas, como por exemplo, passá-las como parâmetros para outras funções.
- Currying: É uma técnica de transformação de uma função que recebe múltiplos parâmetros de
forma que ela pode ser chamada como uma cadeia de funções que recebem somente um parâmetro cada.

Scala possui tipagem estática, ou seja, os tipos de suas variáveis são **imutáveis** o que pode auxiliar na segurança de tipos. Já que, uma vez determinado o tipo de uma variável, este não pode ser alterado durante a compilação e execução do programa.  
Além disso, Scala possui inferência de tipos, ou seja, podemos omitir a declaração do tipo de uma variável que, mesmo assim, a linguagem o descobriria e atribuiria este à variável.

```Scala
var exemplo: Int = 5 //com tipo especificado
var exemplo = 5.1 //com tipo inferido
```
Output:
```bash
exemplo: Int = 5
exemplo: Double = 5.1
```
## Exemplos de Código

### Hello World!

#### Scala

```Scala
object HelloWorld {
    def main(args: Array[String]): Unit = {
      println("Hello, world!")
    }
}
```

#### Java

```Java
class HelloWorld {
    public static void main(String args[]) { 
        System.out.println("Hello, World"); 
    } 
}
```

### Factorial (Recursivo)

#### Scala

```Scala
object FactorialRecursion {
    def main(args: Array[String]) {
        println(factorial(5))
    }
    def factorial(n: Int): Int = {
        if (n == 0) 
            return 1
        else
            return n * factorial(n - 1)
    }
}
```

#### Java

```Java
class FactorialRecursion {  
    static int factorial(int n) {    
        if (n == 0)    
            return 1;    
        else    
            return(n * factorial(n - 1));    
    }    
    public static void main(String args[]) {  
        System.out.println(factorial(5));    
    }  
}  
```

## Lazy Evaluation

Lazy Evaluation, ou "avaliação preguiçosa", é uma técnica de avaliação de expressões muito utilizada em programação funcional. Scala suporta tanto Strict Evaluation (como Java), quanto Lazy Evaluation (como Haskell), mas utiliza a primeira como padrão. Variáveis ou expressões Lazy, uma vez que avaliadas, não podem ter o seu valor alterado.

### Como funciona?

A Lazy Evaluation consiste em: qualquer expressão desse tipo só será avaliada no momento em que for utilizada, ou seja, se uma variável é declarada, sem especificação, em Scala, o valor será atribuído imediatamente à ela pois Scala usa, por padrão, a forma estrita de avaliação. Para utilizar de forma "lazy" as variáveis ou expressões é preciso especificar explicitamente esta intenção dessa forma:

``` Scala
lazy val x = 10
```

Assim, esse valor só será atribuído à variável quando esta for requerida/utilizada.

### Prós (vs linguagens estáticas)

- Processo de computação otimizado, já que o cálculo de expressões só é feito quando necessário.
- Possibilita a criação de estruturas de dados "infinitas".
- Ajuda a resolver problemas de dependência circular.

### Contras (vs linguagens estáticas)

- Debugar o código pode se tornar uma tarefa complicada.
- Acompanhar a execução de expressões desse tipo se torna um pouco confuso, fazendo com que o programador possa se perder no processo.

### Exemplos

#### Variável Lazy

```bash
scala> val x = 10
x: Int = 10

scala> lazy val y = 20
y: Int = <lazy>

scala> y
res0: Int = 20
```
Nesse exemplo, pode-se perceber que: a variável y só foi inicializada quando foi utilizada.  

Em C++:

```CPP
int x = 10;
```

Ao final dessa expressão, o valor de x será armazenado e já estará pronto para uso

#### Parâmetros "Call By Name"

Nesse caso, os parâmetros passados para a função, sejam eles valores ou expressões, só serão avaliados quando estes forem usados dentro da própria função.

```Scala
object exemploparam {
    
    def main(args: Array[String]) : Unit = {
        exemploStatic(add(2,3))
        exemploLazy(add(2,3))
    }

    def add(a: Int, b: Int) : Int = {
        println("adicionando...");
        a+b
    }
    
    def exemploLazy(x: => Int) : Unit = {
       println("exemplificando Lazy...")
       println(x)
    }

    def exemploStatic(x: Int) : Unit = {
        println("exemplificando Static...")
        println(x)
    }
}
```
Output:

```bash
>scalac exemploparam.scala
>scala exemploparam
adicionando...
exemplificando Static...
5
exemplificando Lazy...
adicionando...
5
```
Nesse exemplo, é possível enxergar que: no método estático, a função de soma foi chamada primeiramente para calcular o valor da expressão passada como argumento, já no método Lazy, este é executado e só chama a função de soma quando a expressão passada como argumento foi utilizada dentro do próprio método Lazy. A forma avaliação de expressões de outras linguagens estáticas como C++, por exemplo, segue o mesmo padrão do utilizado por default em Scala (expressões são avaliadas imediatamente), porém estas não oferecem a possibilidade de utilizar Lazy Evaluation:

```CPP 
#include <iostream>

using namespace std;

int add(int a, int b) {
    cout << "adicionando..." << endl;
    return (a+b);
}

void exemploStatic(int x) {
    cout << "exemplificando Static..." << endl << x << endl;
}

int main() {
    exemploStatic(add(2,3));
    return 0;
}
```
Output:

```bash
> ./a.exe
adicionando...
exemplificando Static...
5
```

Em C++ os parâmetros são calculados antes de a função ser iniciada, da mesma forma que o padrão em Scala.

#### Estruturas "Infinitas"

Nesse caso, será usado como exemplo os Streams (ou LazyLists) em Scala ("uma versão Lazy das Listas"). As "LazyLists" funcionam de forma parecida com o que seria uma Lista Encadeada em C, por exemplo. 

```bash
scala> import Stream.cons
import Stream.cons

scala> def addLazyList(n: Int): LazyList[Int] = LazyList.cons(n, addLazyList(n+1))
addLazyList: (n: Int)LazyList[Int]

scala> val positiveintegers = addLazyList(0)
positiveintegers: LazyList[Int] = LazyList(<not computed>)

scala> positiveintegers.take(6) foreach println
0
1
2
3
4
5
```

Nesse exemplo, a LazyList (variável positiveintegers) só é computada quando usamos a mesma. A ideia das LazyLists serem uma "estrutura infinita" vem do fato de que, como estas serão computadas somente em tempo de execução, o tamanho delas será definido também em tempo de execução, logo tem-se uma estrutura "do tamanho desejado" para trabalhar. Em C++, as Listas têm de ser inicializadas e um espaço de memória tem de ser alocado para que o programa possa funcionar corretamente.

```CPP
#include <iostream>
#include <list>

using namespace std;

int main()
{
    list<int> lista;
    for (int i = 0; i < 6; i++){
        lista.push_back(i);
    }
    for (int i : lista){
        cout << i << endl;
    }
    return 0;
}
```

Em C++, a Lista já é atribuída imediatamente após a expressão, o que se faz é adicionar um elemento por vez porém, de qualquer forma, há a necessidade de saber quantos elementos serão colocados.

## Bibliografia


 * Lambda Expression in Scala: https://www.geeksforgeeks.org/lambda-expression-in-scala/
 * Site da linguagem: https://www.scala-lang.org/
 * "What is Scala?": https://searchbusinessanalytics.techtarget.com/definition/Scala-Scalable-Language
 * Conheça a linguagem Scala: https://www.devmedia.com.br/conheca-a-linguagem-scala/32850
 * Wikipedia: https://pt.wikipedia.org/wiki/Scala_(linguagem_de_programa%C3%A7%C3%A3o)
 * Diferença entre tipagens: http://felipequadros.com/programa%C3%A7%C3%A3o/b%C3%A1sico/iniciante/geral/teoria/2016/06/05/tipagem-fraca-forte-est%C3%A1tica-din%C3%A2mica-e-inferencia-de-tipo/
 * Lazy Evaluation: https://www.geeksforgeeks.org/scala-lazy-evaluation/
 * Lazy Evaluation: https://dzone.com/articles/scala-lazy-evaluation
 * Parâmetros "Call By Name": https://stackoverflow.com/questions/13337338/call-by-name-vs-call-by-value-in-scala-clarification-needed
 * Estruturas infinitas ou Lazy sequences: https://dzone.com/articles/scala-lazy-evaluation
