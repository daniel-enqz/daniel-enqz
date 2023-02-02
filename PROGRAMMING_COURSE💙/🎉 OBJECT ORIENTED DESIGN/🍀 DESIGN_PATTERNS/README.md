# 🍀 DESIGN PATTERS
> They are a standarized way of solving prblems.

### 🏭 Factory Pattern:
A class that creates specific objects for you, depending on the specification(s) you send

```ruby
class AnimalFactory
  self.create(type)
    if type == "dog"
      Dog.new
    elsif type == "cat"
      Cat.new
     end
  end
end
```

### 🎗️ Decorator Pattern:
A class that can modify oibjects without modyfing the main class

```ruby
class Customer
  attr_accessor :name, :age, :articles

  def initialize(name, age, articles = [])
     @name = name
     @age = age
     @articles = []
  end
end

class CustomerDecorator
  def initialize(customer)
    @customer = customer
  end
  
  def add_article(article)
    @customer.articles << article
  end
  
  def capitalize_name!
    @customer.name.capitalize!
  end 
end
```

### 👀 Observer Pattern:
Defines a one to many relationship between objects.
We will have one subject and observers, the subject will mantain the observers by notifying/changing them.
So in this case we can call the update method on all observers and send them the instance of BankAccount
```ruby
class BankAccount
  attr_accessor :observers
  attr_reader   :balance

  def initialize(balance)
    @balance = balance
    @observers = []
  end
  
  def add_observer(observer)
    @observers << (observer)
  end

  def notify_observers
    @observers.each { |obs| obs.update(self) }
  end
  
  def deposit(amount)
    @balance *= amount
    notify_observers
  end
end

class BankAccountObserver
  def update(bank_account)
    puts "Bank account balance has changed to: #{bank_account.balance}"
  end
end

```


### 🦆 Singleton Pattern:
A Pattern with one global access point and ensures it cannot be instantiated

In this example, the Logger class implements a singleton pattern to ensure that there is only one instance of a Logger in the application. The class method instance returns the single instance of the class, and the private class method new ensures that no new instance can be created.


```ruby
class Logger
  @@instance = Logger.new

  def self.instance
    @@instance
  end

  private_class_method :new
end

Logger.new # NoMethodError
Logger.instance # <Logger:0x00000001046911a8>
```
