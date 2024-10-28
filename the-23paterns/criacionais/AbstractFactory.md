# Abstract Factory

Também conhecido como: **Fábrica abstrata**

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

## O que é

O Abstract Factory é um padrão de projeto criacional que permite que você produza famílias de objetos relacionados ou dependentes sem ter que especificar suas classes concretas.

A primeira coisa que o padrão Abstract Factory sugere é declarar explicitamente interfaces para cada produto distinto da família de produtos (ex: cadeira, sofá ou mesa de centro). Então você pode fazer todas as variantes dos produtos seguirem essas interfaces. Por exemplo, todas as variantes de cadeira podem implementar a interface Cadeira; todas as variantes de mesa de centro podem implementar a interface MesaDeCentro, e assim por diante.

Trata a abstração como uma classe concreta.

É criado uma superclasse que generaliza todos métodos de criação para todos os produtos que fazem parte da família de produtos, que são implementadas com métodos que devem retornar tipos abstratos de produtos representados pelas interfaces

![alt text](/the-23paterns/imagesmd/AF1.png)

Aqui temos a interface de uma fabrica com todos os itens que todas as fábricas fazem e a criação de classes concretas que de fato lidam com criar esses itens, mas cada um desses itens são criados conforme seu tipo, dado que a fabrica correspondente sabe seu tipo é fácil de fazer isso.

Para retornar os tipos abstratos é necessário criarmos uma interface que abrange os diversos itens (modern, victorian) de cada tipo (chair, sofa)

![alt text](image.png)

Ou seja, quando se executar a função **createChair()** da **ModernFurnitureFactory**, irá retornar um tipo **Chair**, e não o tipo **ModernChair** (visto que **modernChair** continua sendo **Chair**, mas com suas próprias características), mas vai executar o criador de **modernChair**. 

O **código cliente** tem que funcionar com ambas as **fábricas** e produtos via suas respectivas *interfaces abstratas*. Isso permite que você mude o tipo de uma **fábrica** que passou para o **código cliente**, bem como a variante do produto que o **código cliente** recebeu, sem quebrar o **código cliente** atual.

Digamos que o **cliente** quer que uma **fábrica** produza uma *cadeira*. O cliente não precisa estar ciente da classe **fábrica**, e nem se importa que tipo de **cadeira** ele receberá. Seja ela um modelo *Moderno* ou no estilo *Vitoriano*, o cliente precisa tratar todas as *cadeiras* da mesma maneira, usando a *interface abstrata Cadeira*. Com essa abordagem, a única coisa que o cliente sabe sobre a *cadeira* é que ela implementa o método **sentar** de alguma maneira. E também, seja qual for a variante da *cadeira* retornada, ela sempre irá combinar com o tipo de sofá ou mesa de centro produzido pelo mesmo objeto **fábrica**.

Há mais uma coisa a se clarificar: se o cliente está exposto apenas às *interfaces abstratas*, o que realmente cria os objetos **fábrica** então? Geralmente, o programa cria um objeto **fábrica** concreto no estágio de inicialização. Antes disso, o programa deve selecionar o **tipo de fábrica** dependendo da configuração ou definições de ambiente.

## Estrutura

![alt text](/the-23paterns/imagesmd/AF3.png)



1. **Produtos Abstratos** declaram *interfaces* para um conjunto de produtos distintos mas relacionados que fazem parte de uma família de produtos.

1. **Produtos Concretos** são várias implementações de **produtos abstratos**, agrupados por variantes. Cada *produto abstrato* (cadeira/sofá) deve ser implementado em todas as variantes dadas (Vitoriano/Moderno).

1. A **interface Fábrica Abstrata** declara um conjunto de métodos para criação de cada um dos **produtos abstratos**.

1. **Fábricas Concretas** implementam métodos de *criação fábrica abstratos*. Cada **fábrica concreta** corresponde a uma variante específica de produtos e cria apenas aquelas variantes de produto.

1. Embora **fábricas concretas** instanciam **produtos concretos**, assinaturas dos seus métodos de criação devem retornar **produtos abstratos** correspondentes. Dessa forma o código cliente que usa uma fábrica não fica ligada a variante específica do produto que ele pegou de uma fábrica. O **Cliente** pode trabalhar com qualquer variante de **produto**/**fábrica concreto**, desde que ele se comunique com seus objetos via *interfaces abstratas*.

## Como implementar

![alt text](/the-23paterns/imagesmd/AF4.png)


## Na prática

Vamos criar as interfáces abstratas de produtos (classes) que possuem variantes:

Botão:

```java
package suaPastaBonita.buttons;

public interface Button {
    void paint();
}
```

Checkbox:

```java
package suaPastaBonita.checkboxes;

public interface Checkbox {
    void paint();
}

```

Agora vamos implementar as variantes de ambos

Variantes de botão:

```java
package suaPastaBonita.buttons;

public class MacOSButton implements Button {

    @Override
    public void paint() {
        System.out.println("You have created MacOSButton.");
    }
}
```


```java
package suaPastaBonita.buttons;

public class WindowsButton implements Button {

    @Override
    public void paint() {
        System.out.println("You have created WindowsButton.");
    }
}
```

Variantes de Checkbox:

```java
package suaPastaBonita.checkboxes;

public class MacOSCheckbox implements Checkbox {

    @Override
    public void paint() {
        System.out.println("You have created MacOSCheckbox.");
    }
}
```

```java
package suaPastaBonita.checkboxes;

public class WindowsCheckbox implements Checkbox {

    @Override
    public void paint() {
        System.out.println("You have created WindowsCheckbox.");
    }
}
```

Agora que criamos os produtos e suas respectivas variações, vamos criar a fabrica abstrata e as fabricas concretas de cada uma das variações.

Fabrica abstrata:

```java
package suaPastaBonita.factories;

import suaPastaBonita.buttons.Button;
import suaPastaBonita.checkboxes.Checkbox;

public interface GUIFactory {
    Button createButton();
    Checkbox createCheckbox();
}
```

Fabrica concreta 1:

```java
package suaPastaBonita.factories;

import suaPastaBonita.buttons.Button;
import suaPastaBonita.buttons.MacOSButton;
import suaPastaBonita.checkboxes.Checkbox;
import suaPastaBonita.checkboxes.MacOSCheckbox;

public class MacOSFactory implements GUIFactory {

    @Override
    public Button createButton() {
        return new MacOSButton();
    }

    @Override
    public Checkbox createCheckbox() {
        return new MacOSCheckbox();
    }
}
```
Fabrica concreta 2:

```java
package suaPastaBonita.factories;

import suaPastaBonita.buttons.Button;
import suaPastaBonita.buttons.WindowsButton;
import suaPastaBonita.checkboxes.Checkbox;
import suaPastaBonita.checkboxes.WindowsCheckbox;

public class WindowsFactory implements GUIFactory {

    @Override
    public Button createButton() {
        return new WindowsButton();
    }

    @Override
    public Checkbox createCheckbox() {
        return new WindowsCheckbox();
    }
}
```

Vamos ver como ficaria o código do cliente:

```java
package suaPastaBonita.app;

import suaPastaBonita.buttons.Button;
import suaPastaBonita.checkboxes.Checkbox;
import suaPastaBonita.factories.GUIFactory;

/**
 * Factory users don't care which concrete factory they use since they work with
 * factories and products through abstract interfaces.
 */
public class Application {
    private Button button;
    private Checkbox checkbox;

    public Application(GUIFactory factory) {
        button = factory.createButton();
        checkbox = factory.createCheckbox();
    }

    public void paint() {
        button.paint();
        checkbox.paint();
    }
}
```

```java
package suaPastaBonita;

import suaPastaBonita.app.Application;
import suaPastaBonita.factories.GUIFactory;
import suaPastaBonita.factories.MacOSFactory;
import suaPastaBonita.factories.WindowsFactory;

public class Demo {

    /**
     * Application picks the factory type and creates it in run time (usually at
     * initialization stage), depending on the configuration or environment
     * variables.
     */

    private static Application configureApplication() {
        Application app;
        GUIFactory factory;
        String osName = System.getProperty("os.name").toLowerCase();
        if (osName.contains("mac")) {
            factory = new MacOSFactory();
        } else {
            factory = new WindowsFactory();
        }
        app = new Application(factory);
        return app;
    }

    public static void main(String[] args) {
        Application app = configureApplication();
        app.paint();
    }
}
```

## Quando usar

* Use o Abstract Factory quando seu código precisa trabalhar com diversas famílias de produtos relacionados, mas que você não quer depender de classes concretas daqueles produtos-eles podem ser desconhecidos de antemão ou você simplesmente quer permitir uma futura escalabilidade.

    O Abstract Factory fornece a você uma interface para a criação de objetos de cada classe das famílias de produtos. Desde que seu código crie objetos a partir dessa interface, você não precisará se preocupar em criar uma variante errada de um produto que não coincida com produtos já criados por sua aplicação.

* Considere implementar o [Abstract Factory](#abstract-factory) quando você tem uma classe com um conjunto de [métodos fábrica](/the-23paterns/criacionais/FactoryMethod.md) que desfoquem sua responsabilidade principal.

    Em um programa bem desenvolvido cada classe é responsável por apenas uma coisa. Quando uma classe lida com múltiplos tipos de produto, pode valer a pena extrair seus [métodos fábrica](/the-23paterns/criacionais/FactoryMethod.md) em uma classe fábrica solitária ou uma implementação plena do [Abstract Factory](#abstract-factory).
