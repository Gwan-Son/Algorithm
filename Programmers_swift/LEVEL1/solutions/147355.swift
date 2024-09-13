import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var cnt: Int = 0
    for i in 0...t.count - p.count{
        let startIndex = t.index(t.startIndex,offsetBy: i)
        let endIndex = t.index(t.startIndex,offsetBy: i + p.count)
        if Int(t[startIndex..<endIndex])! <= Int(p)! {cnt += 1}
    }
    return cnt
}
