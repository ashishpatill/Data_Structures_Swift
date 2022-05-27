import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var charDict:[Character:Int] = [:]
    var maxLength = 0
    var lastRepeatIndex = -1
    
    for (index,char) in s.enumerated() {
        if charDict[char] != nil && charDict[char]! > lastRepeatIndex {
            lastRepeatIndex = charDict[char]!
        }
        
        maxLength = max(index - lastRepeatIndex, maxLength)
        charDict[char] = index
    }
    return maxLength
}

lengthOfLongestSubstring("abcabcbb")
