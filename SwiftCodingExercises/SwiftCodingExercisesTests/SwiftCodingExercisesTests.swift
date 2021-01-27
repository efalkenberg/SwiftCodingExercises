import XCTest
@testable import SwiftCodingExercises

class SwiftCodingExercisesTests: XCTestCase {

    var dataStructuresExercise = DataStructures()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDsStringHasUniqueCharacters() {
        XCTAssert(dataStructuresExercise.stringHasUniqueCharacters(input: ""))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharacters(input: "a"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharacters(input: "ab"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharacters(input: "ab1"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharacters(input: "💥a"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharacters(input: "What's up?"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharacters(input: "aa"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharacters(input: "aba"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharacters(input: "👑👑"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharacters(input: "👑a👑"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharacters(input: "a👑a"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharacters(input: "What what?"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharacters(input: "What??"))
    }

    func testDsStringHasUniqueCharactersWithoutAdditionalDataStructure() {
        XCTAssert(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: ""))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "a"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "ab"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "ab1"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "💥a"))
        XCTAssert(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "What's up?"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "aa"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "aba"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "👑👑"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "👑a👑"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "a👑a"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "What what?"))
        XCTAssertFalse(dataStructuresExercise.stringHasUniqueCharactersWithoutAdditionalDataStructure(input: "What??"))
    }

    func testRremoveDuplicateCharsInString() {
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: ""), "")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: " "), " ")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "  "), " ")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "a"), "a")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "aa"), "a")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "aba"), "ab")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "abab"), "ab")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "baaaaaaaaaaaaaaaaaaaaab"), "ba")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "🤔"), "🤔")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "🤔🤔"), "🤔")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "🤔a"), "🤔a")
        XCTAssertEqual(dataStructuresExercise.removeDuplicateCharsInString(input: "abcdefghijklmnopqrstuvwxyz"), "abcdefghijklmnopqrstuvwxyz")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
