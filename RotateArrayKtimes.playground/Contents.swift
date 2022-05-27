import Foundation
import Darwin

func rotateArrKTimes( A:inout [Int], K:Int) -> [Int] {
    
    let n = A.count
    let k = K%n
    let p = n - k
    if k == 0 { return A }
    A[0...(p - 1)].reverse()
    A[p...n-1].reverse()
    A[0...n-1].reverse()
    
    return A
}

var testArr = [3, 8, 9, 7, 6]
rotateArrKTimes(A: &testArr, K: 5)
