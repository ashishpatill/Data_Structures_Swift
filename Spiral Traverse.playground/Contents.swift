import Foundation

func spiralTraverse(array: [[Int]]) -> [Int] {
// Write your code here.
    var ans:[Int] = []
    
    var rStart = 0
    var rEnd = array.count - 1
    
    var cStart = 0
    var cEnd = array[0].count - 1
    
    while cStart < cEnd && rStart < rEnd {
        
        for idx in stride(from: cStart, through: cEnd, by: 1) {
            ans.append(array[rStart][idx])
        }

        rStart += 1

        for idx in stride(from: rStart, through: rEnd, by: 1) {
            ans.append(array[idx][cEnd])
        }

        cEnd -= 1

        for idx in stride(from: cEnd, through: cStart, by: -1) {
            ans.append(array[rEnd][idx])
        }

        rEnd -= 1

        for idx in stride(from: rEnd, through: rStart, by: -1) {
            ans.append(array[idx][cStart])
        }

        cStart += 1
    }
    
    return ans
}

var arr = [
    [1, 2, 3, 4],
    [12, 13, 14, 5],
    [11, 16, 15, 6],
    [10, 9, 8, 7]
  ]

print(spiralTraverse(array: arr))
