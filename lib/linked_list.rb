class LinkedList
  attr_reader :next_node

  def initialize
    @head = nil
  end

  def head
    if @head == nil
      return nil
    else
      @head.first
    end
  end

  def append(data)
    delete_nil_head
    @head << Node.new(data)
    change_next_node
    data
  end

  def delete_nil_head
    if @head == nil
      @head = []
    end
    @head
  end

# Alter this method to be dynamic
  def change_next_node
    @head[0].next_node = @head[1]
  end

  def count
    @head.count
  end

  def to_string
    @head.map do |node|
      node.data
    end.join(" ")
  end

  def prepend(data)
    delete_nil_head
    @head.insert(0,data)
    #alter change next node method
    # change_next_node
    data
  end

  def insert(position, data)
    @head.insert(position,data)
  end
end

# Iteration 3 - Additional Methods - insert and prepend
# Now we have nodes and a LinkedList class that manages the list. Next step is to add the insert and prepend methods.
#
# prepend will add nodes to the beginning of the list.
#
# insert will insert one or more elements at a given position in the list. It takes two parameters, the first one is the position at which to insert nodes, the second parameter is the string of data to be inserted.
#
# Expected behavior:
#
# > require "./lib/linked_list"
# > list = LinkedList.new
# > list.append("plop")
# => "plop"
# > list.to_string
# => "plop"
# > list.append("suu")
# => "suu"
# > list.prepend("dop")
# => "dop"
# > list.to_string
# => "dop plop suu"
# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"

# Iteration 2 - Append, All/To String and Insert (Multiple Nodes)
# Now that we can insert the first element of our list (i.e. the Head), let's focus on supporting these operations for multiple elements in the list.
#
# This iteration is really where we'll build out the core structure that makes up our linked list -- it will probably take you more time than the previous iterations.
#
# Update your append, count, and to_s methods to support the following interaction pattern:
#
# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head
# => <Node data="doop" next_node=nil #5678904567890>
# > list.head.next_node
# => nil

# > list.append("deep")
# => "deep"
# > list.head.next_node
# => <Node data="deep" next_node=nil #5678904567890>
# > list.count
# => 2
# > list.to_string
# => "doop deep"
# Notice the key point here -- the first piece of data we append becomes the Head, while the second becomes the Next Node of that (Head) node.



# Iteration 1 - Append, To String, and Count (Single Node / Element)
# Great! We have nodes. In this iteration we'll create the LinkedList class and start filling in the basic functionality needed to append our first node.
#
# We'll be adding the following methods:
#
# append - adds a new piece of data (data can really be anything) to the list
# count - tells us how many things are in the list
# to_string - generates a string of all the elements in the list, separated by spaces
# But for now, focus on building these functions so they work for just the first element of data appended to the list (we'll handle multiple elements in the next iteration).
#
# Expected behavior:
#
# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
