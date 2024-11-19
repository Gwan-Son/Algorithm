import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priorityQueue: [(Int, Int)] = []
    
    for i in 0..<priorities.count {
        priorityQueue.append((priorities[i], i))
    }
    
    var count = 1
    while !priorityQueue.isEmpty {
        let currentValue = priorityQueue.removeFirst()
        let priorityQueueCount = priorityQueue.filter{ $0.0 > currentValue.0 }.count
        
        if priorityQueueCount == 0 && currentValue.1 == location {
            return count
        } else if priorityQueueCount == 0 {
            count += 1
        } else {
            priorityQueue.append(currentValue)
        }
    }
    return 0
}