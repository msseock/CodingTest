
import Foundation

// MARK: 성적이 낮은 순서로 학생 출력하기
var n: Int = 0

var scoreSet: [(String, Int)] = []

// n 받아오기
if let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    n = input[0]
}

// n개 이름과 숫자 입력받기
for _ in 0..<n {
    if let line = readLine() {
        let input = line.components(separatedBy: " ")
        scoreSet.append((input[0], Int(input[1])!))
    }
}

// 성적순으로 배열 정렬하기
scoreSet.sort { $0.1 < $1.1 }

// 학생 이름 띄어쓰기 구분으로 출력
print(scoreSet.map { $0.0 }.joined(separator: " "))
