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

    assert_nil list.head
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

  def test_list_count_1
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.to_string
  end

  def test_append_2
    list = LinkedList.new
    list.append("deep")

    assert_nil list.head.next_node
  end

  # def test_list_count_2
  #   list = LinkedList.new
  #
  #   assert_equal 2, list.count
  # end

  # def test_list_to_string_2
  #   list = LinkedList.new
  #
  #   assert_equal "doop deep", list.to_string
  # end
end
