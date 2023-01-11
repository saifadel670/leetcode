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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var first: ListNode? = list1
     var second: ListNode? = list2
     var arr: [Int] = []
     while(first != nil) {
         arr.append(first!.val)
         first = first?.next
     }

     while(second != nil) {
         arr.append(second!.val)
         second = second?.next
     }

      arr = arr.sorted()
      guard let fVal = arr.first else { return nil}
      var head: ListNode = ListNode(fVal)
      var node: ListNode? = head

      arr[1...].map { element in 
      node?.next = ListNode(element)
      node = node?.next 
     }
    
    return head     
        
    }
}