# Adapter

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

## O que é

O **Adapter** é um padrão de projeto estrutural que **permite objetos com interfaces incompatíveis colaborarem entre si**.

Converte a interface de um objeto para que outro objeto possa entendê-lo.

Um adaptador encobre um dos objetos para esconder a complexidade da conversão acontecendo nos bastidores. O objeto encobrido nem fica ciente do adaptador. Por exemplo, você pode encobrir um objeto que opera em metros e quilômetros com um adaptador que converte todos os dados para unidades imperiais tais como pés e milhas.

Adaptadores podem não só converter dados em vários formatos, mas também podem ajudar objetos com diferentes interfaces a colaborar, como por exemplo

## Estrutura

Adaptador de objetos:

O adaptador implementa a interface de um objeto e encobre o outro.

![alt text](/the-23paterns/imagesmd/AD2.png)

Adaptador de classe:

O adaptador herda interfaces de ambos os objetos ao mesmo tempo.

![alt text](/the-23paterns/imagesmd/AD3.png)

## Como implementar

- O adaptador obtém uma interface, compatível com um dos objetos existentes.

- Usando essa interface, o objeto existente pode chamar os métodos do adaptador com segurança.

- Ao receber a chamada, o adaptador passa o pedido para o segundo objeto, mas em um formato e ordem que o segundo objeto espera.

![alt text](/the-23paterns/imagesmd/AD1.png)

## Na prática

vamos imaginar um buraco redondo

```java

```

No buraco redondo cabe os pinos redondos

```java

```

Mas vamos supor agora que temos que usar pinos quadrados

```java

```

Para conseguir usar os pinos quadrados nos burados redondos será necessária a criação de um adaptador

```java

```

Exemplo de uso

```java

```

## Quando usar

- Utilize a classe Adaptador quando você quer usar uma classe existente, mas sua interface não for compatível com o resto do seu código.

    O padrão Adapter permite que você crie uma classe de meio termo que serve como um tradutor entre seu código e a classe antiga, uma classe de terceiros, ou qualquer outra classe com uma interface estranha.

- Utilize o padrão quando você quer reutilizar diversas subclasses existentes que não possuam alguma funcionalidade comum que não pode ser adicionada a superclasse.
