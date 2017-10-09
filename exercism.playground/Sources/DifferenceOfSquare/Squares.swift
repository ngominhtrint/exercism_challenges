import Foundation

class Squares {
 
    var number: Int
    
    init(_ number: Int) {
        self.number = number
    }
    
    var sumOfSquares: Int {
        return (0...number).map { $0 * $0}.reduce(0) { (x, y) in
            return x + y
        }
    }
    
    var squareOfSums: Int {
        let sum = (0...number).reduce(0) { (x, y) in
            return x + y
        }
        return sum * sum
    }
    
    var differenceOfSquares: Int {
        return abs(sumOfSquares - squareOfSums)
    }
}
