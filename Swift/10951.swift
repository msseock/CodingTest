import Foundation

while let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    let A = input[0]
    let B = input[1]

    if A > 0, B < 10 {
        print(A + B)
    }
    else {
        print("첫 번째 숫자는 0 이상, 두 번째 숫자는 10 이하여야 함")
    }
}