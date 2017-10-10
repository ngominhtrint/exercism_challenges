import Foundation

class SumOfMultiples {
    
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        var numberInMutiples = [Int]()
        inMultiples.forEach { multiple in
            //Avoid divide by zero
            guard multiple != 0 else { return }
            (0..<limit).forEach{ number in
                if number % multiple == 0 {
                    numberInMutiples.append(number)
                }
            }
        }

        // Remove duplicate values and sort by ascending
        numberInMutiples = Array(Set(numberInMutiples)).sorted()
        return numberInMutiples.reduce(0) { $0 + $1 }
    }
}
