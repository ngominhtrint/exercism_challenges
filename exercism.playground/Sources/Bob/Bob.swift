import Foundation

class Bob {

    static func hey(_ message: String) -> String {
        let input = message.condensedWhitespace

        guard !input.isEmpty else {
            return Response.nothing.rawValue
        }
        
        let characters = Array(input.characters)
        var lowerCharacters = [Character]()
        characters.forEach { item in
            if item.isLower {
                lowerCharacters.append(item)
            }
        }
        
        guard lowerCharacters.count != 0 && !input.isNumber else {
            return Response.yell.rawValue
        }

        guard let last = characters.last, last != "?" && !input.isNumber else {
            return Response.question.rawValue
        }

        return Response.whatever.rawValue
    }
    
    enum Response: String {
        case question = "Sure."
        case yell = "Whoa, chill out!"
        case nothing = "Fine. Be that way!"
        case whatever = "Whatever."
    }
}

extension String {
    var condensedWhitespace: String {
        let components = self.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }
    
    var isNumber: Bool {
        return self.range(of: "[0-9]", options: .regularExpression) != nil
    }
}

extension Character {
    var isLower: Bool {
        return String(self).range(of: "[a-zä]", options: .regularExpression) != nil
    }
}
