import Foundation

let str = readLine()!
let keyword = readLine()!

var temp = ""

for i in str {
    if !i.isNumber {
        temp += String(i)
    }
}

if temp.contains(keyword) {
    print(1)
} else {
    print(0)
}