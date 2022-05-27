import Foundation

// For example the balance of "++-+" is 2 and the balance of "+-+-" is 0.
// input array, int returns int

func getBalanceSteps(_ str: String, n: Int) -> Int {
    
    var minusCount = 0
    var plusCount = 0
    
    for char in Array(str) {
        // traverse if char are balanced
        if char == "+" {
            plusCount += 1
        } else if char == "-" {
            minusCount += 1
        }
    }

    var balance = plusCount - minusCount
    print("balance: \(balance)")
    var currentIndex = str.count - 1

    if balance == n {
        return 0
    } else if balance != n && str.count == 0 {
        return -1
    } else if balance < n && n - balance > minusCount {
        return -1
    } else if balance > n && balance - n > plusCount {
        return -1
    }
    
    while balance != n {
        if Array(str)[currentIndex] == "-" {
            balance += 1
        } else {
            balance -= 1
        }
        currentIndex -= 1
    }

    return str.count - 1 - currentIndex
}

// Time Complexity : O(n)
// Space Complexity : O

var testStr = "+++-++-++--+-++++-+--++-++-+-++++-+++--"
getBalanceSteps(testStr, n: 12)

var testStr2 = "--++"
getBalanceSteps(testStr2, n: -2)
