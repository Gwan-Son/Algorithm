import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let L = input[0]
let C = input[1]
let moeum = ["a","e","i","o","u"] // 모음을 1개 이상 포함해야 하기 때문에 자/모음 구별
var letters = readLine()!.split(separator: " ")
letters.sort() // 알파벳이 증가하는 순서대로 암호를 만들기 위해 정렬

func checkValidPw(_ pw: String) -> Bool {
    var count = 0
    for i in moeum {
        if pw.contains(i) {
            count += 1
        }
    }
    if count == 0 || pw.count - count < 2 {
        return false
    } else {
        return true
    }
}

var visited = [Bool](repeating: false, count: letters.count)

func dfs(_ index: Int, _ pw: String) {
    if pw.count == L {
        checkValidPw(pw) ? print(pw) : ()
        return
    }
    for i in index..<letters.count {
        if visited[i] { continue }
        visited[i] = true
        dfs(i, pw + String(letters[i]))
        visited[i] = false
    }
}

dfs(0, "")
