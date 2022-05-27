import Foundation

func longestPeak(array: [Int]) -> Int {
    var longestPeakLength = 0
    var i = 1
    
    while i < array.count - 1 {
        print(array[i])
        let isPeak = array[i] > array[i - 1] && array[i] > array[i+1]
        
        if !isPeak {
            i += 1
            continue //go to next iteration
        }
        
        var leftIdx = i - 2
        while leftIdx >= 0, array[leftIdx] < array[leftIdx + 1] {
            leftIdx -= 1
        }
        
        var rightIdx = i + 2
        while rightIdx < array.count, array[rightIdx] < array[rightIdx - 1] {
            rightIdx += 1
        }
        
        let currentPeakLength = rightIdx - leftIdx - 1
        if currentPeakLength > longestPeakLength {
            longestPeakLength = currentPeakLength
        }
        i = rightIdx
    }
    return longestPeakLength
}

let array = [1, 2, 3, 3, 4, 0, 10, 6, 5, -1, -3, 2, 3]
print(longestPeak(array: array))
