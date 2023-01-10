# Directory with interestin ruby secrets

### What is comparable method?
> Comparable method is a method that can be used to compare two objects.

For example, the Numeric and String classes include this mixin. To check that, we can use the “ancestors” method that lists the classes in the ancestor tree of the current class.

```
irb> Numeric.ancestors
 => [Numeric, Comparable, Object, Kernel, BasicObject]
irb> String.ancestors
 => [String, Comparable, Object, Kernel, BasicObject]
```

``` ruby
# defining class
class Box
  # include comparable module
  include Comparable
  attr :weight

  def initialize(weight)
     @weight = weight
  end

  def <=>(other_box)
     weight <=> other_box.weight
  end
end

# creating objects
box_1 = Box.new(16)
box_2 = Box.new(34)
# using < operator
p box_1 < box_2      # true
# using <= operator
p box_1 <= box_2     # true
# using == operator
p box_1 == box_2     # false
# using >= operator
p box_1 >= box_2     # false
# using > operator
p box_1 > box_2      # false

```
