import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = input[0], b = input[1], c = input[2]

var result = 0
if a == 0 {
	result = c * c - b
} else if b == 0 {
	result = c * c - a
} else {
	result = Int(sqrt(Double(a + b)))
}
print(result)