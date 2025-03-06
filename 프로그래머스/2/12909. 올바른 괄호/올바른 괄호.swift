import Foundation

func solution(_ s:String) -> Bool
{
    var stack: [Character] = []
    
    for char in s {
        if char == "(" {
            stack.append(char)
        } else { 
            if stack.isEmpty {
                return false
            }
            // char == ")" 일 경우 스택에서 "("제거
            stack.removeLast()
        }
    }
    
    return stack.isEmpty
}