import Foundation

// 첫 번째 줄 입력 받아오기
let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let teachingSubject = firstLine[0]
let listenStudent = firstLine[1]

// 수강 정보를 저장할 딕셔너리
var studentCountDict: [Int: Int] = [:]

// 각 과목에 대한 학생 학번 처리
for _ in 0..<teachingSubject {
    let subjectStudent = Int(readLine()!)! // 과목 수강생 수
    let studentNumbers = readLine()!.split(separator: " ").map { Int($0)! } // 학번 목록

    for student in studentNumbers {
        studentCountDict[student, default: 0] += 1 // 수강 과목 수 증가
    }
}

// M개 이상의 수업을 들은 학생 수 계산
let result = studentCountDict.values.filter { $0 >= listenStudent }.count

// 결과 출력
print(result)
