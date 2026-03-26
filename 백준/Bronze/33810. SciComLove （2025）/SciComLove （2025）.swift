let str = readLine()!.map{ String($0) }
let origin = ["S","c","i","C","o","m","L","o","v","e"]
var count = 0

for i in 0..<str.count {
    if str[i] != origin[i] {
        count += 1
    }
}

print(count)