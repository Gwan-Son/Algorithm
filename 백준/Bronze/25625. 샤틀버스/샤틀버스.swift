let xy = readLine()!.split(separator: " ").map{ Int(String($0))! }
let x = xy[0], y = xy[1]

if x > y {
    print(x + y)
} else {
    print(y - x)
}