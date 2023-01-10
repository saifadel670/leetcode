class Solution {
    func getValue(_ symbol : Character) -> Int {
        switch symbol {
            case "I":
                return 1
            case "V":
                return 5
            case "X":
                return 10
            case "L":
                return 50
            case "C":
                return 100
            case "D":
                return 500
            case "M":
                return 1000
            default:
                fatalError("Unsupported")
        }

    }
    
    func romanToInt(_ s: String) -> Int {
        var sum : Int = 0
        let revS = String( s.reversed())

        var prevNum : Int = 0
        revS.map{element in
            let value =  getValue(element)
                 
            if (prevNum > value) {
                sum -= value
            }
            else {
                prevNum = value
                sum += value
            }
        }

        return sum
        
    }
}