import UIKit

public func getBinaryGap(_ N : Int) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    let binaryStr = String(N, radix: 2)
    var maxCount = 0
    var count = 0

    for char in binaryStr {
         if char == "0" {
             count += 1
         } else if char == "1"  {
             if count > maxCount {
                 maxCount = count
             }
             count = 0
         }
    }

    return maxCount
}

getBinaryGap(1041)
