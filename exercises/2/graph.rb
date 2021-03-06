require_relative './node.rb'
# graph class
class Graph
  def initialize
    @nodes = {}
  end

  def num_nodes
    @nodes.keys.count
  end

  def node?(id)
    @nodes.keys? id
  end

  def add_node(node)
    id = node.id
    @nodes[id] = node
    id
  end

  def pseudograph?
    @nodes.values.any?(&:links_to_self?)
  end

  def print
    if @nodes.keys.count.zero?
      puts 'Empty graph!'
    else
      @nodes.each do |_k, value|
        puts value
      end
    end
  end
end
