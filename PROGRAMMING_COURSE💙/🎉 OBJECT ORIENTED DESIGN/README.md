# OOP 🤔

# Basics
Classes and Objects;
- Class is a bluprint for creating objects, objetcs are instances of classes
Encapsulation:
- Hiding the implementation details of a class from the outside world, using private or read/write methods.
Abstraction:
- When methods are rewritten in subclasses.
Polymorphism:
- When they take many forms depending on the class, so we can say depends on abstraction, as well.


```ruby
# Class
class Athlete
  attr_accessor :sport, :name

  def initialize(sport, name)
    @sport = sport
    @name = name
  end
end

# Object
athlete = Athlete.new("Football", "Messi")
```

Inheritance:
- We can have a parent class and child class, the child class can inherit the methods and attributes of the parent class

```ruby
class Athlete
  attr_accessor :sport, :name

  def initialize(sport, name)
    @sport = sport
    @name = name
  end

  def play
    puts "I'm playing #{sport}"
  end
end


class Footballer < Athlete
  def initialize(name)
    super("Football", name) # super is initializing the parent class
  end

  def self.who_am_i
    puts "I'm a footballer"
  end
end

footballer = Footballer.new("Messi")
footballer.play # I'm playing football
footballer.who_am_i # I'm an athlete
```

Abstraction and Polymporphism:
- We can have a class that can't be instantiated, it can only be inherited

```ruby
class Animal
  def self.who_am_i
    puts "rewritten in subclass"
  end
end

class Dog < Animal
  def self.who_am_i
    puts "I'm a dog"
  end
end

class Cat < Animal
  def self.who_am_i
    puts "I'm a cat"
  end
end


# In this case the method who_am_i is being rewritten in the subclasses and taking many forms depending on the class
```
