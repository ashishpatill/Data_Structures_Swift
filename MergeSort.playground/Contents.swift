import Foundation


func mergeSort(_ array: inout [Int]) -> [Int] {
    // Write your code here.
    guard array.count > 1 else { return array }
    
    let middleIdx = array.count/2
    var leftArray = Array(array[0..<middleIdx])
    var rightArray = Array(array[middleIdx..<array.count])
    return merge(mergeSort(&leftArray), mergeSort(&rightArray))
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
     var mergedArray:[Int] = []
    
     var left = left
     var right = right
    
     while left.count > 0 && right.count > 0 {
         if left.first! < right.first! {
             mergedArray.append(left.removeFirst())
         } else {
             mergedArray.append(right.removeFirst())
         }
     }
    
     return mergedArray + left + right
}



var arr = [8, 5, 2, 9, 5, 6, 3]
print(mergeSort(&arr))
