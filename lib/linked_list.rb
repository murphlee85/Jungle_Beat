class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @node_count = 0
  end

  def append(data)
    @head = Node.new(data)
    @node_count += 1
  end

  def head_next_node
    @next_node = nil
  end

  def count
    @node_count
  end

  def to_string
    @head.data.to_s
  end
end
