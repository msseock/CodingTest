import Foundation

var n: Int = 1260
var count: Int = 0

// 큰 단위의 화폐부터 차례대로 확인
let coinTypes: [Int] = [500, 100, 50, 10]

for coin in coinTypes {
    count += n / coin // 해당 화폐로 거슬러 줄 수 있는 동전의 개수 세기
    n %= coin
}

print(count)
