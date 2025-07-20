import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], d = input[1]

func fold(_ str: String, _ dir: Int) -> String {
    var result = ""

    if dir == 1 {
        for i in str {
            switch i {
            case "d":
                result += "q"
            case "b":
                result += "p"
            case "q":
                result += "d"
            case "p":
                result += "b"
            default:
                break
            }
        }

    } else {
        for i in str {
            switch i {
            case "d":
                result += "b"
            case "b":
                result += "d"
            case "q":
                result += "p"
            case "p":
                result += "q"
            default:
                break
            }
        }
    }


    return result
}

for _ in 0..<n {
    let str = readLine()!
    print(fold(str, d))
}

