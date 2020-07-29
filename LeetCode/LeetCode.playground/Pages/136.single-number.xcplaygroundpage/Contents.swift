//: [Previous](@previous)

//:##找出只有一個的数字
//:给定一个整数数组，除了某个元素外其余元素均出现两次。请找出这个只出现一次的元素。
//: [找出只有一個的数字](https://leetcode-cn.com/explore/interview/card/top-interview-questions-easy/1/array/25/)
// 136. Single Number

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    
    guard nums.count > 1 else {
        return nums.first!
    }
    
    var nums = nums
    var res = nums.first!
    
    for i in 1..<nums.count {
        //相同的数字去翻等于0
        
        res = res ^ nums[i]
        
    }
    
    return res
}


var singleArray:[Int] = [1,1,2,3,3]
//var singleArray:[Int] = [1]
//var singleArray:[Int] = [1,3,1,-1,3]

singleNumber(singleArray)



//: [Next](@next)
