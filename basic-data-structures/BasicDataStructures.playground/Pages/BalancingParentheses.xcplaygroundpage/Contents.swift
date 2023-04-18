func isBalanced(expression: String) -> Bool {
    var stack = Stack<Character>()

    for character in expression {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}


let expr1 = "(1 + 2) * (3 + 4)"
let expr2 = "(1 + 2 * (3 + 4)"

print("\(expr1) is \(isBalanced(expression: expr1) ? "balanced" : "not balanced")" )
print("\(expr2) is \(isBalanced(expression: expr2) ? "balanced" : "not balanced")" )

