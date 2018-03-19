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

    assert_equal nil, list.head
  end

  def test_list_append("doop")
    list = LinkedList.new

    assert_equal = "doop", list.append
  end
end
