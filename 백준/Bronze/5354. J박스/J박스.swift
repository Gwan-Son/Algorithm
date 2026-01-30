import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    
    if n > 1{
        print(String(repeating: "#", count: n))
        
        if n > 2 {
            for _ in 0..<n - 2 {
                print("#", terminator: "")
                print(String(repeating: "J", count: n - 2), terminator: "")
                print("#")
            }
        }
        
        
        print(String(repeating: "#", count: n))
    } else {
        print("#")
    }
    print()
}
