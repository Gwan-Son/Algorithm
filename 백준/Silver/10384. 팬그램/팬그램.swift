import Foundation

let n = Int(readLine()!)!

for ca in 0..<n {
    let input = readLine()!.map{ Character(String($0)) }

    var stacks = [Int](repeating: 0, count: 26)

    for i in 0..<input.count {
        let asciiValue = Int(input[i].asciiValue!)

        if (65...90).contains(asciiValue) {
            stacks[asciiValue - 65] += 1
        } else if (97...122).contains(asciiValue) {
            stacks[asciiValue - 97] += 1
        }
    }
	print("Case \(ca + 1): ", terminator: "")
    if stacks.filter({ $0 >= 3 }).count == stacks.count {
        print("Triple pangram!!!")
    } else if stacks.filter({ $0 >= 2 }).count == stacks.count {
        print("Double pangram!!")
    } else if stacks.filter({ $0 >= 1 }).count == stacks.count {
        print("Pangram!")
    } else {
        print("Not a pangram")
    }
}
