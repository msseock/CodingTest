import Foundation

// MARK: 큰 수의 법칙
var n: Int = 0
var m: Int = 0
var k: Int = 0

/// 입력받을 수 배열
var data: [Int] = [0]

/// 결과값
var result: Int = 0

// n, m, k 받아오기
if let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    n = input[0]
    m = input[1]
    k = input[2]
    
}

// n개의 숫자 배열 받아오기
if let line = readLine() {
    data = line.components(separatedBy: " ").map { Int($0)! }
}

data.sort(by: >)
let first = data[0]
let second = data[1]


var repeatCount = 0

// 단순하게 푸는 경우
for _ in 1...m {
    if repeatCount < k {
        result += first
        repeatCount += 1
    } else {
        result += second
        repeatCount = 0
    }
}

print(result)

// 수열파악해서 더 빠르게
repeatCount = m / (k + 1) * k
repeatCount += m % (k + 1)

result = 0
result = first * repeatCount + second  * (m - repeatCount)

print(result)
