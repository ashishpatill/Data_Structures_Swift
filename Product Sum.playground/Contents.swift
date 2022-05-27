import Foundation

func productSum(_ array: [Any]) -> Int {
    // Write your code here.
    return getSum(array, 1)
}

func getSum(_ arr: [Any], _ m: Int) -> Int {
    var sum = 0
    for val in arr {
        if let val = val as? Int {
            sum += val
        } else if let arr = val as? [Any] {
            let tempSum = getSum(arr, m + 1)
            sum += tempSum
        }
    }
    return sum * m
}

let input:[Any] = [5, 2, [7, -1], 3, [6, [-13, 8], 4]]
productSum(input)
