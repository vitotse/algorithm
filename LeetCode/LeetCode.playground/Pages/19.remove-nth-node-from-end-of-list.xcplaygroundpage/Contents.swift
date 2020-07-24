//: [Previous](@previous)

// https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
 
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
}

//: Usage

let node1 = ListNode(3)
let node2 = ListNode(5)
let node3 = ListNode(8)

node1.next = node2
node2.next = node3




//: [Next](@next)
