# Factory Method

Também conhecido como: **Método fábrica**, **Construtor virtual**

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

# O que é

Fornece uma interface para criar objetos em uma *superclasse*, mas permite que as *subclasses* alterem o tipo de objetos que serão criados.

Então se tem uma *superclasse* (geral) e diversas *subclasses* (específicas) que compartilham os mesmos atributos e métodos, mas cada um com seu estado e implementação.

O código por fora não precisa saber que existem as *subclasses*, visto que só irá usar uma implementação em um determinado escopo. Logo a *superclasse* é configurada uma vez para agir como se fosse a *subclasse* (polimorfismo)

Desacopla grande parte do código que está em uma *subclasse* para uma *superclasse* que é mais geral 

Generaliza e torna o código modular, retirando a necessidade de várias condicionais: se você quer fazer uma entrega, apenas de o produto para uma aplicação de logistica


## Estrutura

![alt text](/the-23paterns/imagesmd/FM3.png)

1. O **Produto** declara a interface, que é comum a todos os objetos que podem ser produzidos pelo **criador** e suas subclasses.

2. **Produtos Concretos** são implementações diferentes da *interface* do **produto**.

3. A classe **Criador** declara o *método fábrica* que retorna novos objetos **produto**. É importante que o tipo de retorno desse método corresponda à interface do **produto**.

    Você pode declarar o *método fábrica* como *abstrato* para forçar todas as subclasses a implementar suas próprias versões do método. Como alternativa, o *método fábrica* base pode retornar algum tipo de **produto** padrão.

    Observe que, apesar do nome, a criação de produtos não é a principal responsabilidade do **criador**. Normalmente, a classe criadora já possui alguma lógica de negócio relacionada aos produtos. O *método fábrica* ajuda a dissociar essa lógica das classes concretas de produtos. Aqui está uma analogia: 
    
    Uma grande empresa de desenvolvimento de software pode ter um departamento de treinamento para programadores. No entanto, a principal função da empresa como um todo ainda é escrever código, não produzir programadores.

4. **Criadores Concretos** sobrescrevem o *método fábrica* base para retornar um tipo diferente de **produto**.

    Observe que o *método fábrica* não precisa criar novas instâncias o tempo todo. Ele também pode retornar objetos existentes de um cache, um conjunto de objetos, ou outra fonte.

## Como implementar?

O padrão Factory Method sugere que você substitua chamadas diretas de construção de objetos (usando o operador new) por chamadas para um método fábrica especial. Não se preocupe: os objetos ainda são criados através do operador new, mas esse está sendo chamado de dentro do método fábrica. Objetos retornados por um método fábrica geralmente são chamados de produtos.

![alt text](/the-23paterns/imagesmd/FM1.png)

Agora você pode sobrescrever o método fábrica em uma subclasse e alterar a classe de produtos que estão sendo criados pelo método.

![alt text](/the-23paterns/imagesmd/FM2.png)

Por exemplo, ambas as classes **Caminhão** e **Navio** devem implementar a interface Transporte, que declara um método chamado **entregar**. Cada classe implementa esse método de maneira diferente: caminhões entregam carga por terra, navios entregam carga por mar. O método fábrica na classe **LogísticaViária** retorna objetos de caminhão, enquanto o método fábrica na classe **LogísticaMarítima** retorna navios.

## Na prática

1. Faça todos os produtos implementarem a mesma interface. Essa interface deve declarar métodos que fazem sentido em todos os produtos.

1. Adicione um método fábrica vazio dentro da classe criadora. O tipo de retorno do método deve corresponder à interface comum do produto.

1. No código da classe criadora, encontre todas as referências aos construtores de produtos. Um por um, substitua-os por chamadas ao método fábrica, enquanto extrai o código de criação do produto para o método fábrica.

1. Pode ser necessário adicionar um parâmetro temporário ao método fábrica para controlar o tipo de produto retornado.

1. Neste ponto, o código do método fábrica pode parecer bastante feio. Pode ter um grande operador switch que escolhe qual classe de produto instanciar. Mas não se preocupe, resolveremos isso em breve.

1. Agora, crie um conjunto de subclasses criadoras para cada tipo de produto listado no método fábrica. Sobrescreva o método fábrica nas subclasses e extraia os pedaços apropriados do código de construção do método base.

1. Se houver muitos tipos de produtos e não fizer sentido criar subclasses para todos eles, você poderá reutilizar o parâmetro de controle da classe base nas subclasses.

1. Por exemplo, imagine que você tenha a seguinte hierarquia de classes: a classe base Correio com algumas subclasses: CorreioAéreo e CorreioTerrestre; as classes Transporte são Avião, Caminhão e Trem. Enquanto a classe CorreioAéreo usa apenas objetos Avião, o CorreioTerrestre pode funcionar com os objetos Caminhão e Trem. Você pode criar uma nova subclasse (por exemplo, CorreioFerroviário) para lidar com os dois casos, mas há outra opção. O código do cliente pode passar um argumento para o método fábrica da classe CorreioTerrestre para controlar qual produto ele deseja receber.

1. Se, após todas as extrações, o método fábrica base ficar vazio, você poderá torná-lo abstrato. Se sobrar algo, você pode tornar isso em um comportamento padrão do método.



Um exemplo em java:

![alt text](/the-23paterns/imagesmd/FM4.png)

Interface para todos os botões:

```java
public interface Button {
    void render();
    void onClick();
}
```
Produto concreto 1 (implementando interface button)

```java
public class HtmlButton implements Button {

    public void render() {
        System.out.println("<button>Test Button</button>");
        onClick();
    }

    public void onClick() {
        System.out.println("Click! Button says - 'Hello World!'");
    }
}
```

Produto concreto 2 (implementando interface button)


```java
import javax.swing.*;
import java.awt.*;

public class WindowsButton implements Button {
    JPanel panel = new JPanel();
    JFrame frame = new JFrame();
    JButton button;

    public void render() {
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        JLabel label = new JLabel("Hello World!");
        label.setOpaque(true);
        label.setBackground(new Color(235, 233, 126));
        label.setFont(new Font("Dialog", Font.BOLD, 44));
        label.setHorizontalAlignment(SwingConstants.CENTER);
        panel.setLayout(new FlowLayout(FlowLayout.CENTER));
        frame.getContentPane().add(panel);
        panel.add(label);
        onClick();
        panel.add(button);

        frame.setSize(320, 200);
        frame.setVisible(true);
        onClick();
    }

    public void onClick() {
        button = new JButton("Exit");
        button.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                frame.setVisible(false);
                System.exit(0);
            }
        });
    }
}
```
Vamos contruir a fábrica agora, começando pelo criador base

```java
import blablaba.Button;

public abstract class Dialog {

    public void renderWindow() {
        Button okButton = createButton();
        okButton.render();
    }

    public abstract Button createButton();
}
```
Agora vamos fazer o primeiro criador concreto


```java
import blablaba.Button;
import blablaba.HtmlButton;

public class HtmlDialog extends Dialog {

    @Override
    public Button createButton() {
        return new HtmlButton();
    }
}
```
O segundo criador concreto

```java
import blablaba.Button;
import blablaba.WindowsButton;

public class WindowsDialog extends Dialog {

    @Override
    public Button createButton() {
        return new WindowsButton();
    }
}
```
Código cliente

```java
import blablaba.Dialog;
import blablaba.HtmlDialog;
import blablaba.WindowsDialog;

public class Demo {
    private static Dialog dialog;

    public static void main(String[] args) {
        configure();
        runBusinessLogic();
    }

    /**
     * The concrete factory is usually chosen depending on configuration or
     * environment options.
     */
    static void configure() {
        if (System.getProperty("os.name").equals("Windows 10")) {
            dialog = new WindowsDialog();
        } else {
            dialog = new HtmlDialog();
        }
    }

    static void runBusinessLogic() {
        dialog.renderWindow();
    }
}
```

## Quando usar?

* Use o Factory Method quando não souber de antemão os tipos e dependências exatas dos objetos com os quais seu código deve funcionar.

    O Factory Method separa o código de construção do produto do código que realmente usa o produto. Portanto, é mais fácil estender o código de construção do produto independentemente do restante do código.

    Por exemplo, para adicionar um novo tipo de produto à aplicação, só será necessário criar uma nova subclasse criadora e substituir o método fábrica nela.

* Use o Factory Method quando desejar fornecer aos usuários da sua biblioteca ou framework uma maneira de estender seus componentes internos.

* Use o Factory Method quando deseja economizar recursos do sistema reutilizando objetos existentes em vez de recriá-los sempre.
