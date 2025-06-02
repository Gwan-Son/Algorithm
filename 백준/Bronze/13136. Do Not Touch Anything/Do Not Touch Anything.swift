let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let r = input[0], c = input[1], n = input[2]

var x = 0
var y = 0
if r % n != 0 {
	x = (r / n) + 1
} else {
    x = r / n
}

if c % n != 0 {
    y = (c / n) + 1
} else {
    y = c / n
}

print(x * y)