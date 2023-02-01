# OOP 🤔

## Basics

| Concept | Definition |
| --- | --- |
| Classes and Objects | Class is a blueprint for creating objects, objects are instances of classes |
| Encapsulation | Hiding the implementation details of a class from the outside world, using private or read/write methods. |
| Abstraction | When methods are rewritten in subclasses. |
| Polymorphism | When they take many forms depending on the class, so we can say depends on abstraction, as well. |

```ruby
class Athlete
  attr_reader: :name, :sport
  attr_writer: :heigth

  def initialize(name, sport, heigth)
    @name = name
    @sport = sport
    @heigth = heigth
  end

  def play
    raise "Must be implemented in subclass"
  end
end

def Footballer < Athlete
  def play
    puts "Im playing #{sport}"
  end
end

def Basketballer < Athlete
  def play
    puts "Im playing #{sport}"
  end
end

footballer = Footballer.new("Messi", "Football", 1.7)
basketballer = Basketballer.new("Lebron", "Basketball", 2.0)

p footballer.play # Im playing football
p basketballer.play # Im playing basketball

p footballer.name # Messi
p basketballer.name # Lebron

basketballer.heigth = 2.1
p basketballer.heigth # 2.1
```

## Design Principles

### About SOLID 🌊
| Concept | Definition |
| --- | --- |
| Single Responsibility Principle | A class should have only one reason to change. |
| Open/Closed Principle | A class should be open for extension but closed for modification. |
| Liskov Substitution Principle | Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program. |
| Interface Segregation Principle | Many client-specific interfaces are better than one general-purpose interface. |
| Dependency Inversion Principle | Depend upon abstractions. Do not depend upon concrete classes. |

### Examples 📘

> (SRP) In the next example the class `User` has one main responsibility, which is to save the user to the database. <br>
> (OCP) We can extend the class `User` to create a new class `Admin` and override the method `save` to save the admin to the database. <br>
> (ISP) We are adding the interface send_email only to admins and not to users. This is because the users don't need to send emails. <br>

```ruby
module EmailSender
  def send_email
    # code to send email
  end
end

class User
  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def save
    # save user to database
  end
end

class Admin < User
  include EmailSender

  def initialize(name, email, password)
    super(name, email, password)
  end

  def save
    super
    # save admin to database
  end
end
```

>(LSP) In the next example we have a Penguin and Bird class, the Penguin class inherits from the Bird class. The Penguin class is a subtype of the Bird class. The Penguin class can be replaced with the Bird class without altering the correctness of the program.

```ruby
class Bird
  def fly
    puts "I am flying!"
  end
end

class Penguin < Bird
  def fly
    puts "Sorry, I cannot fly. I am a penguin."
  end
end

def test_bird_flight(bird)
  bird.fly
end

bird = Bird.new
penguin = Penguin.new

test_bird_flight(bird) # Output: "I am flying!"
test_bird_flight(penguin) # Output: "Sorry, I cannot fly. I am a penguin."
```
