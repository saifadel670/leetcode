class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
         var result = ""
         var minElement: String = strs.first ?? ""
         strs.map{ minElement = $0.count < minElement.count ? $0  : minElement}
         for i in 0..<minElement.count {
             let tempStr = String(minElement.prefix(i + 1))
             var tempResult = ""
             for j in 0..<strs.count {
                   let elementStr = String(strs[j].prefix(i + 1))
                   if (tempStr != elementStr) {
                       break
                   }
                   if ((strs.count - 1) == j) {
                       tempResult = tempStr 
                   }                   
             }

             if(tempResult > result) {
                 result = tempResult
             }

         }

         return result   
        
    }
}