class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var index = nums.firstIndex(of: val)
    var remainElement = nums.count
    while (index != nil) {
        nums.remove(at: index!)
        remainElement -= 1
        index = nums.firstIndex(of: val)
    }    
    return remainElement
        
    }
}