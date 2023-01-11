class BTree
attr_accessor :root, :size
class Node
attr_accessor :parent, :data, :left, :right
def initialize parent, data
self.parent = parent
self.data   = data
end
def to_s
puts self.data
puts self.left
puts self.right
end
end
def initialize root
self.root = root
self.size = 1
end
# Inserts a new node at the left child of the specified node. 
def insert_left(node, data)
return unless node
raise "Can't override nodes :(" if node.left
self.size += 1
node.left = Node.new node, data
end
# Inserts a new node at the right child of the specified node. 
def insert_right(node, data)
return unless node
raise "Can't override nodes :(" if node.right
self.size += 1
node.right = Node.new node, data
end
# Removes the subtree rooted at the left child of the specified node.
def remove_left(node)
if node&.left
remove_left(node.left)
remove_right(node.left)
node.left = nil
self.size -= 1
end
end
# Removes the subtree rooted at the right child of the specified node.
def remove_right(node)
if node&.right
remove_left node.right
remove_right node.right
node.right = nil
self.size -= 1
end
end
# Produces a new tree by merging the left and right trees.
def self.merge left_tree, right_tree, data = nil
raise "Can't merge nil trees." unless left_tree && right_tree
root           = Node.new(nil, data);
res            = BTree.new root
res.root.left  = left_tree.root
res.root.right = right_tree.root
res.size       = left_tree.size + right_tree.size
res
end
# Print the contents of the tree.
def print
print_rec self.root
end
def to_s
puts self.root
end
private
# Prints nodes recursively
def print_rec node, indent=0
print_node node, indent
print_rec node.left, indent  + 1 if node&.left
print_rec node.right, indent + 1 if node&.right
end
# Prints node's data.
def print_node node, indent
data = node&.data&.to_s || "nil"
puts data.rjust indent * 4, " "
end
end
