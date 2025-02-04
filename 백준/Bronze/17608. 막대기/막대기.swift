import Foundation

// 큰거뒤에 더 큰거 있으면 count 배열에 넣기
// 요소들 역으로 값 검사하기. 큰거 나오면 카운트에 넣고 앞에 검사

let n = Int(readLine()!)!
// 빈배열 선언
var heights = [Int]()

for _ in 0..<n {
  heights.append(Int(readLine()!)!)
}

var visibleCount = 0
var maxHeight = 0

for height in heights.reversed() {
  if height > maxHeight {
    visibleCount += 1
    maxHeight = height
  }
}

print(visibleCount)