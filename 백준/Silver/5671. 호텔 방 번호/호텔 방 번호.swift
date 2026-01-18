import Foundation

while let input = readLine() {
    let nm = input.split(separator: " ").map{ Int(String($0))! }
    let n = nm[0], m = nm[1]
    var result = 0
    
    for i in n...m {
        let str = Array(String(i))
        let strCount = str.count
        var strSet = Set<Character>()
        
        for i in 0..<strCount {
            strSet.insert(str[i])
        }
        if strCount == strSet.count {
            result += 1
        }
    }
    
    print(result)
}
