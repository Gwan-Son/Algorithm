import Foundation

var count = 0
func recursion(s: [Character], l: Int, r: Int) -> Int {
    count += 1
    if l >= r { return 1}
    else if s[l] != s[r] { return 0 }
    else { return recursion(s: s, l: l+1, r: r-1) }
}

func isPalindrome(s: [Character]) -> Int {
    return recursion(s: s, l: 0, r: s.count - 1)
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let str = readLine()!.map{ $0 }
    count = 0
    print("\(isPalindrome(s: str)) \(count)")
}
