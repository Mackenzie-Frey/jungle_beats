class Node
  attr_reader :data,
              :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end



# For this iteration, build a simple node class that can perform these functions:

# > require "./lib/node"

# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil


# Setup
# require "./lib/node"
# require "./lib/linked_list"
# list = LinkedList.new
# list.head
# list.append("doop")
# list
# list.head
# list.head.next_node
#
# list.append("deep")
# list.head.next_node
# list.count
# list.to_string
