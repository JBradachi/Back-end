# Facade

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

## O que é

Parecido com a idea do builder, uma forma de criar uma fachada para um subsistema ou vários subsistemas complexos.

O Facade é um padrão de projeto estrutural que fornece uma interface simplificada para uma biblioteca, um framework, ou qualquer conjunto complexo de classes.

envelopa a aplicação em uma interface simples

## Estrutura

![alt text](/the-23paterns/imagesmd/FC1.png)



1. A Fachada fornece um acesso conveniente para uma parte particular da funcionalidade do subsistema. Ela sabe onde direcionar o pedido do cliente e como operar todas as partes móveis.

1. Uma classe Fachada Adicional pode ser criada para prevenir a poluição de uma única fachada com funcionalidades não relevantes que podem torná-lo mais uma estrutura complexa. Fachadas adicionais podem ser usadas tanto por clientes como por outras fachadas.

1. O Subsistema Complexo consiste em dúzias de objetos variados. Para tornar todos eles em algo que signifique alguma coisa, você tem que mergulhar fundo nos detalhes de implementação do subsistema, tais como objetos de inicialização na ordem correta e suprí-los com dados no formato correto.

1. As classes do subsistema não estão cientes da existência da fachada. Elas operam dentro do sistema e trabalham entre si diretamente.

1. O Cliente usa a fachada ao invés de chamar os objetos do subsistema diretamente.


## Como implementar

1. Verifique se é possível providenciar uma interface mais simples que a que o subsistema já fornece. Você está no caminho certo se essa interface faz o código cliente independente de muitas classes do subsistema.

1. Declare e implemente essa interface em uma nova classe fachada. A fachada deve redirecionar as chamadas do código cliente para os objetos apropriados do subsistema. A fachada deve ser responsável por inicializar o subsistema e gerenciar seu ciclo de vida a menos que o código cliente já faça isso.

1. Para obter o benefício pleno do padrão, faça todo o código cliente se comunicar com o subsistema apenas através da fachada. Agora o código cliente fica protegido de qualquer mudança no código do subsistema. Por exemplo, quando um subsistema recebe um upgrade para uma nova versão, você só precisa modificar o código na fachada.

1. Se a fachada ficar grande demais, considere extrair parte de seu comportamento para uma nova e refinada classe fachada.


## Na prática

```java

```



```java

```



```java

```



```java

```



```java

```



```java

```



```java

```



```java

```



```java

```



```java

```

## Quando usar

- Util para construir frameworks, bibliotecas ou sistemas. Uso simples do código (encapsulamento)

- Utilize o padrão Facade quando você precisa ter uma interface limitada mas simples para um subsistema complexo.

- Utilize o Facade quando você quer estruturar um subsistema em camadas.