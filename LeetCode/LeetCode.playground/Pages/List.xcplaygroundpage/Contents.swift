//: [Previous](@previous)

//Definition for singly-linked list.
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
  }
    
}

extension ListNode {
    static public func showList(head: ListNode){
        
        var node: ListNode = head
        var listChar: String = "head:\(node.val)"
        repeat{
            
            listChar.append("->")
            listChar.append("\(node.next!.val)")
            node = node.next!
        } while node.next != nil
        
        print("\(listChar)")
    }
    
}

//237. Delete Node in a Linked List
//https://leetcode-cn.com/problems/delete-node-in-a-linked-list/



//19. Remove Nth Node From End of List
//https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        let result = ListNode(0)
        result.next = head
        var fast:ListNode?  = result
        var slow:ListNode? = result
        for _ in 0 ..< n {
            fast = fast!.next
        }
        
        while(fast!.next != nil) {
            fast = fast!.next
            slow = slow!.next
            
        }
        
        slow!.next = slow!.next!.next
        return result.next
        
    }
    
    
    func removeList(_ head: ListNode,_ n: Int) -> ListNode {
        
        var index = 0
        var p: ListNode = head
        var q: ListNode?
        q = p.next
        
        repeat {

            index += 1
            
            if (n == index){
                p.next = q!.next
            }
            
            p = q!
            q = q!.next
            
            
        } while (q != nil)
        
        return head
    }
    
}

// Usage
let nodeHead = ListNode.init(1)
let node1 = ListNode.init(2)
let node2 = ListNode.init(3)
let node3 = ListNode.init(4)
let node4 = ListNode.init(5)
let node5 = ListNode.init(6)
let node6 = ListNode.init(7)

//nodeHead.next = node1
//node1.next = node2
//node2.next = node3
//node3.next = node4
//node4.next = node5
//node5.next = node6

//ListNode.showList(head: nodeHead)

let solution = Solution.init()

//solution.removeList(nodeHead, 4)
solution.removeNthFromEnd(nodeHead,1)

//ListNode.showList(head: nodeHead)


//: [Next](@next)
