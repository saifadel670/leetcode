/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
       var arr1: [Int?] = []
       var arr2: [Int?] = []
        getValueInPreOrder(p, &arr1)
        getValueInPreOrder(q, &arr2)
        
        print(arr1)
        print(arr2)
        

       return arr1 == arr2

        
 }
    
 func getValueInPreOrder(_ node: TreeNode?, _  arr: inout [Int?] ) {
       arr.append(node?.val)
      if (node == nil){ return }
        getValueInPreOrder(node!.left, &arr)
        getValueInPreOrder(node!.right, &arr)
  }

}