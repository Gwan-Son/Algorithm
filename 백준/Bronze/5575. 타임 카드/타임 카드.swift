import Foundation

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var hour = input[3] - input[0]
    var minute = input[4] - input[1]
    var second = input[5] - input[2]
    
    if second < 0 {
        minute -= 1
        second += 60
    }
    
    if minute < 0 {
        hour -= 1
        minute += 60
    }
    
    print("\(hour) \(minute) \(second)")
}
