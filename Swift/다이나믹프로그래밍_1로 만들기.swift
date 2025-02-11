import Foundation

// MARK: 1로 만들기
var n: Int = 0

// n 받아오기
if let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    n = input[0]
}

var d = Array(repeating: 0, count: n + 1)

for i in 2...n {
    // 1을 빼는 경우
    d[i] = d[i - 1] + 1
    
    // 2로 나누어 떨어질 경우 최소 연산 횟수 갱신
    if i % 2 == 0 {
        d[i] = min(d[i], d[i / 2] + 1)
    }
    
    // 3으로 나누어 떨어질 경우 최소 연산 횟수 갱신
    if i % 3 == 0 {
        d[i] = min(d[i], d[i / 3] + 1)
    }
    
    // 5로 나누어 떨어질 경우 최소 연산 횟수 갱신
    if i % 5 == 0 {
        d[i] = min(d[i], d[i / 5] + 1)
    }
}


print(d[n])  // n을 1로 만들기 위한 최소 연산 횟수 출력
