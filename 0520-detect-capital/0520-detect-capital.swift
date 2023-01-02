class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        if ( word[0...] == word[0...].lowercased()) {
        return true

}else if (word[0...] == word[0...].uppercased()){
    return true
}
else if (word.count > 0  ) {
    return  (word.first!.isUppercase &&  ( word[1...] == word[1...].lowercased()) ) 
}
return false
    }
}

extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(start, offsetBy: min(self.count - range.lowerBound, 
                                             range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }

    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
         return String(self[start...])
    }
}
