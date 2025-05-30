import Foundation

struct Heap<T: Comparable> {
    private var elements: [T] = []
    private let comparer: (T, T) -> Bool
    
    var isEmpty: Bool {
        return elements.count <= 1
    }
    
    var top: T? {
        return isEmpty ? nil : elements[1]
    }
    
    init(comparer: @escaping (T,T) -> Bool) {
        self.comparer = comparer
    }
    
    mutating func insert(element: T) {
        if elements.isEmpty {
            elements.append(element)
            elements.append(element)
            return
        }
        elements.append(element)
        swimUp(index: elements.count - 1)
    }
    
    mutating private func swimUp(index: Int) {
        var index = index
        while index > 1 && comparer(elements[index], elements[index / 2]) {
            elements.swapAt(index, index / 2)
            index /= 2
        }
    }
    
    mutating func pop() -> T? {
        if elements.count < 2 { return nil }
        elements.swapAt(1, elements.count - 1)
        let deletedElement = elements.removeLast()
        diveDown(index: 1)
        return deletedElement
    }
    
    mutating private func diveDown(index: Int) {
        var swapIndex = index
        var isSwap = false
        let leftIndex = index * 2
        let rightIndex = index * 2 + 1

        if leftIndex < elements.endIndex && comparer(elements[leftIndex], elements[swapIndex]) {
            swapIndex = leftIndex
            isSwap = true
        }
        
        if rightIndex < elements.endIndex && comparer(elements[rightIndex], elements[swapIndex]) {
            swapIndex = rightIndex
            isSwap = true
        }

        if isSwap {
            elements.swapAt(swapIndex, index)
            diveDown(index: swapIndex)
        }
    }
}

struct Data: Comparable {
    static func < (lhs: Data, rhs: Data) -> Bool {
        return lhs.cost < rhs.cost
    }
    let node: Int
    let cost: Int
}


let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]
let X = input[2]
let INF = 1_234_567_890
var graph = [[Data]](repeating: [], count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], cost = input[2]
    graph[a].append(Data(node: b, cost: cost))
}

var distance = [Int](repeating: INF, count: N + 1)

func dijkstra(start: Int) {
    var heap = Heap<Data>(comparer: <)
    distance[start] = 0
    heap.insert(element: Data(node: start, cost: 0))
    
    while !heap.isEmpty {
        let now = heap.pop()!
        
        if distance[now.node] < now.cost {
            continue
        }
        
        for next in graph[now.node] {
            let cost = now.cost + next.cost
            
            if cost < distance[next.node] {
                distance[next.node] = cost
                heap.insert(element: Data(node: next.node, cost: cost))
            }
        }
    }
}

var dest = [Int](repeating: 0, count: N + 1)
for i in 1...N {
    distance = [Int](repeating: INF, count: N + 1)
    dijkstra(start: i)
    if i == X {
        for j in 0..<dest.count {
            dest[j] += distance[j]
        }
    } else {
        dest[i] += distance[X]
    }
}
print(dest[1...].max()!)
