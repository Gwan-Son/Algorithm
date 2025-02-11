import Foundation

let input = readLine()!.map{ String($0) }

if !input.contains("0") {
    print(-1)
} else {
    var sum: Int64 = 0
    for i in input {
        sum += Int64(String(i))!
    }
    
    if sum % 3 != 0 {
        print(-1)
    } else {
        let arr = input.sorted{ $0 > $1}
        print(arr.joined())
    }
}