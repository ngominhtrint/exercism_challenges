import Foundation

class Grains {
    
    static func square(_ number: Int) throws -> Float {
        guard number < 65 else {
            throw GrainsError.inputTooHigh(message: "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        guard number > 0 else {
            throw GrainsError.inputTooLow(message: "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        return pow(2, Float(number) - 1)
    }
    
    enum GrainsError: Error {
        case inputTooHigh(message: String)
        case inputTooLow(message: String)
    }
    
    static var total: Float {
        var sum: Float = 0
        
        for index in 0..<65 {
            do {
                sum += try Grains.square(index)
            } catch { }
        }
        
        return sum
    }
}
