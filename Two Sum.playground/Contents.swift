import Foundation

var array = [3, 5, -4, 8, 11, 1, -1, 6]

// Time Complexity : O(n)
// Space Complexity : O(n) - more space
func twoSumOptimisedTime(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    // Write your code here.
    var dict: [Int:Bool] = [:]
    
    for val in array {
        if dict[targetSum - val] == true {
            return [val, targetSum - val]
        } else {
            dict[val] = true
        }
    }
    return []
}

twoSumOptimisedTime(&array, 10)
twoSumOptimisedTime(&array, 13)

// Time Complexity : O(nlog(n)) - more time
// Space Complexity : O(1)
func twoSumOptimisedSpace(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    // Write your code here.
        
        var lp = 0
        var rp = array.count - 1
        
        array = array.sorted()
        
        while lp < rp {
            if array[lp] + array[rp] < targetSum {
                lp += 1
            } else if array[lp] + array[rp] > targetSum {
                rp -= 1
            } else {
                return [array[lp], array[rp]]
            }
        }
        
    return []
  }

twoSumOptimisedSpace(&array, 10)
twoSumOptimisedSpace(&array, 13)
