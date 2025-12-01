import Foundation

let n = Int(readLine()!)!

let str = readLine()!.map{ Character(String($0)) }

var hiddenNumbers = [Int]()

var temp = ""
for i in 0..<str.count {
    if str[i].isNumber {
        temp += String(str[i])
    } else {
        if !temp.isEmpty {
            hiddenNumbers.append(Int(temp)!)
            temp = ""
        }
    }
}
if !temp.isEmpty {
    hiddenNumbers.append(Int(temp)!)
}
print(hiddenNumbers.reduce(0, +))
