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
class CustomerDecorator
  
end
```
