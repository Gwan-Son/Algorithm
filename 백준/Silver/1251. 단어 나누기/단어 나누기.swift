import Foundation

let word = readLine()!
var arr = Array(word)
var result = [String]()

for i in 1..<arr.count - 1 {
    let first = arr[0..<i].reversed()
    for j in i+1..<arr.count {
        let temp1 = arr[i..<j].reversed()
        let temp2 = arr[j..<arr.count].reversed()
        result.append(String(first) + String(temp1) + String(temp2))
    }
}

result.sort()
print(result.first!)
