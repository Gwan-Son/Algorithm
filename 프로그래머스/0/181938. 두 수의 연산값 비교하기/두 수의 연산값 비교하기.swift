import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let joinOperation = Int(String(a) + String(b))!
    let multiplyOperation = 2 * a * b
    return joinOperation > multiplyOperation ? joinOperation : multiplyOperation
}