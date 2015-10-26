# Node - element of data + connection to
# other data.

# Nil link means end of list.
# 1 Dimensional Linked Link [Data|Link] -> [Data|Link]

# Ruby Array is an implementation of a linked list

# Binary Search - For any given node on a binary tree, all
# elements to the left are less than and all elements to the
# right are greater than.

# If the data set is already ordered, BST will not be
# faster than a linked list. So just shuffle before
# implementing.

class Node
  attr_reader :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end

end

class BinarySearchTree

  attr_reader :root_node

  def initialize(root_node = nil)
    @root_node = root_node
  end

  def push(number)
    if root_node.nil?
      root_node = Node.new(number)
    end
  end

end
# Node - element of data + connection to
# other data.

# Nil link means end of list.
# 1 Dimensional Linked Link [Data|Link] -> [Data|Link]

# Ruby Array is an implementation of a linked list

# Binary Search - For any given node on a binary tree, all
# elements to the left are less than and all elements to the
# right are greater than.

# If the data set is already ordered, BST will not be
# faster than a linked list. So just shuffle before
# implementing.

class Node

  attr_accessor :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end

  def insert(value)
    if data >= value
      insert_left(value)
    elsif data < value
      insert_right(value)
    end
  end

  def insert_left(value)
    if left
      left.insert(value)
    else
      self.left = Node.new(value)
    end
  end

  def insert_right(value)
    if right
      right.insert(value)
    else
      self.right = Node.new(value)
    end
  end

end

class BinarySearchTree

  attr_reader :root_node

  def initialize(root_node = nil)
    @root_node = root_node
  end

  def push(number)
    if root_node.nil?
      @root_node = Node.new(number)
    else
      @root_node.insert(number)
    end
  end

end
