import Foundation

let n = Int(readLine()!)!
let times = readLine()!.split(separator: " ").map { Int($0)! }

let youngsik = times.reduce(0) { $0 + (($1 / 30) + 1) * 10 }
let minsik = times.reduce(0) { $0 + (($1 / 60) + 1) * 15 }

if youngsik < minsik {
    print("Y \(youngsik)")
} else if minsik < youngsik {
    print("M \(minsik)")
} else {
    print("Y M \(youngsik)")
}