import Foundation

let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nm[0], m = nm[1]

var students = [(String, String, String)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    students.append((input[0], input[1], input[2]))
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    var filtered = students
    
    if input[0] != "-" {
        filtered = filtered.filter{ $0.0 == input[0] }
    }
    
    if input[1] != "-" {
        filtered = filtered.filter{ $0.1 == input[1]}
    }
    
    if input[2] != "-" {
        filtered = filtered.filter{ $0.2 == input[2] }
    }
    
    print(filtered.count)
}
