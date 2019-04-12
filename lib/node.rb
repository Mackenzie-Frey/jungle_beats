class Node
  attr_reader :data
  
  def initialize(data)
    @data = data
  end

  def next_node
    nil
  end
end



# For this iteration, build a simple node class that can perform these functions:

# > require "./lib/node"

# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil
