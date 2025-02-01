import Foundation

func solution(_ numbers:[Int]) -> String {
    func compare(_ a: String, _ b: String) -> Bool {
        return a + b > b + a
    }
    
    let numbers = numbers.map{ String($0) }.sorted(by: compare)
    return numbers[0] == "0" ? "0" : numbers.reduce("") { $0 + $1 }
}