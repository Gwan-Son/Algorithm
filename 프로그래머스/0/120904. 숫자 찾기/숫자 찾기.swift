import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    if let result = String(num).map{ String($0) }.firstIndex(of: String(k)) {
        return result + 1
    } else {
        return -1
    }
}