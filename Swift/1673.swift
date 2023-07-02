import Foundation

var coupon: Int
var stamp_per_chicken: Int
var chicken_max: Int

while let line = readLine() {
    let input = line.components(separatedBy: " ").map { Int($0)! }
    coupon = input[0]
    stamp_per_chicken = input[1]

    chicken_max = coupon

    func chicken(stamp: Int, stamp_per_chicken: Int) -> Int {
        
        guard stamp >= stamp_per_chicken  else {
            return 0
        }
        
        let coupon = stamp / stamp_per_chicken
        
        let stamp_remaining = stamp/stamp_per_chicken + stamp % stamp_per_chicken
        
        return coupon + chicken(stamp: stamp_remaining, stamp_per_chicken: stamp_per_chicken)
    }

    chicken_max += chicken(stamp: coupon, stamp_per_chicken: stamp_per_chicken)
    
    print(chicken_max)

}