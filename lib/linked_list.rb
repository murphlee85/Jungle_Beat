class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data) if @head.nil?
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
    data
  end

  def head_next_node
    @next_node = nil
  end

  def count
    node_count = 0
    current_node = @head
    node_count += 1 unless @head.nil?
    until current_node.next_node.nil?
      current_node = current_node.next_node
      node_count += 1
    end
    node_count
  end

  def to_string
    @head.data.to_s
  end
end
