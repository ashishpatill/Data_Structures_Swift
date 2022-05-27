import UIKit

func isPalindrome(string: String) -> Bool {
    // Write your code here.
        var start = 0
        var end = string.count - 1
        
        var startIdx = string.index(string.startIndex, offsetBy: start)
        var endIdx = string.index(string.startIndex, offsetBy: end)
        
        while start < end {
            if string[startIdx] != string[endIdx] { return false }
            
            start += 1
            end -= 1
        }
    return true
  }
