import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer: Int64 = 0
    for i in 1...count {
        answer += Int64(price * i)
    }
    
    
    if (Int64(money) - answer) < 0 {
        return (answer - Int64(money))
    } else {
        return 0
    }
}
