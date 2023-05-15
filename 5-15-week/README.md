# 5/15/2023 Week 

## a) Intersection: 
---
Given two (singly) linked lists, determine if the two lists intersect. Return the intersecting node. Note that the intersection is defined based on reference, not value. That is, if the kth node of the first linked list is the exact same node (by reference) as the jth node of the second linked list, then they are intersecting.

```
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
```
This checks two lists and if list 2 node equals the same. I make 2 linked lists and made node1 to equals "10" with first node starts with "1".

When this is ran, it doesn't return "1" but "10" showing it's returning the same referenced value not returning two different nodes that has the same value.

```                                         
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
```

## b) Loop Detection:
---
Given a circular linked list, implement an algorithm that returns the node at the beginning of the loop.
DEFINITION:
Circular linked list: A (corrupt) linked list in which a node's next pointer points to an earlier node, so as to make a loop in the linked list.
EXAMPLE
Input: A -> B -> C -> D -> E -> C [the same C as earlier]
Output: C