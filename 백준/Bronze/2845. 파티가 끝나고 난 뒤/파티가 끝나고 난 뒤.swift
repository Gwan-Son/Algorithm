import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let people = input[0] * input[1]
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! - people }
arr.forEach{
    print($0, terminator: " ")
}
