import Foundation

// 첫 번째 줄 입력 처리
let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let n = firstLine[0] // 아는 노래의 개수
let m = firstLine[1] // 맞히기 시도할 노래의 개수

// 노래 저장용 딕셔너리
var songMap: [String: [String]] = [:]

// N개의 노래 데이터 입력받기
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let songName = String(input[1]) // 노래 제목
    let firstThreeNotes = input[2..<5].joined() // 첫 3개의 음을 key로 사용

    // 딕셔너리에 노래 제목 저장
    if songMap[firstThreeNotes] == nil {
        songMap[firstThreeNotes] = [songName]
    } else {
        songMap[firstThreeNotes]?.append(songName)
    }
}

// 결과 저장용 배열
var results: [String] = []

// M개의 노래 시도 처리
for _ in 0..<m {
    let query = readLine()!.split(separator: " ").joined() // 시도할 음 3개
    if let titles = songMap[query] {
        if titles.count > 1 {
            results.append("?") // 동일한 첫 3음의 노래가 여러 개
        } else {
            results.append(titles.first!) // 매칭되는 노래가 하나
        }
    } else {
        results.append("!") // 매칭되는 노래가 없음
    }
}

// 결과 출력
results.forEach { print($0) }