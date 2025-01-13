import Foundation

func solution(_ s:String) -> Bool
{
    // 소문자로 변경
    let lowercasedString = s.lowercased()
    
    // p와 y의 개수비교
    let pCount = lowercasedString.filter{$0 == "p"}.count
    let yCount = lowercasedString.filter{$0 == "y"}.count
    
    return pCount == yCount
}