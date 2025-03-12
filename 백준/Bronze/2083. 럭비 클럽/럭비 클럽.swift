import Foundation

while let input = readLine() {
    var arr = input.components(separatedBy: " ").map{ String($0) }
    if arr == ["#", "0", "0"] {
        break
    }
    if Int(arr[1])! > 17 || Int(arr[2])! >= 80 {
        print("\(arr[0]) Senior")
    } else {
        print("\(arr[0]) Junior")
    }
}
