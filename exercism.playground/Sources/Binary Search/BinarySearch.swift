import Foundation

class BinarySearch {
    
    var list: [Int]
    
    init(_ array: [Int]) throws {
        self.list = array
        
        for index in 0..<array.count {
            let nextIndex = index + 1
            guard nextIndex == array.count else {
                break
            }
            
            if array[index] > array[nextIndex] {
                throw BinarySearchError.unsorted
            }
        }
    }
    
    func searchFor(_ element: Int) -> Int {
        var index = 0
        return 0
    }
    
    var middle: Int {
        return 3
    }
}

enum BinarySearchError: Error {
    case unsorted
}
