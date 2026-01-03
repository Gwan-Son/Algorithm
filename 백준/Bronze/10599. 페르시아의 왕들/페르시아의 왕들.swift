import Foundation

while let input = readLine() {
    let arr = input.split(separator: " ").map{ Int(String($0))! }
    if arr.filter({ $0 == 0 }).count == 4 { break }
    
    let maxAge = arr[3] - arr[0]
    let minAge = arr[2] - arr[1]
    
    print("\(minAge) \(maxAge)")
}
