class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            if (nums.count > 1) {
         for (i,iElement) in nums[0...].enumerated() {
               let  newI = (i + 1)         
        for  jElement in nums[newI...] {
            if (( iElement +  jElement) == target) {
                let j = nums.lastIndex(of: jElement)!
                return [i,j ]
            }
        }
 
    }
     }
     
    return []
    }
}