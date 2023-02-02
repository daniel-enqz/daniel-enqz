# 🐬 What are Data Strcutures?
>A way of analyzing our data in our application. CRUD principles will come into place.

### Directory
- [ARRAYS](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)
- [LINKED_LISTS](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

# Essentials

## [Arrays](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)
  - Definition: Ordered collections of objects
  - Common Operations: adding elements, accessing elements, deleting elements, finding the size of an array

Example Code: 
  ```ruby
  # Creating an array
  array = [1, 2, 3, 4, 5]

  # Adding an element to the end of the array
  array << 6

  # Accessing an element by index
  array[2] # => 3

  # Deleting an element by index
  array.delete_at(3)

  # Finding the size of an array
  array.size # => 5
  ```

## [Linked Lists](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

  - Definition: A linear data structure that consists of nodes that store data and a reference to the next node in the list.
  - Types of linked lists: singly linked list, doubly linked list, and circular linked list.
  - Common Operations: insert, delete, find, and traverse elements.

Example Code:

```ruby
require "pry-byebug"

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value     = value
    @next_node = nil
  end

  def to_s
    "Node: #{@value}"
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @heaed = nil
  end

  def find_tail
    node = @head

    return node if theres_not_right?(node)

    until theres_not_right?(node)
      node = node.next_node
    end

    node
  end

  def append(value)
    if @head
      find_tail.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
  end


  def append_after(target, value)
    node                     = find(target)

    return unless node

    old_next                 = node.next_node
    node.next_node           = Node.new(value)
    node.next_node.next_node = old_next
  end

  def find(value)
    node = @head

    return false if theres_not_right?(node)
    return node if node.value == value

    until theres_not_right?(node)
      return node if node.value == value
      node = node.next_node
    end
  end

  def delete(value)
    if @head.value == value
      @head = head.next_node
      return
    end

    node           = find_before(value)
    node.next_node = node.next_node.next_node
  end

  def find_before(value)
    node = @head

    return false if theres_not_right?(node)
    return node  if node.next_node.value == value

    while (node = node.next)
      return node if node.next && node.next.value == value
    end
  end

  def print
    node = @head

    until theres_not_right?(node)
      puts node.to_s
      node = node.next_node
    end
  end


  private

  def theres_not_right?(node)
    !node.next_node
  end
end


```



## [Stacks](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

  - Definition: A stack is a data structure that follows the Last-In-First-Out (LIFO) principle, meaning the last element to be inserted is the first to be removed.
  - Types of linked lists: push, pop, peek, and check if the stack is empty.
  - Common Operations: Implementing undo/redo functionality, solving expressions using postfix and prefix notations, and checking for balanced parentheses in an expression.

Example Code:

```ruby
arr = [1,2,3,[4,5],6]
flat = []

until arr.empty?
  element = arr.pop

  if element.is_a? Array
    element.each { |i| arr << element }
    
  else
    flat << element
  end
 end

p flat
# [6, 5, 4, 3, 2, 1]
```


## [Queues](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

  - Definition: A queue is a data structure that follows the First-In-First-Out (FIFO) principle, meaning the first element to be inserted is the first to be removed.
  - Operations: enqueue, dequeue, peek, and check if the queue is empty.
  - Applications: Implementing a printer queue, scheduling algorithms, and Breadth First Search (BFS) algorithm in Graphs.

Example Code:

```ruby
arr = []
arr.unishift(2)
arr.unshift(5)

arr.pop # => 2

# Using Queue or SizedQueue
que = SizedQueue.new(5)

que.push(:cheese)
que.push(:eggs)

que.pop # => :cheese

# You can pass a true value to raise an exception in ase the queue is empty
que.pop(true)
```


## [TREES](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

  - Definition: A tree is a non linear data structure that consists of nodes and edges connecting them.
  - Types of trees: binary trees, binary search trees, AVL trees, and Heaps.
  - Operations: insert, delete, search, and traverse elements.
  - Applications: Implementing file systems, solving mathematical expressions, and searching for elements in a data set.
Example Code:

```ruby
class Node
  attr_accessor :value, left, right
  def initialize(value, left = nil, right = nil)
    @value      = value
    @left_node  = left_node
    @right_node = right_node
  end
end

node = Node.new(1)
node.left = Node.new(2)
node.right = Node.new(3)
```

## [HASH TABLES](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

  - Definition: A hash table is a data structure that stores elements in an array-based structure, but with an index generated using a hash function.
  - Operations: insert, search, delete, and update elements.
  - Applications: Implementing dictionaries and symbol tables, caching, and implementing a spell checker.
Example Code:

```ruby
# Creating a hash table
hash_table = Hash.new
hash_table["first_name"] = "John"
hash_table["last_name"] = "Doe"
hash_table["age"] = 30

# Accessing values from the hash table
puts hash_table["first_name"] # Output: John
puts hash_table["last_name"] # Output: Doe
puts hash_table["age"] # Output: 30

# Updating values in the hash table
hash_table["age"] = 31
puts hash_table["age"] # Output: 31

# Checking if a key exists in the hash table
puts hash_table.key?("first_name") # Output: true
puts hash_table.key?("middle_name") # Output: false
```

## [GRAPHS](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

  - Definition: A graph is a non-linear data structure that consists of nodes (vertices) and edges connecting them.
  - Types of Graphs: Directed and undirected graphs, weighted and unweighted graphs, and connected and disconnected graphs.
  - Operations: add vertex, add edge, remove vertex, remove edge, and traverse the graph.
  - Applications: Representing social networks, finding the shortest path in a city map, and solving puzzles and games.
Example Code:

This creates a graph with three nodes and three edges. Node 1 is connected to node 2, node 2 is connected to node 3, and node 3 is connected to node 1.

```ruby
class Node
  attr_accessor :value, neighboors
  def initialize(value)
    @value      = value
    @neighboors = []
  end
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)

node1.neighbors << node2
node2.neighbors << node3
node3.neighbors << node1
```

## [SETS](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/TREES)

  - Definition: A set is an unordered collection of unique elements.
  - Operations: insert, delete, search, union, intersection, and difference.
  - Applications: Removing duplicates from a data set, solving mathematical problems like finding the number of unique elements in a data set.

Example Code:

```ruby
# Creating a set
set = Set.new([1, 2, 3, 4, 5])

# Adding elements to the set
set.add(6)

# Removing elements from the set
set.delete(3)

# Checking the size of the set
puts set.size # Output: 5

# Checking if an element is in the set
puts set.include?(3) # Output: false
puts set.include?(6) # Output: true

# Union and intersection of sets
set2 = Set.new([3, 4, 5, 6, 7])
puts (set | set2).to_a # Output: [1, 2, 4, 5, 6, 7]
puts (set & set2).to_a # Output: [4, 5, 6]
```

