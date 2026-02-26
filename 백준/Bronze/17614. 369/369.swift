import Foundation

func solution() {
    guard let input = readLine(), let n = Int(input) else { return }
    
    var totalClaps = 0
    
    for i in 1...n {
        var currentNum = i
        
        while currentNum > 0 {
            let digit = currentNum % 10
            
            if digit == 3 || digit == 6 || digit == 9 {
                totalClaps += 1
            }
            
            currentNum /= 10
        }
    }
    
    print(totalClaps)
}

solution()