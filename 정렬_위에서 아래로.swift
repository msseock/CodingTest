
import Foundation

// MARK: 위에서 아래로
var n: Int = 0

var array: [Int] = []

// n 받아오기
if let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    n = input[0]
}

// n개 숫자 입력받기
for _ in 0..<n {
    if let line = readLine() {
        let input = line.components(separatedBy: " ").map { Int($0)! }
        array.append(input[0])
    }
}

array.sort(by: >)

// 배열 모든 항목 합친 것 String으로 만들어서 출력하기
print(array.map { String($0) }.joined(separator: " "))
