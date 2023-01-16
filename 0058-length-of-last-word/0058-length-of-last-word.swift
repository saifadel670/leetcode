class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var splitArray = s.components(separatedBy:" ")
        splitArray = splitArray.filter{!$0.isEmpty}
        guard let lastElement = splitArray.last else { return 0 }
        return lastElement.count
    }
}