class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let numsSet = Set(nums)
        nums = Array(numsSet.sorted())
        print(nums)
        return numsSet.count 
    }
}