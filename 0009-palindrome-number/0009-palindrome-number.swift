class Solution {
    func isPalindrome(_ x: Int) -> Bool {
         // var array : [Int] = []
        // var number = x
        // while(number > 0) {
        //     let reminder = number % 10
        //     array.append(reminder)
        //     number = number / 10
        //      print("array: \(array)  number \(number ) ")
        // }

        let digits = String(x).compactMap{ $0.wholeNumberValue }
        var l = 0 
        var r = 0

        if (digits.count % 2 == 0) {
            l =  ((digits.count / 2) - 1 ) 
            r =  l + 1
        }
        else {
            l =  (digits.count / 2)
            r =  l
        }

        while( l >= 0 && r <  digits.count){
            if (digits[l] != digits[r]) {
                return false
            }
            l -= 1
            r += 1
        }

         return x >= 0 
        
    }
}