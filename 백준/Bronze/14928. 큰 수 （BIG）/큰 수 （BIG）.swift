import Foundation

let mod = 20000303
if let s = readLine() {
    var result = 0
    for ch in s {
        if let digit = ch.wholeNumberValue {
            result = (result * 10 + digit) % mod
        }
    }
    print(result)
}
