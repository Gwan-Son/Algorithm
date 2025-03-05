import Foundation

let a = readLine()!.map{ String($0) }
let oper = readLine()!
let b = readLine()!.map{ String($0) }

if oper == "*" {
    let aCnt = a.filter{ $0 == "0" }.count
    let bCnt = b.filter{ $0 == "0" }.count
    print("1"+String(repeating: "0", count: aCnt + bCnt))
} else {
    var answer: [String] = []
    let revA = a.reversed().map{ String($0) }
    let revB = b.reversed().map{ String($0) }
    if revA.count > revB.count {
        for i in 0..<revA.count {
            if i > revB.count - 1 {
                answer.append(revA[i])
            } else {
                if revA[i] == "1" && revB[i] == "1" {
                    answer.append("2")
                } else if revA[i] == "1" || revB[i] == "1" {
                    answer.append("1")
                } else {
                    answer.append("0")
                }
            }
        }
    } else {
        for i in 0..<revB.count {
            if i > revA.count - 1 {
                answer.append(revB[i])
            } else {
                if revA[i] == "1" && revB[i] == "1" {
                    answer.append("2")
                } else if revA[i] == "1" || revB[i] == "1" {
                    answer.append("1")
                } else {
                    answer.append("0")
                }
            }
        }
    }
    print(answer.reversed().joined())
}