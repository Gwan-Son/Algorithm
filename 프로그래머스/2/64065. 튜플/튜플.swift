import Foundation

func solution(_ s:String) -> [Int] {
    var results: [Int] = []
    var tuples: [[Int]] = []
    var s_copy = s.replacingOccurrences(of: "{", with: "[")
    s_copy = s_copy.replacingOccurrences(of: "}", with: "]")

    if let data = s_copy.data(using: .utf8), let nestedArray = try? JSONDecoder().decode([[Int]].self, from: data) {
        tuples = nestedArray
    }

    tuples.sort { $0.count <  $1.count }

    for i in tuples.enumerated() {
        for j in i.element {
            if !results.contains(j) {
                results.append(j)
            }
        }
    }
    
    return results
}