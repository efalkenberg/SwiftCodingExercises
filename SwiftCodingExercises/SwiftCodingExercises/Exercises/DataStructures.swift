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


    /// This function returns a string with removed duplicates from the given `input`.
    ///
    /// - Given that we don't use C-Strings here, I decided not to use fancy \0 handling
    /// - Swift comes with a handy helper `rangeOfString` that I decided not to use to make
    /// things at least a bit harder
    /// - The current implementation has a complexity of O(n^2) which seems appropriate for the given
    /// context but don't throw entire Wikipedia into this!
    func removeDuplicateCharsInString(input:String) -> String {
        if input.count < 2 {
            return input
        }

        var result = ""
        // iterate the string and use a nested loop (O(n^2) but no additional space)
        // to look back and identify duplicates
        for (i, char) in input.enumerated() {
            // always append the first element
            if i == 0 {
                result.append(char)
            } else if i == 1 {
                // append the second if it's not the same as the first
                if char != input[input.index(input.startIndex, offsetBy: 0)] {
                    result.append(char)
                }
            } else {
                // look backwards and check if we've seen this one before
                var duplicate = false
                for k in (0...i-1).reversed() {
                    if char == input[input.index(input.startIndex, offsetBy: k)] {
                        duplicate = true
                        break
                    }
                }
                if !duplicate {
                    result.append(char)
                }
            }
        }

        return result
    }
}
