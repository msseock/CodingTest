import Foundation

var coupon: Int
var stamp: Int
var chicken_max: Int

while let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    coupon = input[0]
    stamp = input[1]

    chicken_max = coupon

    while coupon >= stamp {
        chicken_max += coupon/stamp
        coupon = coupon / stamp + coupon % stamp
    }
    
    print(chicken_max)

}