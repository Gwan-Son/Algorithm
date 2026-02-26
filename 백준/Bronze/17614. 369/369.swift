let n = Int(readLine()!)!

var result = 0

for i in 1...n {
    let temp = String(i).map{ String($0) }
    if temp.contains("3") || temp.contains("6") || temp.contains("9") {
        result += 1
    }
}

print(result)