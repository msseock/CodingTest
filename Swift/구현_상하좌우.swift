import Foundation

// MARK: 상하좌우
var n: Int = 0

/// 입력받을 계획 배열
var plans: [String] = []

/// 결과값
var resultX: Int = 1    // 행
var resultY: Int = 1    // 열

// n 받아오기
if let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    n = input[0]
}

// 계획 배열 받아오기
// L(←), R(→), U(↑), D(↓) 중 하나
if let line = readLine() {
    plans = line.components(separatedBy: " ")
}

// 최종 도착할 좌표 계산하기
for plan in plans {
    switch plan {
    case "L":
        if (resultY - 1 > 0) {
            resultY -= 1
        }
    case "R":
        if (resultY + 1 <= n) {
            resultY += 1
        }
    case "U":
        if (resultX - 1 > 0) {
            resultX -= 1
        }
    case "D":
        if (resultX + 1 <= n) {
            resultX += 1
        }
    default: break
    }
}

print(resultX, resultY)
