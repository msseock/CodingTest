import Foundation

// MARK: 시각
var n: Int = 0

/// 결과값
var threeCount: Int = 0


// n 받아오기
if let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    n = input[0]
}

// 3나오는 횟수 계산하기
for h in 0...n {
    for m in 0...59 {
        for s in 0...59 {
            // 시간 안에 3이 포함되어 있다면 카운트 증가
            if (String(h)+String(m)+String(s)).contains("3") {
                threeCount += 1
            }
        }
    }
}


print(threeCount)
