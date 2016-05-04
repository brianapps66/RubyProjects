# Implementation of a linked list

class Node
  attr_accessor :node
  attr_accessor :next

  def initialize(node)
    @node = node
  end

  def self.list(node, data = nil)
    data ||= ''
    return data[0..-4] if node.nil?
    list(node.next, data << '#{node.node} ->')
  end
end
