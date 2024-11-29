import Foundation

let studentCount = Int(readLine()!)!
var students = [[Int]](repeating: [], count: studentCount)
var sameClassStudent = [Int: [Int]]()

for i in 0..<studentCount {
    students[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}


for i in 0..<students.count {
    for j in i..<students.count {
        for k in 0..<students[i].count {
            if students[i][k] == students[j][k] && sameClassStudent[i + 1, default: []].contains(j + 1) == false {
                sameClassStudent[i + 1, default: []].append(j + 1)
                sameClassStudent[j + 1, default: []].append(i + 1)
            }
        }
    }
}

var answer = 0
var maxCount = 0
for i in 0..<sameClassStudent.count {
    if maxCount < sameClassStudent[i+1]!.count {
        maxCount = sameClassStudent[i+1]!.count
        answer = i + 1
    }
}

print(answer)
