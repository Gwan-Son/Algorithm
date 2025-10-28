import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    var count = 0
    var shopCount = 0
    while let line = readLine() {
        if line == "" {
            let percent = round(Double(shopCount)/Double(count) * 1000)/10
            if percent == Double(Int(percent)) {
                print("Efficiency ratio is \(Int(percent))%.")
            } else {
                print("Efficiency ratio is \(percent)%.")
            }
            break
        }
        count += line.count
        shopCount += line.filter{ $0 != "#" }.count
    }
}
