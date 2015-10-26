require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'binary_search_tree'

class BinarySearchTreeTest < Minitest::Test

  attr_reader :tree
  def setup
    @tree = BinarySearchTree.new
  end

  def test_it_has_data
    assert_equal 0, Node.new(0).data
  end

  def test_it_has_a_left_node
    assert_equal 1, Node.new(0, Node.new(1)).left.data
  end

  def test_it_has_a_right_node
    assert_equal 1, Node.new(0, nil, Node.new(1)).right.data
  end

  def test_root_node_is_nil_for_empty_list
    assert_nil tree.root_node
  end

  def test_it_adds_new_root_node_when_pushed
    tree.push(1)
    assert_equal 1, tree.root_node.data
  end

  def test_it_adds_data_smaller_than_root_node_to_left_of_root
    tree.push(5)
    tree.push(4)
    assert_equal 4, tree.root_node.left.data
  end

  def test_it_adds_data_equal_to_root_node_to_left_root
    tree.push(5)
    tree.push(5)
    assert_equal 5, tree.root_node.left.data
  end

  def test_it_adds_data_larger_than_root_to_right_of_root
    tree.push(5)
    tree.push(6)
    assert_equal 6, tree.root_node.right.data
  end

  def test_it_continues_adding_smaller_data_to_the_left_down_the_tree
    tree.push(5)
    tree.push(4)
    tree.push(3)
    assert_equal 3, tree.root_node.left.left.data
  end

  def test_it_continues_adding_smaller_data_to_the_right_down_the_tree
    tree.push(5)
    tree.push(6)
    tree.push(7)
    assert_equal 7, tree.root_node.right.right.data
  end

end
