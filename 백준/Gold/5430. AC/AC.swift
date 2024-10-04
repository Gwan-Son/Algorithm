let t = Int(readLine()!)!

for _ in 1...t {
    let command = readLine()!
    var n = Int(readLine()!)!
    let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map{ String($0) }
    var isReverse = false
    var head = 0
    for command in command {
        if command == "R" {
            isReverse.toggle()
            continue
        }
        if isReverse {
            n -= 1
        } else {
            head += 1
        }
        if head > n { break }
    }
    
    if head > n {
        print("error")
    } else {
        if isReverse {
            print("[\(arr[head..<n].reversed().joined(separator: ","))]")
        } else {
            print("[\(arr[head..<n].joined(separator: ","))]")
        }
    }
}