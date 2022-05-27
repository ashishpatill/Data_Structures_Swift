import Foundation

//i18n, internationalisation
//f2e3k, facebook
func check(_ pattern:String, _ input: String) -> String {
    
    var idx = 0
    for val in pattern {
        if let i = Int(String(val)) {
            
        } else {
            let index = input.index(String.startIndex, offsetBy: idx)
            if input[index] != val {
                return false
            }
        }
    }
}
