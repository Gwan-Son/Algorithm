import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var currentSection = section[0]
    var count = 1
    
    for section in section {
        if currentSection + (m - 1) < section {
            currentSection = section
            count += 1
        }
    }
    
    return count
}