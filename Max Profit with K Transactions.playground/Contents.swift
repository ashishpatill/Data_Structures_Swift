import Foundation

func maxProfitWithKTransactions(_ prices: [Int], _ k: Int) -> Int {
    // Write your code here.
    var first = 0
    var second = 1
    var maxProfit = 0
    var tempProfit = 0
    var transactionCount = 0
    
    while second < prices.count && transactionCount < k {
        
        if prices[second] > prices[first] && second < prices.count - 1 {
            tempProfit += prices[second] - prices[first]
            print(prices[first], prices[second], maxProfit)
        } else {
            if prices[second] > prices[first] && second == prices.count - 1 {
                tempProfit = prices[second] - prices[first]
            }
            
            transactionCount += 1
            maxProfit += tempProfit
            tempProfit = 0
            print("k:", transactionCount)
            first = second
        }
        
        second += 1

    }
    return maxProfit
}

let prices = [3,2,5,7,1,3,7]
let k = 2

maxProfitWithKTransactions(prices, 2)
