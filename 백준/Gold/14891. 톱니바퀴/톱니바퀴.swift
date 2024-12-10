import Foundation

var wheels: [Int: [Int]] = [:]

for i in 1...4 {
    wheels[i, default: []] = readLine()!.map { Int(String($0))! }
}

let rotateCount = Int(readLine()!)!
var isRotate: [Int] = [0, 0, 0, 0]

func rotateWheel(_ wheel: Int, _ direction: Int) {
    isRotate[wheel - 1] = direction
    
    if wheel == 1 {
        for i in 1..<4 {
            if wheels[i]![2] != wheels[i + 1]![6] {
                isRotate[i] = -isRotate[i - 1]
            }
        }
    } else if wheel == 4 {
        for i in (2...4).reversed() {
            if wheels[i]![6] != wheels[i - 1]![2] {
                isRotate[i - 2] = -isRotate[i - 1]
            }
        }
    } else if wheel == 2 {
        if wheels[1]![2] != wheels[2]![6] {
            isRotate[0] = -isRotate[1]
        }
        for i in 2..<4 {
            if wheels[i]![2] != wheels[i + 1]![6] {
                isRotate[i] = -isRotate[i - 1]
            }
        }
    } else {
        if wheels[3]![2] != wheels[4]![6] {
            isRotate[3] = -isRotate[2]
        }
        for i in (2...3).reversed() {
            if wheels[i]![6] != wheels[i - 1]![2] {
                isRotate[i - 2] = -isRotate[i - 1]
            }
        }
    }
    
    for i in 1...4 {
        if isRotate[i - 1] == 1 {
            let temp = wheels[i]!.removeLast()
            wheels[i]!.insert(temp, at: 0)
        } else if isRotate[i - 1] == -1 {
            let temp = wheels[i]!.removeFirst()
            wheels[i]!.append(temp)
        }
    }
}

for _ in 1...rotateCount {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    let wheel = input[0]
    let direction = input[1]
    isRotate = [0, 0, 0, 0]
    
    rotateWheel(wheel, direction)
}

var result: Decimal = 0
for i in 0..<4 {
    if wheels[i + 1]![0] == 1 {
        result += pow(2, i)
    }
}
print(result)
