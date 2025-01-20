import Foundation

/* 정수값과 문자열이 공존하는 형태는 딕셔너리로 처리하는 문제. */
// 입력받기
let n = Int(readLine()!)! //카드개수
var cardCount: [String: Int] = [:] // 과일별 개수를 저장하는 딕셔너리

// 반복문으로 각각의 카드를 담을 정보 변수 선언
for _ in 0..<n {
    let input = readLine()!.split(separator:" ")
    let fruit = String(input[0])
    let count = Int(input[1])!

    cardCount[fruit, default:0] += count // 과일개수 누적
}

// 조건 확인
var found = false
for (_, count) in cardCount {
    if count == 5 {
        found = true
        break
    }
}

// 결과 출력
print(found ? "YES" : "NO")
