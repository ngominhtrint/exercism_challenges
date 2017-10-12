import Foundation

class BinarySearch {
    
    var list: [Int]
    
    init(_ array: [Int]) throws {
        self.list = array
        
        for index in 0..<array.count {
            let nextIndex = index + 1
            guard nextIndex != array.count else {
                break
            }
            
            if array[index] > array[nextIndex] {
                throw BinarySearchError.unsorted
            }
        }
    }
    
    // Normal way
    func searchFor(_ element: Int) -> Int? {
        var searchIndex: Int = 0

        for index in 0..<list.count {
            if list[index] == element {
                searchIndex = index
                break
            }
        }

        return searchIndex != 0 ? searchIndex : nil
    }
    
    // Binary way
    func searchFor(key: Int) -> Int? {
        var lowerBound = 0
        var upperBound = list.count
        while lowerBound < upperBound {
            let midIndex = lowerBound + (upperBound - lowerBound) / 2
            if list[midIndex] == key {
                return midIndex
            } else if list[midIndex] < key {
                lowerBound = midIndex + 1
            } else {
                upperBound = midIndex
            }
        }
        return nil
    }
    
    var middle: Int {
        let lowerBound = 0
        let upperBound = list.count
        return lowerBound + (upperBound - lowerBound) / 2
    }
}

enum BinarySearchError: Error {
    case unsorted
}

