import Foundation

func solution(_ numbers:[Int]) -> String {
    let temp = numbers.sorted {
        Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }
    let result = temp.map{ String($0) }.joined()
    return result.first! == "0" ? "0" : result
}

/*
func compare(_ a: String, _ b: String) -> Bool {
        return a + b > b + a
    }
    
    let numbers = numbers.map{ String($0) }.sorted(by: compare)
    return numbers[0] == "0" ? "0" : numbers.reduce("", +)
*/