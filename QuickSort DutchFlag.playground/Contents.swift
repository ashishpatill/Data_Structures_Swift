import Foundation

func quickSort(_ array: inout [Int]) -> [Int] {
// Write your code here.
    var low = 0
    var high = array.count - 1
    
    quickSortDutchFlag(&array, low: low, high: high)
    
    return array
}

func quickSortDutchFlag(_ array: inout [Int], low: Int, high: Int) {
    if low < high {
        let pivotIndex = Int.random(in: low..<high)
        let (p,q) = partition(&array, low: low, high: high, pivotIndex: pivotIndex)
        quickSortDutchFlag(&array, low: low, high: p - 1)
        quickSortDutchFlag(&array, low: q + 1, high: high)
    }
}

func partition(_ array: inout [Int], low: Int, high: Int, pivotIndex: Int) -> (Int, Int) {
    var low = low
    var equal = low
    var high = high
    
    let pivot = array[pivotIndex]
    
    while equal <= high {
        if array[equal] < pivot {
            array.swapAt(low, equal)
            low += 1
            equal += 1
        } else if array[equal] == pivot {
            equal += 1
        } else {
            array.swapAt(equal, high)
            high -= 1
        }
    }
    
    print(array)
    
    return(low, high)
}

var arr = [8, 5, 2, 9, 5, 6, 3]
quickSort(&arr)
