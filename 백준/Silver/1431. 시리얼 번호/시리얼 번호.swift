import Foundation

let n = Int(readLine()!)!

var arr = [String]()

for _ in 0..<n {
    arr.append(readLine()!)
}

arr.sort {
    if $0.count != $1.count {
        return $0.count < $1.count
    } else if $0.count == $1.count {
        let temp1 = $0.filter{ $0.isNumber }.map{ Int(String($0))! }.reduce(0, +)
        let temp2 = $1.filter{ $0.isNumber }.map{ Int(String($0))! }.reduce(0, +)
        if temp1 < temp2 { return true }
        else if temp1 == temp2 { return $0 < $1 }
        else { return false }
    } else {
        return $0 < $1
    }
}

arr.forEach {
    print($0)
}
