import Foundation

let S = readLine()!
let T = readLine()!

let sCnt = S.count

func mkStr(_ str: String) {
    if str.count == S.count {
        if str == S {
            print("1")
            exit(0)
        }
        return
    }

    if str.last! == "A" {
        var newStr = str
        newStr.removeLast()
        mkStr(newStr)
    }

    if str.first! == "B" {
        var newStr = String(str.reversed())
        newStr.removeLast()
        mkStr(newStr)
    }
}

mkStr(T)

print("0")