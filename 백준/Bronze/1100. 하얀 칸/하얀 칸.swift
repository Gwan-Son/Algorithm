import Foundation

var result = 0
for i in 0..<8 {
    let line = readLine()!.map{ String($0) }
    if i % 2 == 0 {
        result += line.enumerated().filter{ $0.offset % 2 == 0 && $0.element == "F" }.count
    } else {
        result += line.enumerated().filter{ $0.offset % 2 == 1 && $0.element == "F" }.count
    }
}
print(result)
