class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var array = nums1 + nums2
    array.sort()
      let  midIndex : Int = (array.count / 2)
    if (array.count % 2) == 0 {
        let result = Double( array[midIndex-1] + array[midIndex]) / 2
        return result
    }
    else {
        return Double(array[midIndex])

    }
        
    }
}