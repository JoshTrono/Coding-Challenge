class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
      @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head ,remmember we traverse a linkedlist from the head
  def initialize
    @head = nil
    @tail = nil
  end
  def add(number)
    
    #create a new node 
    this_node = Node.new(number)
    if @head.nil?
       @head = this_node
      return
    end

    current = @head  
    #until current.nil means until we reach the last node
    until current.next_node.nil?
      current = current.next_node
    end
 
    #point current(last node) to our new node
    current.next_node = this_node
    end
    def remove(index)
      if @head.nil?
        puts "the storage is empty"
      end
      if (index==0) 
        #remove the first element from the list
        current=@head 
        #get the element after the head and make head equal to it
        current.next=new_current 
        @head=new_current
      end
      if (index>0)
        current= get_node(index) #(desired node to be removed)
        before_current= get_node(index-1) 
        after_current=current.next_node
        before_current.next_node=after_current
      end


  end
  def get_node(index)
    current=@head
    index.times do
      current=current.next_node
    end
    return current
  end
end