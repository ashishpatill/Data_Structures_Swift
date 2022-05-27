import Foundation

// Step 1 - Make all properties in Movie below non-optional and write a memberwise initializer
class Movie {
    var name: String
    var releaseYear: Int
    
    // 0-5 out of 5
    var review: Int
    var genre: Genre
    
    var displayName: String {
      return "\(self.name) \(self.releaseYear)"
    }
  
    init(name: String, releaseYear: Int,review: Int, genre: Genre) {
      self.name = name
      self.releaseYear = releaseYear
      self.review = review
      self.genre = genre
    }
}

enum Genre {
  case action
  case comedy
  case other(String)
}

// Step 2 - Create an enumeration called Genre with three cases action, comedy, and other (which has an associated value of type String). Add it as a required property on Movie above and add it to the initializer.

// Step 3 - Add a read only computed property "displayName" to Movie above which returns the name and the release year.
let avengers = Movie(name: "Avengers", releaseYear: 2018, review: 5, genre: .action)
print(avengers.displayName) // "Avengers 2018"

// Step 4 - Make the code below work.

let matrix = Movie(name: "The Matrix", releaseYear: 1999, review: 4, genre: .action)
let movies: [Movie] = [avengers, matrix]
print(movies.averageReview) // 4.5

extension Array where Element == Movie {
  var averageReview: Float {
    var temp: Float = 0.0
    for element in self {
      
      temp += Float(element.review)
    }
    
    return temp / Float(self.count)
  }
}
