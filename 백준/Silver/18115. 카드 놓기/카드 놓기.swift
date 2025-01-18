import Foundation

struct Deque {
    var enqueue = [Int]()
    var dequeue = [Int]()
    
    mutating func pushFirst(_ element: Int) {
        dequeue.append(element)
    }
    
    mutating func pushLast(_ element: Int) {
        enqueue.append(element)
    }
    
    mutating func popFirst() -> Int? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
    mutating func popLast() -> Int? {
        if enqueue.isEmpty {
            enqueue = dequeue.reversed()
            dequeue.removeAll()
        }
        return enqueue.popLast()
    }
}

readLine()
var skills = readLine()!.split(separator: " ").map { Int($0)! }
skills = skills.reversed()
var dequeue = Deque()

for i in 0 ..< skills.count {
    if skills[i] == 1 {
        dequeue.pushLast(i + 1)
    }
    else if skills[i] == 2 {
        let lastCard = dequeue.popLast()!
        dequeue.pushLast(i + 1)
        dequeue.pushLast(lastCard)
    }
    else {
        dequeue.pushFirst(i + 1)
    }
}

print(dequeue.enqueue.reversed().map { String($0) }.joined(separator: " ") + " " + dequeue.dequeue.map { String($0) }.joined(separator: " "))