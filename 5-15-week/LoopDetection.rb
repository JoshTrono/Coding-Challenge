require 'linked-list'





# goes through the list and if a value references a value already. return and break the loop.
def find_duplicate_reference(linked_list)
    references = []
    
    linked_list.each do |node|
      if references.include?(node)
        puts "The duplicate value is: #{node}"
        references = []
        return node
      end
      
      references.push(node)
    end
    
    puts "No duplicate value found."
    nil
  end
  


  node1 = LinkedList::Node.new("10")
  node2 = LinkedList::Node.new("20")
  node3 = LinkedList::Node.new("30")
  
  test_list = LinkedList::List.new
  test_list.push("1")
  test_list.push(node2)
  
  list2 = LinkedList::List.new
  list2.push("1")
  list2.push("2")
  list2.push(node3)
  list2.push(node1)
  list2.push("3")
  list2.push(node3)  
  
find_duplicate_reference(test_list)
find_duplicate_reference(list2)

