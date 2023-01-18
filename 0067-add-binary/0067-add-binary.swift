class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let first = a.compactMap{$0.wholeNumberValue}
    let second = b.compactMap{$0.wholeNumberValue}
    var result = ""
    var index = 1
    var reminder = 0
    repeat {
        let num1 = (first.count - index) >= 0 ? first[(first.count - index)] : 0
        let num2 = (second.count - index) >= 0 ? second[(second.count - index)] : 0
        var sum = num1 + num2 + reminder
        reminder = 0
        if(sum == 2) {
            sum = 0
            reminder = 1
        }
        else if(sum == 3) {
            sum = 1
            reminder = 1
        }
        index += 1
        result =  String(sum) + result

    }while(index <= first.count || index <= second.count )
    if (reminder == 1) {
        result = String(reminder) + result
    }
    return result
    }
}