import Foundation

func getUnpaired(_ A: inout [Int]) -> Int {
    if A.count == 1 {
        return A[0]
    }

    var first = 0
    var second = 1
    var ans = 0

    A = A.sorted()

    while first < A.count && second < A.count {
        if A[first] == A[second] {
            first += 2
            second += 2
        } else {
            ans = A[first]
            break
        }
    }
    
    if ans == 0 && first == A.count - 1 {
        ans = A[first]
    }

    return ans
}

var arr = [2, 2, 3, 3, 4]

getUnpaired(&arr)
