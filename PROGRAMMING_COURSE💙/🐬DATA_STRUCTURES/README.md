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

    while (node = node.next_node)
      return node if node.value == value
    end


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




























