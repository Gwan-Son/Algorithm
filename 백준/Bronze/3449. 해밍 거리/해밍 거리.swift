let t = Int(readLine()!)!

for _ in 0..<t {
    let a = readLine()!.map{ Int(String($0))! }
    let b = readLine()!.map{ Int(String($0))! }

    var result = 0
    for i in 0..<a.count {
        if a[i] != b[i] {
            result += 1
        }
    }
    print("Hamming distance is \(result).")
}