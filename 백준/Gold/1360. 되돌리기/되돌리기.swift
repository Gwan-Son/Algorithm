import Foundation

let n = Int(readLine()!)!
var cmds: [(String, String, Int)] = []

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ")
    let cmd = String(arr[0]), arg = String(arr[1]), time = Int(arr[2])!
    cmds.append((cmd, arg, time))
}

var res: [String] = []

func solve(_ idx: Int, _ now: Int) {
    if idx < 0 { return }
    let (cmd, arg, t) = cmds[idx]
    if cmd == "type" {
        res.append(arg)
        solve(idx - 1, t)
    } else {
		let undoTime = Int(arg)!
        var i = idx - 1
        while i >= 0 && cmds[i].2 >= t - undoTime {
            i -= 1
        }
        solve(i, t)
    }
}

solve(n - 1, cmds.last!.2)
print(res.reversed().joined())