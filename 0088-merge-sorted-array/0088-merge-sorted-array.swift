class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
          let tempArr: [Int] = Array(nums1[..<m] + nums2[..<n])
               nums1 = tempArr.sorted()  
        
    }
}