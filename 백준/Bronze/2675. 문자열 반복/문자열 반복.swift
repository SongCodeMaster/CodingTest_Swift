import Foundation

// 테스트 케이스 수 T 입력
if let tLine = readLine(), let T = Int(tLine) {
    for _ in 0..<T {
        // 각 테스트 케이스에서 "반복횟수 R"과 "문자열 S" 입력
        if let line = readLine() {
            let components = line.split(separator: " ")
            
            // 최소 2개 요소("R", "S")가 있어야 함
            guard components.count >= 2 else { continue }
            // R(반복 횟수)를 Int로 변환
            guard let R = Int(components[0]) else { continue }
            // 문자열 S
            let S = components[1]
            
            var result = ""
            // 문자열 S의 각 문자를 R번 반복하여 result에 누적
            for char in S {
                for _ in 0..<R {
                    result.append(char)
                }
            }
            // 결과 출력
            print(result)
        }
    }
}