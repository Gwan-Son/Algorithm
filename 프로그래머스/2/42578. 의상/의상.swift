import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var combi = [String: Int]()
    var result = 1
    
    for cloth in clothes {
        combi[cloth[1], default: 0] += 1
    }
    
    for value in combi.values {
        result *= (value + 1)
    }
    
    return result - 1
}