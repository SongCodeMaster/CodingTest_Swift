import Foundation

func solution(_ record:[String]) -> [String] {
    /// - 코드 설명
    
	/*1.	딕셔너리(userDict)를 사용하여 유저 아이디와 닉네임을 매핑
	•	Enter 또는 Change 명령이 있을 때 유저 아이디(uid)를 기준으로 닉네임을 업데이트합니다.
	2.	로그를 저장하여 후처리
	•	Enter, Leave 명령만 로그 리스트에 저장합니다.
	•	Change는 닉네임만 변경하고 로그에는 영향을 주지 않습니다.
	3.	최종 출력 생성
	•	저장된 로그를 기반으로 userDict에서 최신 닉네임을 가져와 출력 메시지를 만듭니다.*/
    var userDict: [String: String] = [:] // uid별 닉네임 저장
    var logs: [(String, String)] = [] // (uid, action) 저장
    
    for entry in record {
        let components = entry.split(separator:" ").map { String($0) }
        let action = components[0]
        let uid = components[1]
        
        if action == "Enter" || action == "Change" {
            let nickname = components[2]
            userDict[uid] = nickname // 유저 닉네임 업데이트
        }
        
        if action == "Enter" || action == "Leave" {
            logs.append((uid, action)) // 로그에 저장하기
        }
    }
    
    // 최종 메시지 변환
    return logs.map { log in
        let nickname = userDict[log.0]! // 최신 닉네임 사용
        let actionMessage = log.1 == "Enter" ? "님이 들어왔습니다." : "님이 나갔습니다."
        return nickname + actionMessage
    }
}