require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"
require "./lib/linked_list"
require 'pry'

class LinkedListExistsTest < Minitest::Test
  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_list_head
    list = LinkedList.new

    assert_nil nil, list.head
  end

  def test_append
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_head_next_node
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_list_count
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.to_string
  end
end
