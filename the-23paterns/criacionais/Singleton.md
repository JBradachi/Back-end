# Singleton

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

## O que é

O Singleton é um padrão de projeto criacional que permite a você garantir que uma classe tenha apenas uma instância, enquanto provê um ponto de acesso global para essa instância.

O padrão Singleton **resolve dois problemas** de uma só vez, **violando o princípio de responsabilidade única**:

1. Garantir que uma classe tenha apenas uma única instância (controlar o acesso a algum recurso compartilhado, por exemplo uma base de dados ou um arquivo).

2. Fornece um ponto de acesso global para aquela instância.

Assim como uma variável global, o padrão Singleton permite que você acesse algum objeto de qualquer lugar no programa. Contudo, ele também protege aquela instância de ser sobrescrita por outro código.s

## Estrutura

![alt text](/the-23paterns/imagesmd/SG1.png)

## Como implementar

Fazer o construtor padrão privado, para prevenir que outros objetos usem o operador new com a classe singleton.
 
Criar um método estático de criação que age como um construtor. Esse método chama o construtor privado por debaixo dos panos para criar um objeto e o salva em um campo estático. Todas as chamadas seguintes para esse método retornam o objeto em cache.

Se o seu código tem acesso à classe singleton, então ele será capaz de chamar o método estático da singleton. Então sempre que aquele método é chamado, o mesmo objeto é retornado.

## Na prática

```java
package suaPastaBonita.non_thread_safe;

public final class Singleton {
    private static Singleton instance;
    public String value;

    private Singleton(String value) {
        // The following code emulates slow initialization.
        try {
            Thread.sleep(1000);
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }
        this.value = value;
    }

    public static Singleton getInstance(String value) {
        if (instance == null) {
            instance = new Singleton(value);
        }
        return instance;
    }
}

```



```java
package suaPastaBonita.non_thread_safe;

public class DemoSingleThread {
    public static void main(String[] args) {
        System.out.println("If you see the same value, then singleton was reused (yay!)" + "\n" +
                "If you see different values, then 2 singletons were created (booo!!)" + "\n\n" +
                "RESULT:" + "\n");
        Singleton singleton = Singleton.getInstance("FOO");
        Singleton anotherSingleton = Singleton.getInstance("BAR");
        System.out.println(singleton.value);
        System.out.println(anotherSingleton.value);
    }
}
```


## Quando usar

Utilize o padrão Singleton quando uma classe em seu programa deve ter apenas uma instância disponível para todos seus clientes; por exemplo, um objeto de base de dados único compartilhado por diferentes partes do programa.

Utilize o padrão Singleton quando você precisa de um controle mais estrito sobre as variáveis globais.
