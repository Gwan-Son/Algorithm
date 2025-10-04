import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var days = 0
    var wantedThings = [String: Int]()
    
    for (word, number) in zip(want, number) {
        wantedThings[word, default: 0] = number
    }
    
    // 할인물품 개수 부족 - 조기종료
    for (word, number) in wantedThings {
        if discount.filter{ $0 == word }.count < number {
            return 0
        }
    }
    
    var discountThings = [String: Int]()
    for (word, _) in wantedThings {
        discountThings[word, default: 0] = discount[0...9].filter{ $0 == word }.count
    }
    
    var index = 0
    while index + 10 <= discount.count {
        var canBuy = true
        for (word, number) in wantedThings {
            if discountThings[word, default: 0] < wantedThings[word]! {
                canBuy = false
            }
        }
        if canBuy { days += 1 }
        if discountThings[discount[index]] != nil {
            discountThings[discount[index], default: 0] -= 1
        }
        index += 1
        if index + 10 <= discount.count { 
            if discountThings[discount[index + 9]] != nil {
            discountThings[discount[index + 9], default: 0] += 1
            }   
        }
    }
    
    return days
}