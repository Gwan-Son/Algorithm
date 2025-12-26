import Foundation

while let input = readLine() {
    let input = input.components(separatedBy: " ").map{ Int(String($0))! }
    let a = input[0], b = input[1]
    if a == 0 && b == 0 { break }
    let result = a / b
    let divide = a % b
    
    print("\(result) \(divide) / \(b)")
}
