import Foundation

while let s = readLine(), s != "." {
    var stack: [Character] = []
    for s in s {
        if !["[", "]", "(", ")"].contains(s) {
            continue
        }
        if s == "]" && stack.last == "[" {
            stack.removeLast()
        } else if s == ")" && stack.last == "(" {
            stack.removeLast()
        } else {
            stack.append(s)
        }
    }
    print(stack.isEmpty ? "yes" : "no")
}
