/**
 * Reference to http://exercism.io/exercises/swift/rna-transcription/test-suite
 */
import XCTest

public class RnaTranscriptionTests: XCTestCase {
    func testRnaComplementOfCytosineIsGuanine() {
        XCTAssertEqual("G", try Nucleotide("C").complementOfDNA())
    }
    
    func testRnaComplementOfGuanineIsCytosine() {
        XCTAssertEqual("C", try Nucleotide("G").complementOfDNA())
    }
    
    func testRnaComplementOfThymineIsAdenine() {
        XCTAssertEqual("A", try Nucleotide("T").complementOfDNA())
    }
    
    func testRnaComplementOfAdenineIsUracil() {
        XCTAssertEqual("U", try Nucleotide("A").complementOfDNA())
    }
    
    func testRnaComplement() {
        XCTAssertEqual("UGCACCAGAAUU", try Nucleotide("ACGTGGTCTTAA").complementOfDNA())
    }
    
    func testInvalidRnaComplementOfUracil() {
        XCTAssertThrowsError(try Nucleotide("U").complementOfDNA())
        XCTAssertThrowsError(try Nucleotide("U").complementOfDNA(), "This didn't work") { (error) in
            XCTAssertEqual(error as? RnaTranscription.TranscriptionError, RnaTranscription.TranscriptionError.invalidNucleotide)
        }
    }
    
    func testInvalidRnaComplementOfXXX() {
        XCTAssertThrowsError(try Nucleotide("XXX").complementOfDNA())
        XCTAssertThrowsError(try Nucleotide("XXX").complementOfDNA(), "This didn't work") { (error) in
            XCTAssertEqual(error as? RnaTranscription.TranscriptionError, RnaTranscription.TranscriptionError.invalidNucleotide)
        }
    }
    
    func testInvalidRnaComplementOfACGTXXXCTTAA() {
        XCTAssertThrowsError(try Nucleotide("ACGTXXXCTTAA").complementOfDNA())
        XCTAssertThrowsError(try Nucleotide("ACGTXXXCTTAA").complementOfDNA(), "This didn't work") { (error) in
            XCTAssertEqual(error as? RnaTranscription.TranscriptionError, RnaTranscription.TranscriptionError.invalidNucleotide)
        }
    }
}
