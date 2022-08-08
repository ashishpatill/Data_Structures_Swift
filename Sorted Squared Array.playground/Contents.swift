import Foundation

func sortedSquares(_ nums: [Int]) -> [Int] {
    var start = 0
    var end = nums.count - 1
    var ans = nums
    
    for idx in stride(from: nums.count - 1, through: 0, by: -1) {
        let first = nums[start] * nums[start]
        let last = nums[end] * nums[end]
        
        if abs(last) > abs(first) {
            ans[idx] = last
            end -= 1
        } else {
            ans[idx] = first
            start += 1
        }
    }
    
    return ans
}

let ans = sortedSquares([-4,-1,0,3,10])
print(ans)
