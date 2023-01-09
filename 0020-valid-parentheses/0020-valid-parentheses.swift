class Solution {
    func expectedBracket(_ stratingBracket: Character) -> Character? {
         switch stratingBracket {        
        case ")" :
            return "("
        case "}" :
            return "{"      
        case "]" :
            return "["
        default:
            return  nil
    }
    }

    func isValid(_ s: String) -> Bool {
        var stack : [Character] = []

        for element in s {
            let lastElement = stack.last
            if (lastElement == nil ||  expectedBracket(element) != lastElement ){
                stack.append(element)
            }
            else {
                stack.removeLast()
            }
        }

        return (stack.count == 0)
        
    }
}