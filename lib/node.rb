class Node
  attr_reader :data
  attr_accessor :next_node

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

# require "./lib/node"
# require "./lib/linked_list"
# list = LinkedList.new
# list.append("plop")
# list.to_string
# list.append("suu")
# list.prepend("dop")
# list.to_string


# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"
