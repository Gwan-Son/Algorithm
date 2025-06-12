let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1]

if n * 100 >= m {
    print("Yes")
} else {
    print("No")
}