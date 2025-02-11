import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let a = Array(input[0]).sorted()
    let b = Array(input[1]).sorted()
    var isAnagram = false
    if a == b {
        isAnagram = true
    }
    print("\(input[0]) & \(input[1]) are",terminator: " ")
    isAnagram ? print("anagrams.") : print("NOT anagrams.")
}
