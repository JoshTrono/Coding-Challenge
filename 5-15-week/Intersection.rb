# require_relative 'LinkedList.rb'

# list = LinkedList.new

# list.add(1)
# list.add(2)
# list.add(3)

# puts list.get_node(0).value

require 'linked-list'

node1 = LinkedList::Node.new("10")
node2 = LinkedList::Node.new("20")

list1 = LinkedList::List.new
list1.push("1")
list1.push(node1)
list1.push(node2)

list2 = LinkedList::List.new
list2.push("1")
list2.push("2")
list2.push(node1)
list2.push("3")




# check two linked list for common node
def get_common_node(list1, list2)
    list1.each do |x|
        list2.each do |y|
            if x.equal?(y)
                puts "The common node is: #{x.inspect}"
            return x
            end
        end
        end
end
  
  # Assuming list1 and list2 are defined with nodes
common_node = get_common_node(list1, list2)
