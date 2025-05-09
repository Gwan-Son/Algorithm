import Foundation

let n = Int(readLine()!)!

let input = readLine()!.map{ String($0) }
let letters = ["y","u","i","o","p","h","j","k","l","b","n","m"]

if letters.contains(input.last!) {
    print("0")
} else {
    print("1")
}