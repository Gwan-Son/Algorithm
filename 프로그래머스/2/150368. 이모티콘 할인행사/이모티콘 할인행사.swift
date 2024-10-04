import Foundation

func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
    let salePercent = [10,20,30,40]
    var allPrices: [[Int]] = []
    var result = [0,0]
    
    func calculateAllPirces(_ arr: [Int]) {
        if arr.count == emoticons.count {
            allPrices.append(arr)
            return
        }
        for i in 0..<4 {
            var tempArr = arr
            tempArr.append(salePercent[i])
            calculateAllPirces(tempArr)
        }
    }
    
    calculateAllPirces([])
    
    for price in allPrices {
        var plusUser = 0
        var totalPrice = 0
        for user in users {
            var tempSales = 0
            for index in 0..<price.count {
                if price[index] >= user[0] {
                    tempSales += emoticons[index] - (emoticons[index] * price[index] / 100)
                }
            }
            if tempSales >= user[1] {
                plusUser += 1
            } else {
                totalPrice += tempSales
            }
        }
        
        if result[0] == plusUser {
            if result[1] < totalPrice {
                result = [plusUser, totalPrice]
            }
        } else if result[0] < plusUser {
            result = [plusUser, totalPrice]
        }
    }
    
    
    return result
}