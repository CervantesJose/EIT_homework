import UIKit

func brackets(s: String) -> Bool {
    let pairs: [Character: Character] = [ "(": ")", "[": "]", "{": "}" ]
    var stack: [Character] = []
    
    for char in s {
        if let match = pairs[char] {
            stack.append(match)
        } else if stack.last == char {
            stack.popLast()
        } else {
            return false
        }
    }
    
    return stack.isEmpty
}

brackets(s: "()")
brackets(s: "()[]{}")
brackets(s: "(]")
