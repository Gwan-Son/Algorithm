let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = input[0], t = input[1]

let result = 10 + 2 * (25 - a + t)

if result < 0 {
    print(0)
} else {
    print(result)
}