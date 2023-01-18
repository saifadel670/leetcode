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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
         var dict: [Int : Int] = [:]
         var node: ListNode? = head
         var prevNode: ListNode? = nil
         var nodeHead: ListNode? = node

         while(node != nil) {
             dict[node!.val, default: 0] += 1   
                  
             if(dict[node!.val, default: 0] > 1 && node?.next != nil) {
                prevNode?.next = node?.next
             }
             else if(dict[node!.val, default: 0] > 1) {
                  prevNode?.next = nil
             }

             if (node?.val != prevNode?.val){
                 prevNode = node
             }
              node = node?.next  
         }
         return nodeHead
        
    }
}