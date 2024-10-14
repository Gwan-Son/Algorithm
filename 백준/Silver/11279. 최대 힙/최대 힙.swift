let N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
    let data = Int(readLine()!)!
    if data == 0 {
        if arr.count == 0 { print(0) }
        else {
            var max = 0, index = 0
            for i in 0..<arr.count {
                if arr[i] > max {
                    max = arr[i]
                    index = i
                }
            }
            arr[index] = 0
            print(max)
        }
    } else {
        arr.append(data)
    }
}
