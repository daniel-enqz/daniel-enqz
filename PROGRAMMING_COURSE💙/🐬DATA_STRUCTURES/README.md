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
class Node
  attr_accessor :next
  attr_reader   :value
  
  def initialize(value)
    @value = value
    @next  = nil
  end
  
  def to_s
    "Node with value: #{@value}"
  end
end

class LinkedList

  def initialize
    @head = nil
  end
  
  def append(value)
    if @head
      find_tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end
  
  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end
  
  def append_after(target, value)
    node           = find(target)
    return unless node
    old_next       = node.next
    node.next      = Node.new(value)
    node.next.next = old_next
  end
  
  def find(value)
    node = @head
    return false if !node.next
    return node  if node.value == value
    while (node = node.next)
      return node if node.value == value
    end
  end
  
  def delete(value)
    if @head.value == value
      @head = @head.next
      return
    end
    node      = find_before(value)
    node.next = node.next.next
  end
  
  def find_before(value)
    node = @head
    return false if !node.next
    return node  if node.next.value == value
    while (node = node.next)
      return node if node.next && node.next.value == value
    end
  end
  
  def print
    node = @head
    puts node
    while (node = node.next)
      puts node
    end
  end

  list = LinkedList.new
  list.append(10)
  list.append(20)
  list.append(30)
  list.append_after(10, 15)
  list.append_after(20, 25)
  list.print
end
```




























