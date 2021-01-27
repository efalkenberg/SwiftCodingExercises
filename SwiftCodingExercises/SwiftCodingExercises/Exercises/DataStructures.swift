import UIKit

class DataStructures: NSObject {
    func stringHasUniqueCharacters(input:String) -> Bool {
        if input.count < 2 {
            return true
        }

        // this implementation uses another data structure to do the "heavy lifting"
        // of duplication detection, there is a version without a set below
        var seenChars = Set<String.Element>()
        for char in input {
            if seenChars.contains(char) {
                return false
            }
            seenChars.insert(char)
        }

        return true
    }

    func stringHasUniqueCharactersWithoutAdditionalDataStructure(input:String) -> Bool {
        if input.count < 2 {
            return true
        }

        // iterate the string and use a nested loop (O(n^2) but no additional space)
        // to look ahead and identify duplicates
        for (i, char) in input.enumerated() {
            if i >= input.count - 1 {
                return true
            }
            for k in (i+1)...(input.count-1) {
                // the ugly face of Swift's string implementation ...
                if char == input[input.index(input.startIndex, offsetBy: k)] {
                    return false
                }
            }
        }

        return true
    }
}
