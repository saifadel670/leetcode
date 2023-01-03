class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {        
        var dict = [Character:Int]()
        var maxLength = 0
        var lastRepeatPos = -1
        var i = 0
        for c in s {
            
            if (dict[c] != nil) && (dict[c]! > lastRepeatPos) {
                lastRepeatPos = dict[c]!
            }
          
            maxLength = max(i - lastRepeatPos, maxLength)
            dict[c] = i
            i += 1
        }
        
        return maxLength
        
    }
}