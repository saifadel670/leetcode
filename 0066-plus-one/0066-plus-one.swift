class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        guard let lastElement = digits.last, 
        var lastElementIndex = digits.lastIndex(of: lastElement) else { return [1] }
        var array = digits
        var reminder = 1
        repeat{
            var str = String(array[lastElementIndex] +  reminder)
            array[lastElementIndex] = Int(String(str.last!))!
            reminder = str.count > 1 ? Int(String(str.prefix(str.count - 1)))! : 0
            lastElementIndex -= 1   

        }while(lastElementIndex >= 0 && reminder != 0)

        if(reminder > 0) {
            return [reminder] + array
        }

        return array     
    }
}