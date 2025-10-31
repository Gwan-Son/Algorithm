import Foundation

let n = Int(readLine()!)!

let str = readLine()!.map{ String($0) }

var arr = [String](repeating: "", count: n)

for i in 0..<n {
    if str[i] == "?" {
        if str[n - i - 1] != "?" {
            arr[i] = str[n - i - 1]
        } else {
            arr[i] = "a"
        }
    } else {
        arr[i] = str[i]
    }
}

print(arr.joined())
