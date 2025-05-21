import Foundation

func computeFailure(_ s: String) -> [Int] {
	let chars = Array(s)
    let n = chars.count
    var fail = Array(repeating: 0, count: n)

    var i = 1
    var j = 0
    while (i + j) < n {
        if chars[i + j] == chars[j] {
            j += 1
            fail[i + j - 1] = j
        } else {
            if j == 0 {
                i += 1
            } else {
                i += j - fail[j - 1]
                j = fail[j - 1]
            }
        }
    }

    return fail
}

if let n = Int(readLine() ?? ""), let s = readLine() {
    let fail = computeFailure(s)
    print(n - fail[n - 1])
}