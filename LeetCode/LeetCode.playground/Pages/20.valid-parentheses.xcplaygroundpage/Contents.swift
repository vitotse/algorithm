//: [Previous](@previous)
/*
 * @lc app=leetcode.cn id=20 lang=swift
 *
 * [20] 有效的括号
 */

// @lc code=start
class Solution {
    

    func isValid(_ s: String) -> Bool {
        
        let sym = ["(" : ")","[" : "]","{" : "}"]
        var stack = [Character]()
        
        for char in s {
            
            if sym.keys.contains(String(char)) {
                /// 符号前缀
                
                stack.append(char)

            }else if sym.values.contains(String(char)) {
                /// 符号后缀
                
                guard stack.count > 0 else {
                    return false
                }
                
                let preChar: Character = stack.last!

                if sym[String(preChar)] == String(char) {

                    stack.removeLast()
                }else{
                    return false
                }
                
            }else{
                /// 不是对应符号
                return false
            }
            
        }
        
        if stack.count > 0 {
            return false
        }else{
            return true
        }
    }
}

let solution = Solution()
solution.isValid("(])")

//: [Next](@next)
// @lc code=end
