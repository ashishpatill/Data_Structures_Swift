import Foundation

func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
    // Write your code here.
    var winnerScore: [String:Int] = [:]
    var maxScore = 0
    var maxWinner = ""
    
    for (idx,val) in results.enumerated() {
        var winner = ""
        if val == 1 {
            winner = competitions[idx][0]
        } else {
            winner = competitions[idx][1]
        }
        
        if var score = winnerScore[winner] {
            winnerScore[winner]! += 3
            score += 3
            if maxScore < score {
                maxScore = score
                maxWinner = winner
            }
        } else {
            winnerScore[winner] = 3
            if maxScore < 3 {
                maxWinner = winner
            }
        }
    }
    
    return maxWinner
}

let competitions = [
    ["Bulls", "Eagles"]
]
 
let results = [1]

tournamentWinner(competitions, results)

