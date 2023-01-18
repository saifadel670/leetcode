class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        let minNum = Int.min
         for i in 0..<nums.count {
             if(nums[i] == target) {
                 return i
             }
             else if(minNum < target && target < nums[i]){
                 return i
             }         
         }

         return nums.count 
        
    }
}