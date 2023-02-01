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
  func isSymmetric(_ root: TreeNode?) -> Bool {
    var leftData: [Int?] = []
    var rightData: [Int?] = []
    triverseLeftTree(root?.left, &leftData)
    triverseRightTree(root?.right, &rightData)
    print(leftData)
    print(rightData)

    return leftData == rightData
  }

  func triverseLeftTree(_ root: TreeNode?, _ array: inout [Int?]) {
    array.append(root?.val)
    if(root == nil) {
        return
    }
    
    triverseLeftTree(root?.left, &array)
    triverseLeftTree(root?.right, &array)
  }

   func triverseRightTree(_ root: TreeNode?, _ array: inout [Int?]) {
        array.append(root?.val) 
        if(root == nil) {
            return
        }
      
        triverseRightTree(root?.right, &array)
        triverseRightTree(root?.left, &array)
  }
}