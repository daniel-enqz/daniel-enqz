# OOP 🤔

# Basics

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

```
