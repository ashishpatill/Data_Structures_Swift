import Foundation

func longestPalindromicSubstring(string: String) -> String {
// Write your code here.
    let n = string.count
    if n < 2 { return string }
    
    var maxLength = 1
    var start = 0
    var low = 0
    var high = 0
    
    for i in 0 ..< n {
         // i is index of current char
         low = i - 1 // index to left char
         high = i + 1 // index of right char
        
         // if next char is same as current char, go right
         while high < n && string.charAt(high) == string.charAt(i) {
             high += 1
         }
        
         // if prev char is same as current char, go left
         while low >= 0 && string.charAt(low) == string.charAt(i) {
             low -= 1
         }
        
         // if previous and next are same, go both left and right
         while low >= 0 && high < n && string.charAt(low) == string.charAt(high) {
             low -= 1
             high += 1
         }
        
         // update maxLength
         let length = high - low - 1
         if maxLength < length {
             maxLength = length
             start = low + 1
         }

    }
    
    print(start, maxLength)
    let leftIdx = string.index(start)
    let rightIdx = string.index(start + maxLength)

    return String(string[leftIdx ..< rightIdx])
}

longestPalindromicSubstring(string: "abaxyzzyxf")

extension String {
    func index(_ index: Int) -> String.Index {
        return self.index(self.startIndex, offsetBy: index)
    }
    
    func charAt(_ index: Int) -> Character {
        let idx = self.index(index)
        return self[idx]
    }
}
