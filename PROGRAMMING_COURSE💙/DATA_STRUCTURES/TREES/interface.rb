require_relative 'ruby_binary_tree'

def prompt(message)
  puts message
  gets.chomp
end

def get_node(tree, message = "Enter the data for the node: ")
  data = prompt(message)
  tree.root = BTree::Node.new(nil, data) if tree.root.nil?
  return tree.root if tree.root.data == data

  queue = [tree.root]
  until queue.empty?
    current = queue.shift
    return current if current.data == data

    queue << current.left if current.left
    queue << current.right if current.right
  end
  puts "No node with data #{data} found"
  nil
end

def main
  tree = BTree.new(nil)

  while true
    puts "1. Insert a left child"
    puts "2. Insert a right child"
    puts "3. Remove a left subtree"
    puts "4. Remove a right subtree"
    puts "5. Merge two subtrees"
    puts "6. Print the tree"
    puts "7. Exit"

    choice = prompt("Enter your choice: ")

    case choice
    when "1"
      node = get_node(tree, "Enter the data for the parent node: ")
      tree.insert_left(node, prompt("Enter the data for the new node: "))
    when "2"
      node = get_node(tree, "Enter the data for the parent node: ")
      tree.insert_right(node, prompt("Enter the data for the new node: "))
    when "3"
      node = get_node(tree, "Enter the data for the parent node: ")
      tree.remove_left(node)
    when "4"
      node = get_node(tree, "Enter the data for the parent node: ")
      tree.remove_right(node)
    when "5"
      left_tree = BTree.new(get_node(tree, "Enter the data for the root of the left tree: "))
      right_tree = BTree.new(get_node(tree, "Enter the data for the root of the right tree: "))
      data = prompt("Enter the data for the new root: ")
      tree = BTree.merge(left_tree, right_tree, data)
    when "6"
      tree.print
    when "7"
      exit
    else
      puts "Invalid choice"
    end
  end
end

main
