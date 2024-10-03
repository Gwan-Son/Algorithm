import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today = today.split(separator: ".").map{ Int($0)! }
    let year = today[0]
    let days = today[2] + (today[1] * 28)
    
    var answer: [Int] = []
    
    let termsDict = terms.map{[$0.split(separator: " ")[0] : Int($0.split(separator: " ")[1])!]}.flatMap { $0 }
    
    var number = 1
    for privacy in privacies {
        var privacy = privacy
        let category = String(privacy.removeLast())
        privacy.removeLast()
        var data = privacy.split(separator: ".").map { Int($0)! }
        
        for term in termsDict {
            if category == term.key {
                data[1] += term.value
                if data[1] > 12 {
                    if data[1] % 12 == 0 {
                        while data[1] != 12 {
                            data[0] += 1
                            data[1] -= 12
                        }
                    } else {
                        data[0] += data[1] / 12
                        data[1] = data[1] % 12
                    }
                    
                }
                
                if year > data[0] {
                    answer.append(number)
                    break
                } else if year == data[0] && days >= (data[1] * 28 + data[2]) {
                    answer.append(number)
                    break
                }
            }
        }
        number += 1
    }
    
    return answer
}
