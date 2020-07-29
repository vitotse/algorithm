//: [Previous](@previous)

//26. Remove Duplicates from Sorted Array
// 过滤重复的元素
import Foundation


func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    if nums.count == 0 {
        return 0
    }
    var j = 0
    for i in 0 ..< nums.count {
        if nums[i] != nums[j] {
            j += 1
            nums[j] = nums[i]
            
        }
    }
    
    return j + 1
    
}

var removeDuplicatesArray:[Int] = [1,2]
removeDuplicates(&removeDuplicatesArray)


//: [Next](@next)
