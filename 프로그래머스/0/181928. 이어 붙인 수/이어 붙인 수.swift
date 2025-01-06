import Foundation

func solution(_ num_list:[Int]) -> Int {
    let odd: String = {
        var tempOddString = ""
        for i in num_list {
            if i % 2 == 1 {
                tempOddString += String(i)
            }
        }
        return tempOddString
    }()
    let even: String = {
        var tempEvenString = ""
        for i in num_list {
            if i % 2 == 0 {
                tempEvenString += String(i)
            }
        }
        return tempEvenString
    }()
    
    return Int(odd)! + Int(even)!
}