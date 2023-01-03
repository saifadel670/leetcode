/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addNode(num : Int, node: ListNode?) {
    var tempNode : ListNode? = node
    while(tempNode?.next != nil) {
        tempNode =  tempNode?.next
    }
    tempNode?.next = ListNode(num)
}
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
          var first : ListNode? = l1
      var second : ListNode? = l2
       var head : ListNode?
       var result : ListNode?

      var remain : Int = 0;
     while(first != nil ||  second != nil ) {
        
         let sum  = (first?.val ?? 0) + (second?.val ?? 0) + remain
         if (sum >= 10 ) {
             remain =  Int(String("\(sum)".first!)) ?? 0
         }else {
               remain = 0
         }
         let sumNumber = ( Int(String("\(sum)".last!)) ?? 0 )
            
         if(result == nil){
             result = ListNode(sumNumber)
             head = result
         } 
         else {
              result?.next = ListNode(sumNumber)
              result = result?.next
         }
         first = first?.next
         second = second?.next
     }
         if (remain > 0) {
          result?.next = ListNode(remain)
     }
        return head
    }
}