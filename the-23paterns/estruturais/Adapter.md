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

Vamos imaginar um buraco redondo

```java
package suaPastaBonita.round;
public class RoundHole {
    private double radius;

    public RoundHole(double radius) {
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }

    public boolean fits(RoundPeg peg) {
        boolean result;
        result = (this.getRadius() >= peg.getRadius());
        return result;
    }
}
```

No buraco redondo cabe os pinos redondos

```java
package suaPastaBonita.round;

public class RoundPeg {
    private double radius;

    public RoundPeg() {}

    public RoundPeg(double radius) {
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }
}
```

Mas vamos supor agora que temos que usar pinos quadrados

```java
package suaPastaBonita.square;

public class SquarePeg {
    private double width;

    public SquarePeg(double width) {
        this.width = width;
    }

    public double getWidth() {
        return width;
    }

    public double getSquare() {
        double result;
        result = Math.pow(this.width, 2);
        return result;
    }
}
```

Para conseguir usar os pinos quadrados nos burados redondos será necessária a criação de um adaptador

```java
package suaPastaBonita.adapters;

import suaPastaBonita.round.RoundPeg;
import suaPastaBonita.square.SquarePeg;

public class SquarePegAdapter extends RoundPeg {
    private SquarePeg peg;

    public SquarePegAdapter(SquarePeg peg) {
        this.peg = peg;
    }

    @Override
    public double getRadius() {
        double result;
        result = (Math.sqrt(Math.pow((peg.getWidth() / 2), 2) * 2));
        return result;
    }
}

```

Exemplo de uso

```java
package suaPastaBonita;

import suaPastaBonita.adapters.SquarePegAdapter;
import suaPastaBonita.round.RoundHole;
import suaPastaBonita.round.RoundPeg;
import suaPastaBonita.square.SquarePeg;

public class Demo {
    public static void main(String[] args) {

        // Round fits round, no surprise.
        RoundHole hole = new RoundHole(5);
        RoundPeg rpeg = new RoundPeg(5);
        if (hole.fits(rpeg)) {
            System.out.println("Round peg r5 fits round hole r5.");
        }

        SquarePeg smallSqPeg = new SquarePeg(2);
        SquarePeg largeSqPeg = new SquarePeg(20);
        // hole.fits(smallSqPeg); // Won't compile.

        // Adapter solves the problem.
        SquarePegAdapter smallSqPegAdapter = new SquarePegAdapter(smallSqPeg);
        SquarePegAdapter largeSqPegAdapter = new SquarePegAdapter(largeSqPeg);
        if (hole.fits(smallSqPegAdapter)) {
            System.out.println("Square peg w2 fits round hole r5.");
        }
        if (!hole.fits(largeSqPegAdapter)) {
            System.out.println("Square peg w20 does not fit into round hole r5.");
        }
    }
}
```

## Quando usar

- Utilize a classe Adaptador quando você quer usar uma classe existente, mas sua interface não for compatível com o resto do seu código.

    O padrão Adapter permite que você crie uma classe de meio termo que serve como um tradutor entre seu código e a classe antiga, uma classe de terceiros, ou qualquer outra classe com uma interface estranha.

- Utilize o padrão quando você quer reutilizar diversas subclasses existentes que não possuam alguma funcionalidade comum que não pode ser adicionada a superclasse.
