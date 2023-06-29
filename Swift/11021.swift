import Foundation

let T = Int(readLine()!)!
for index in 1...T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let A = input[0]
    let B = input[1]
    
    if A > 0, B < 10 {
        print("Case #\(index): \(A+B)")
    }
    else {
        print("첫 번째 숫자는 0 이상, 두 번째 숫자는 10 이하여야 함")
    }
}