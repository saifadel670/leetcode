class Solution {
    func mySqrt(_ x: Int) -> Int {
        var low = 1, high = x
        while low != high {
            var mid = (low + high) / 2
            if mid * mid <= x && (mid + 1) * (mid + 1) > x { return mid }
            else if mid * mid > x { high = mid - 1 }
            else { low = mid + 1 }
        }
        return low
        
    }
}