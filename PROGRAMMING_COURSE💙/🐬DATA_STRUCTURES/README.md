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
# Creating a node class
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# Creating a linked list class
class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  # Insert a node at the beginning of the linked list
  def insert(value)
    node = Node.new(value, @head)
    @head = node
  end

  # Delete a node with a given value
  def delete(value)
    current = @head
    previous = nil

    while current
      if current.value == value
        previous.next_node = current.next_node
        break
      end
      previous = current
      current = current.next_node
    end
  end

  # Find a node with a given value
  def find(value)
    current = @head

    while current
      return current if current.value == value
      current = current.next_node
    end

    nil
  end

  # Traverse the linked list and return all values
  def traverse
    values = []
    current = @head

    while current
      values << current.value
      current = current.next_node
    end

    values
  end
end
   
   
linked_list = LinkedList.new
linked_list.insert_node(1)
linked_list.insert_node(2)
linked_list.insert_node(3)
linked_list.insert_node(7)

linked_list.find(2)
linked_list.delete(3)

linked_list.traverse { |node| puts node}
```




























