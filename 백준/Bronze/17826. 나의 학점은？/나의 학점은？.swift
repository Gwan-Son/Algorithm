import Foundation

let arr = readLine()!.split(separator: " ").map{ Int($0)! }
let score = Int(readLine()!)!
let grade = arr.firstIndex(of: score)! + 1

if (1...5) ~= grade {
    print("A+")
} else if (6...15) ~= grade {
    print("A0")
} else if (16...30) ~= grade {
    print("B+")
} else if (31...35) ~= grade {
    print("B0")
} else if (36...45) ~= grade {
    print("C+")
} else if (46...48) ~= grade {
    print("C0")
} else {
    print("F")
}