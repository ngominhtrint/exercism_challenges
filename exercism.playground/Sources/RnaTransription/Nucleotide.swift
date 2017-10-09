import Foundation

class Nucleotide {
    
    let dnaNucleotide = ["G", "C", "T", "A"]
    var element: String
    
    init(_ element: String) {
        self.element = element
    }
    
    func complementOfDNA() throws -> String {
        
        let dna = Array(element.characters)
        
        try dna.forEach { item in
            guard dnaNucleotide.contains(String(item)) else {
                throw RnaTranscription.TranscriptionError.invalidNucleotide
            }
        }
        
        let rna = dna.map { item -> String in
            switch item {
            case "G": return "C"
            case "C": return "G"
            case "T": return "A"
            case "A": return "U"
            default: return ""
            }
        }
        
        return rna.joined()
    }
}

class RnaTranscription {
    
    enum TranscriptionError: Error {
        case invalidNucleotide
    }
}
