import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

if a == 60 && b == 60 && c == 60 {
    print("Equilateral")
} else if a+b+c == 180 && (a == b || b == c || c == a) {
    print("Isosceles")
} else if a+b+c == 180 && a != b && b != c && c != a {
    print("Scalene")
} else {
    print("Error")
}
