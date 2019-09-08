## Introdução

 ***Scala*** é uma linguagem de programação de software que mistura métodos orientados a objetos com recursos de programação funcional que suportam um estilo de programação mais conciso do que outras linguagens de uso geral, como Java, reduzindo a quantidade de código que os desenvolvedores precisam escrever. Outro benefício da abordagem combinada objeto-funcional é que os recursos que funcionam bem em pequenos programas tendem a aumentar a eficiência quando executados em ambientes maiores.
 
## Origens e Influências

 Scala foi originalmente escrito por Martin Odersky e seu grupo na École Polytechnique Federale de Lausanne, na Suíça. Seu trabalho anterior incluiu a criação da linguagem Funnel, que compartilhava algumas características com o Scala, mas não empregava as JVMs como mecanismo de execução. Odersky começou a trabalhar no Scala em 2001 e continua a desempenhar um papel de liderança no seu desenvolvimento.
 
 Scala não é uma extensão de Java, apesar de ser similar ao mesmo, mas é completamente interoperável com ele. Scala traduz para Java bytecodes, e a eficiência de compilar programas é igualmente ao do Java. Uma segunda implementação de Scala compila **.NET**. O design do Scala começou em 2001. Um primeiro lançamento ao público foi em 2003. Em 2006, uma segunda versão remodelada foi lançada como Scala v 2.0. Desde então a linguagem tem ganhado popularidade.

 Em Janeiro de 2011, uma bolsa de pesquisa de cinco anos foi concedida ao grupo Scala, pelo Conselho Europeu de Investigação (CEI) com o valor total de €2,3 milhões. Já em Maio do mesmo ano, Odersky e seus colaboradores lançaram uma empresa, a Typesafe Inc. (posteriormente viria a ser chamada de Lightbend Inc.), a qual tinha como intuito fornecer à Scala suporte comercial, treinamento e serviços diversos. Isso só foi possível em decorrência do investimento que a Typesafe recebeu da Greylock Partners, no valor de $3 milhões. 
 
 Com influências de C e Java na implementação, em Scala são utilizados os mesmos operadores e controles de estruturas bem similares. 
 
 As principais diferenças sintáticas são:

  * Definições começam com uma palavra reservada.
  * Em Scala não precisamos declarar explicitamente o tipo das variáveis, pois o próprio compilador infere os tipos no momento do uso delas, o que traz grande flexibilidade na programação.
  * O tipo Array é escrito como Array[T] em vez de T[], e o acesso aos elementos do array é feito, por exemplo, a(i) em vez de a[i].
  * Funções podem ser aninhadas dentro de outras funções. Funções aninhadas podem acessar parâmetros e variáveis locais anexando funções.
  
  A linguagem Scala está sendo usada em diversas empresas, como por exemplo, o Twitter, o GitHub e o FourSquare, e em diversos projetos OpenSource famosos, como por exemplo, o Apache Spark.
  
## Classificação

 Scala é puramente orientada a objetos. Tipos e comportamento dos objetos são descritos pelas classes e traços. Abstrações de classes são estendidas por "subclassing" e um flexível mecanismo de "mixin-based composition" como uma forma "limpa" de substituição a heranças múltiplas. 
 
 Classes em Scala são templates estáticos que podem ser instanciados como vários objetos em tempo de execução.

 Scala é também uma linguagem funcional e fornece uma sintaxe "leve" para definição de funções anônimas, suporta funções de alta ordem, permite que funções sejam aninhadas (funções são passadas como parâmetros dentro de outras funções, são tratadas como objetos), e suporta currying. Classes Scala e seu suporte interno para pattern matching modela tipos algébricos usados em muitas linguagens de programação funcionais. Além disso, sua noção de "pattern matching" natural é estendida para o processamento de arquivos XML com a ajuda de expressões regulares. Neste contexto, a linguagem se torna de grande valia para o processamento de sintaxes futuras. Estas características fazem com que o Scala seja ideal para o desenvolvimento de aplicações como web services.
 ```
 - Pattern Matching: Funciona mais ou menos como um Switch/Case, mas é muito mais poderoso,
 permitindo a comparação utilizando expressões regulares.
 - Funções de Alta Ordem: Em Scala funções são objetos, por isso podemos utilizá-las de muitas
 formas, como por exemplo, passá-las como parâmetros para outras funções.
 - Currying: É uma técnica de transformação de uma função que recebe múltiplos parâmetros de
 forma que ela pode ser chamada como uma cadeia de funções que recebem somente um parâmetro cada.
```
 Scala possui tipagem estática.
```
Tipagem Estática é a capacidade de uma linguagem ajudar na segurança de tipos, onde, a partir do
momento que uma linguagem determina o tipo de uma variável, esse tipo não pode ser alterado durante
a compilação, fazendo com que o programador não se preocupe tanto pois o compilador acusará erro
caso seja alterado o tipo de uma variável.
```
 
 E como dito anteriormente, empresas importantes como o Twitter, Foursquare, Linkedin e Quora adotaram a linguagem para desenvolvimento de seus serviços. Uma das primeiras diferenças entre Scala e uma linguagem como Java é que Scala tem maior
foco no paradigma funcional.

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

Lazy Evaluation, ou "avaliação preguiçosa", é uma técnica de avaliação de expressões muito utilizada em programação funcional. Scala suporta tanto Strict Evaluation (como Java), quanto Lazy Evaluation (como Haskell), mas utiliza a primeira como padrão.

### Como funciona?

A Lazy Evaluation consiste em: qualquer expressão desse tipo só será avaliada no momento em que for utilizada, ou seja, se uma variável é declarada, sem especificação, em Scala, o valor será atribuído imediatamente à ela pois Scala usa, por padrão, a forma estrita de avaliação. Para utilizar de forma "lazy" as variáveis ou expressões é preciso especificar explicitamente esta intenção dessa forma:

``` Scala
lazy val x = 10
```

Assim, esse valor só será atribuído à variável quando esta for requerida/utilizada.

### Exemplos

#### Variável Lazy

```console
scala> val x = 10
x: Int = 10

scala> lazy val y = 20
y: Int = <lazy>

scala> y
res0: Int = 20
```

Nesse exemplo, pode-se perceber que: a variável y só foi inicializada quando foi utilizada.

## Bibliografia


 * Lambda Expression in Scala: https://www.geeksforgeeks.org/lambda-expression-in-scala/
 * Site da linguagem: https://www.scala-lang.org/
 * "What is Scala?": https://searchbusinessanalytics.techtarget.com/definition/Scala-Scalable-Language
 * Conheça a linguagem Scala: https://www.devmedia.com.br/conheca-a-linguagem-scala/32850
 * Wikipedia: https://pt.wikipedia.org/wiki/Scala_(linguagem_de_programa%C3%A7%C3%A3o)
 * Diferença entre tipagens: http://felipequadros.com/programa%C3%A7%C3%A3o/b%C3%A1sico/iniciante/geral/teoria/2016/06/05/tipagem-fraca-forte-est%C3%A1tica-din%C3%A2mica-e-inferencia-de-tipo/
