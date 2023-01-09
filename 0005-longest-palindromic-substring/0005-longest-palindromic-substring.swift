class Solution {
    func longestPalindrome(_ s: String) -> String {
        let characters: [Character] = Array(s)
        var result: [Character] = []


        for  i in 0..<characters.count {
            var l = i
            var r = i

            while (l >=  0 && r < characters.count && characters[l] == characters[r]) {
                if ((r - l + 1) > result.count) {
                    result = Array(characters[l...r])
                }
                l -= 1
                r += 1
            }  

            l = i
            r = i + 1

            while (l >=  0 && r < characters.count && characters[l] == characters[r]) {
                if ((r - l + 1) > result.count) {
                    result = Array(characters[l...r])
                }
                l -= 1
                r += 1
            }  

        }
        return String(result)
        
    }
}