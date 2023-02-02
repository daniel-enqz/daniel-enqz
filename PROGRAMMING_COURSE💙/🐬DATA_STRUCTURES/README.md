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
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end
  
  def add_node(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end
  
   def delete_node(data)
     current_node = @head
     if current_node.data == data
        @head = current_node.next_node
     else
        while current_node.next_node
          if current_node.next_node.data == data
            current_node.next_node == current_node.next_node.next_node
            break
          end
          current_node = current_node.next_node
        end
      end
   end
   
   def find_node(data)
      current_node = @head
      while current_node
          return current_node if current_node.data = data

          current_node = current_node.next_node
      end
   end
   
   def traverse
      current_node = @head
      while current_node
         yield current_node.data

         current_node = current_node.next_node
       end
   end
   
   
   linked_list = LinkedList.new
   linked_list.add_node(1)
   linked_list.add_node(2)
   linked_list.add_node(3)
   linked_list.add_node(7)
    
   linked_list.find_node(2)
   linked_list.delete_node(3)
   
   linked_list.traverse { |node| puts node}
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




























