require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"
require 'pry'

class NodeTest < Minitest::Test
  def test_class_exists
    node = Node.new ("plop")

    assert_instance_of Node, node
  end

  def test_if_data_works
    node = Node.new ("plop")

    assert_equal "plop", node.data
  end

  def test_next_node_nil
    node = Node.new(nil)

    assert_nil nil, node.next_node
  end
end
