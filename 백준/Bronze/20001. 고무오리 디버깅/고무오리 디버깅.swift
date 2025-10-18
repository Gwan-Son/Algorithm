import Foundation

var problems = 0
while let input = readLine() {
    if input == "고무오리 디버깅 끝" { break }

    if input == "문제" {
        problems += 1
    } else if input == "고무오리" {
        if problems == 0 {
            problems += 2
        } else {
            problems -= 1
        }
    }

}

if problems == 0 {
    print("고무오리야 사랑해")
} else {
    print("힝구")
}