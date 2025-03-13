import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    // name과 yearning을 Dictionary로 변환하여 빠른 검색이 가능하도록 함
    let yearingDict = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    
    // 각 사진의 추억 점수를 계산
    /*
    map을 사용하면 2차원 배열의 각 1차원 배열(즉, 각 사진 속 인물 그룹)에 먼저 접근하고, 그 후 내부적으
    로 reduce를 사용하여 각 인물(사람 한 명 한 명)에 접근합니다.
    */
    return photo.map { photoGroup in 
        photoGroup.reduce(0) { sum, person in 
            sum + (yearingDict[person] ?? 0) // 딕셔너리에 없으면 0으로 처리                 
        }
    }
}
