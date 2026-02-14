let t = Int(readLine()!)!

for _ in 0..<t {
    var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.sort()
    _ = arr.removeFirst()
    _ = arr.removeLast()
    if arr.last! - arr.first! >= 4 {
        print("KIN")
    } else {
        print(arr.reduce(0, +))
    }
}