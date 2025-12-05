import Foundation

let str = readLine()!.map{ String($0) }

var result = ""
for i in 0..<str.count {
    let ascii = Int(UnicodeScalar(str[i])!.value) - 3
    if (65...90).contains(ascii) {
        result += String(UnicodeScalar(ascii)!)
    } else {
        result += String(UnicodeScalar(ascii + 26)!)
    }
}

print(result)
