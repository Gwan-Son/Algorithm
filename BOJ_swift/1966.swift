import Foundation

let T = Int(readLine()!)! // T

for _ in 0..<T {
    let arrN = readLine()!.split(separator: " ").map{Int($0)!}
    var arrM = readLine()!.split(separator: " ").map{Int($0)!}
    
    var cnt: Int = 0
    
    var priorityArr: [(Int, Int)] = []
    
    for (i,p) in arrM.enumerated() {
        let tuple = (p,i)
        priorityArr.append(tuple)
    }
    
    arrM.sort()
    
    while true {
        if priorityArr[0].0 == arrM.max() {
            cnt += 1
            if priorityArr[0].1 == arrN[1] {
                print(cnt)
                break
            } else {
                priorityArr.removeFirst()
                arrM.popLast()
            }
        } else {
            priorityArr.append(priorityArr.removeFirst())
        }
    }
}
