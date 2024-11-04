# Builder

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

## O que é

O **Builder** é um padrão de projeto criacional que permite a você **construir objetos complexos passo a passo**. O padrão permite que você produza diferentes tipos e representações de um objeto usando o mesmo código de construção.

Evita que o Método de construção seja gigante

Vai disso:

![alt text](/the-23paterns/imagesmd/BR1.png)

Para isso:

![alt text](/the-23paterns/imagesmd/BR2.png)

Ele reforça o **Princípio de responsabilidade única**. Você pode isolar um código de construção complexo da lógica de negócio do produto.

## Estrutura

![alt text](/the-23paterns/imagesmd/BR3.png)

1. A **interface Builder** declara etapas de construção do produto que são comuns a todos os tipos de builders.

1. **Builders Concretos** provém diferentes implementações das etapas de construção. **Builders concretos** podem produzir produtos que não seguem a interface comum.

1. **Produtos** são os objetos resultantes. **Produtos** construídos por diferentes builders não precisam pertencer a mesma interface ou hierarquia da classe.

1. A **classe Diretor** define a ordem na qual as etapas de construção são chamadas, então você pode criar e reutilizar **configurações específicas de produtos**.

1. O **Cliente** deve associar um dos objetos builders com o diretor. Usualmente isso é feito apenas uma vez, através de parâmetros do construtor do diretor. O diretor então usa aquele objeto builder para todas as futuras construções. Contudo, há uma abordagem alternativa para quando o cliente passa o objeto builder ao método de produção do diretor. Nesse caso, você pode usar um builder diferente a cada vez que você produzir alguma coisa com o diretor.

Diferente do prototype que clona os objetos, esse constrói do 0 podendo alterar configurações por mais que reutilize configurações específicas de produtos

![alt text](/the-23paterns/imagesmd/BR4.png)

## Como implementar

1. Certifique-se que você pode definir claramente as etapas comuns de construção para construir todas as representações do produto disponíveis. Do contrário, você não será capaz de implementar o padrão.

1. Declare essas etapas na interface builder base.

1. Crie uma classe builder concreta para cada representação do produto e implemente suas etapas de construção.

    Não se esqueça de implementar um método para recuperar os resultados da construção. O motivo pelo qual esse método não pode ser declarado dentro da interface do builder é porque vários builders podem construir produtos que não tem uma interface comum. Portanto, você não sabe qual será o tipo de retorno para tal método. Contudo, se você está lidando com produtos de uma única hierarquia, o método de obtenção pode ser adicionado com segurança para a interface base.

1. Pense em criar uma classe diretor. Ela pode encapsular várias maneiras de construir um produto usando o mesmo objeto builder.

1. O código cliente cria tanto os objetos do builder como do diretor. Antes da construção começar, o cliente deve passar um objeto builder para o diretor. Geralmente o cliente faz isso apenas uma vez, através de parâmetros do construtor do diretor. O diretor usa o objeto builder em todas as construções futuras. Existe uma alternativa onde o builder é passado diretamente ao método de construção do diretor.

1. O resultado da construção pode ser obtido diretamente do diretor apenas se todos os produtos seguirem a mesma interface. Do contrário o cliente deve obter o resultado do builder.

## Na prática

Vamos criar uma interface builder comum

```java
package suaPastaBonita.builders;

import suaPastaBonita.cars.CarType;
import suaPastaBonita.components.Engine;
import suaPastaBonita.components.GPSNavigator;
import suaPastaBonita.components.Transmission;
import suaPastaBonita.components.TripComputer;

public interface Builder {
    void setCarType(CarType type);
    void setSeats(int seats);
    void setEngine(Engine engine);
    void setTransmission(Transmission transmission);
    void setTripComputer(TripComputer tripComputer);
    void setGPSNavigator(GPSNavigator gpsNavigator);
}
```

Vamos fazer agora o builder do carro

```java
package suaPastaBonita.builders;

import suaPastaBonita.cars.Car;
import suaPastaBonita.cars.CarType;
import suaPastaBonita.components.Engine;
import suaPastaBonita.components.GPSNavigator;
import suaPastaBonita.components.Transmission;
import suaPastaBonita.components.TripComputer;

public class CarBuilder implements Builder {
    private CarType type;
    private int seats;
    private Engine engine;
    private Transmission transmission;
    private TripComputer tripComputer;
    private GPSNavigator gpsNavigator;

    public void setCarType(CarType type) {
        this.type = type;
    }

    @Override
    public void setSeats(int seats) {
        this.seats = seats;
    }

    @Override
    public void setEngine(Engine engine) {
        this.engine = engine;
    }

    @Override
    public void setTransmission(Transmission transmission) {
        this.transmission = transmission;
    }

    @Override
    public void setTripComputer(TripComputer tripComputer) {
        this.tripComputer = tripComputer;
    }

    @Override
    public void setGPSNavigator(GPSNavigator gpsNavigator) {
        this.gpsNavigator = gpsNavigator;
    }

    public Car getResult() {
        return new Car(type, seats, engine, transmission, tripComputer, gpsNavigator);
    }
}
```

Vamos fazer o builder do manual do carro

```java
package suaPastaBonita.builders;

import suaPastaBonita.cars.Manual;
import suaPastaBonita.cars.CarType;
import suaPastaBonita.components.Engine;
import suaPastaBonita.components.GPSNavigator;
import suaPastaBonita.components.Transmission;
import suaPastaBonita.components.TripComputer;


public class CarManualBuilder implements Builder{
    private CarType type;
    private int seats;
    private Engine engine;
    private Transmission transmission;
    private TripComputer tripComputer;
    private GPSNavigator gpsNavigator;

    @Override
    public void setCarType(CarType type) {
        this.type = type;
    }

    @Override
    public void setSeats(int seats) {
        this.seats = seats;
    }

    @Override
    public void setEngine(Engine engine) {
        this.engine = engine;
    }

    @Override
    public void setTransmission(Transmission transmission) {
        this.transmission = transmission;
    }

    @Override
    public void setTripComputer(TripComputer tripComputer) {
        this.tripComputer = tripComputer;
    }

    @Override
    public void setGPSNavigator(GPSNavigator gpsNavigator) {
        this.gpsNavigator = gpsNavigator;
    }

    public Manual getResult() {
        return new Manual(type, seats, engine, transmission, tripComputer, gpsNavigator);
    }
}
```

Agora vamos criar o produto carro

```java
package suaPastaBonita.cars;

import suaPastaBonita.components.Engine;
import suaPastaBonita.components.GPSNavigator;
import suaPastaBonita.components.Transmission;
import suaPastaBonita.components.TripComputer;

public class Car {
    private final CarType carType;
    private final int seats;
    private final Engine engine;
    private final Transmission transmission;
    private final TripComputer tripComputer;
    private final GPSNavigator gpsNavigator;
    private double fuel = 0;

    public Car(CarType carType, int seats, Engine engine, Transmission transmission,
               TripComputer tripComputer, GPSNavigator gpsNavigator) {
        this.carType = carType;
        this.seats = seats;
        this.engine = engine;
        this.transmission = transmission;
        this.tripComputer = tripComputer;
        if (this.tripComputer != null) {
            this.tripComputer.setCar(this);
        }
        this.gpsNavigator = gpsNavigator;
    }

    public CarType getCarType() {
        return carType;
    }

    public double getFuel() {
        return fuel;
    }

    public void setFuel(double fuel) {
        this.fuel = fuel;
    }

    public int getSeats() {
        return seats;
    }

    public Engine getEngine() {
        return engine;
    }

    public Transmission getTransmission() {
        return transmission;
    }

    public TripComputer getTripComputer() {
        return tripComputer;
    }

    public GPSNavigator getGpsNavigator() {
        return gpsNavigator;
    }
}
```

Agora vamos fazer o produto manual

```java
package suaPastaBonita.cars;

import suaPastaBonita.components.Engine;
import suaPastaBonita.components.GPSNavigator;
import suaPastaBonita.components.Transmission;
import suaPastaBonita.components.TripComputer;

public class Manual {
    private final CarType carType;
    private final int seats;
    private final Engine engine;
    private final Transmission transmission;
    private final TripComputer tripComputer;
    private final GPSNavigator gpsNavigator;

    public Manual(CarType carType, int seats, Engine engine, Transmission transmission,
                  TripComputer tripComputer, GPSNavigator gpsNavigator) {
        this.carType = carType;
        this.seats = seats;
        this.engine = engine;
        this.transmission = transmission;
        this.tripComputer = tripComputer;
        this.gpsNavigator = gpsNavigator;
    }

    public String print() {
        String info = "";
        info += "Type of car: " + carType + "\n";
        info += "Count of seats: " + seats + "\n";
        info += "Engine: volume - " + engine.getVolume() + "; mileage - " + engine.getMileage() + "\n";
        info += "Transmission: " + transmission + "\n";
        if (this.tripComputer != null) {
            info += "Trip Computer: Functional" + "\n";
        } else {
            info += "Trip Computer: N/A" + "\n";
        }
        if (this.gpsNavigator != null) {
            info += "GPS Navigator: Functional" + "\n";
        } else {
            info += "GPS Navigator: N/A" + "\n";
        }
        return info;
    }
}

```

Vamos criar um ENUM para legibilidade

```java
package suaPastaBonita.cars;

public enum CarType {
    CITY_CAR, SPORTS_CAR, SUV
}

```

Funcionalidade 1 do produto

```java
package suaPastaBonita.components;

public class Engine {
    private final double volume;
    private double mileage;
    private boolean started;

    public Engine(double volume, double mileage) {
        this.volume = volume;
        this.mileage = mileage;
    }

    public void on() {
        started = true;
    }

    public void off() {
        started = false;
    }

    public boolean isStarted() {
        return started;
    }

    public void go(double mileage) {
        if (started) {
            this.mileage += mileage;
        } else {
            System.err.println("Cannot go(), you must start engine first!");
        }
    }

    public double getVolume() {
        return volume;
    }

    public double getMileage() {
        return mileage;
    }
}
```

Funcionalidade 2 do produto

```java
package suaPastaBonita.components;

/**
 * Just another feature of a car.
 */
public class GPSNavigator {
    private String route;

    public GPSNavigator() {
        this.route = "221b, Baker Street, London  to Scotland Yard, 8-10 Broadway, London";
    }

    public GPSNavigator(String manualRoute) {
        this.route = manualRoute;
    }

    public String getRoute() {
        return route;
    }
}

```

Funcionalidade 3 do produto

```java
package suaPastaBonita.components;

public enum Transmission {
    SINGLE_SPEED, MANUAL, AUTOMATIC, SEMI_AUTOMATIC
}

```

Funcionalidade 4 do produto

```java
package suaPastaBonita.components;

import suaPastaBonita.cars.Car;

public class TripComputer {

    private Car car;

    public void setCar(Car car) {
        this.car = car;
    }

    public void showFuelLevel() {
        System.out.println("Fuel level: " + car.getFuel());
    }

    public void showStatus() {
        if (this.car.getEngine().isStarted()) {
            System.out.println("Car is started");
        } else {
            System.out.println("Car isn't started");
        }
    }
}
```

Vamos criar um Diretor para controlar os builders

```java
package suaPastaBonita.director;

import suaPastaBonita.builders.Builder;
import suaPastaBonita.cars.CarType;
import suaPastaBonita.components.Engine;
import suaPastaBonita.components.GPSNavigator;
import suaPastaBonita.components.Transmission;
import suaPastaBonita.components.TripComputer;

public class Director {

    public void constructSportsCar(Builder builder) {
        builder.setCarType(CarType.SPORTS_CAR);
        builder.setSeats(2);
        builder.setEngine(new Engine(3.0, 0));
        builder.setTransmission(Transmission.SEMI_AUTOMATIC);
        builder.setTripComputer(new TripComputer());
        builder.setGPSNavigator(new GPSNavigator());
    }

    public void constructCityCar(Builder builder) {
        builder.setCarType(CarType.CITY_CAR);
        builder.setSeats(2);
        builder.setEngine(new Engine(1.2, 0));
        builder.setTransmission(Transmission.AUTOMATIC);
        builder.setTripComputer(new TripComputer());
        builder.setGPSNavigator(new GPSNavigator());
    }

    public void constructSUV(Builder builder) {
        builder.setCarType(CarType.SUV);
        builder.setSeats(4);
        builder.setEngine(new Engine(2.5, 0));
        builder.setTransmission(Transmission.MANUAL);
        builder.setGPSNavigator(new GPSNavigator());
    }
}
```

Vamos criar um código cliente

```java
package suaPastaBonita;

import suaPastaBonita.builders.CarBuilder;
import suaPastaBonita.builders.CarManualBuilder;
import suaPastaBonita.cars.Car;
import suaPastaBonita.cars.Manual;
import suaPastaBonita.director.Director;

public class Demo {

    public static void main(String[] args) {
        Director director = new Director();

        // Director gets the concrete builder object from the client
        // (application code). That's because application knows better which
        // builder to use to get a specific product.
        CarBuilder builder = new CarBuilder();
        director.constructSportsCar(builder);

        // The final product is often retrieved from a builder object, since
        // Director is not aware and not dependent on concrete builders and
        // products.
        Car car = builder.getResult();
        System.out.println("Car built:\n" + car.getCarType());


        CarManualBuilder manualBuilder = new CarManualBuilder();

        // Director may know several building recipes.
        director.constructSportsCar(manualBuilder);
        Manual carManual = manualBuilder.getResult();
        System.out.println("\nCar manual built:\n" + carManual.print());
    }

}
```

## Quando usar

Use o padrão Builder para se livrar de um “construtor telescópico”.

Use o padrão Builder quando você quer que seu código seja capaz de criar diferentes representações do mesmo produto (por exemplo, casas de pedra e madeira).

Use o Builder para construir árvores Composite ou outros objetos complexos.
