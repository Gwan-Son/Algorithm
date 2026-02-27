import Foundation

struct MinHeap<T: Comparable> {
    private var elements: [T] = []
    
    // 힙이 비어있는지 확인
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    // 힙에 들어있는 원소의 개수
    var count: Int {
        return elements.count
    }
    
    // 원소 삽입 (Insert)
    mutating func insert(_ element: T) {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }
    
    // 가장 작은 원소 꺼내기 (Pop)
    mutating func pop() -> T? {
        guard !isEmpty else { return nil }
        
        // 첫 번째(최소값)와 마지막 원소의 자리를 바꾼 뒤 마지막 원소 제거
        elements.swapAt(0, elements.count - 1)
        let element = elements.removeLast()
        
        // 빼고 남은 원소가 있다면 다시 최소 힙 성질에 맞게 재정렬
        if !isEmpty {
            siftDown(from: 0)
        }
        
        return element
    }
    
    // 위로 끌어올리며 정렬 (삽입 시 사용)
    private mutating func siftUp(from index: Int) {
        var childIndex = index
        let child = elements[childIndex]
        var parentIndex = (childIndex - 1) / 2
        
        while childIndex > 0 && child < elements[parentIndex] {
            elements[childIndex] = elements[parentIndex]
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }
        elements[childIndex] = child
    }
    
    // 아래로 끌어내리며 정렬 (Pop 시 사용)
    private mutating func siftDown(from index: Int) {
        var parentIndex = index
        let count = elements.count
        
        while true {
            let leftChildIndex = parentIndex * 2 + 1
            let rightChildIndex = leftChildIndex + 1
            var candidateIndex = parentIndex
            
            // 왼쪽 자식이 부모보다 작으면 후보 변경
            if leftChildIndex < count && elements[leftChildIndex] < elements[candidateIndex] {
                candidateIndex = leftChildIndex
            }
            
            // 오른쪽 자식이 (부모 또는 왼쪽 자식)보다 작으면 후보 변경
            if rightChildIndex < count && elements[rightChildIndex] < elements[candidateIndex] {
                candidateIndex = rightChildIndex
            }
            
            // 더 이상 바꿀 자식이 없다면 정렬 완료
            if candidateIndex == parentIndex {
                return
            }
            
            elements.swapAt(parentIndex, candidateIndex)
            parentIndex = candidateIndex
        }
    }
}


struct Node: Comparable {
    let cost: Int
    let vertex: Int
    
    static func < (lhs: Node, rhs: Node) -> Bool {
        return lhs.cost < rhs.cost
    }
}

let n = Int(readLine()!)!

let m = Int(readLine()!)!

var graphs = [[Node]](repeating: [], count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = input[0], b = input[1], c = input[2]
    graphs[a].append(Node(cost: c, vertex: b))
}

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let start = input[0], end = input[1]

var dist = [Int](repeating: Int.max, count: n + 1)
var prev = [Int](repeating: 0, count: n + 1)

var pq = MinHeap<Node>()
dist[start] = 0

pq.insert(Node(cost: 0, vertex: start))

while let current = pq.pop() {
    let curCost = current.cost
    let curVertex = current.vertex
    
    if dist[curVertex] < curCost { continue }
    
    for next in graphs[curVertex] {
        let nextCost = curCost + next.cost
        let nextVertex = next.vertex
        
        if nextCost < dist[nextVertex] {
            dist[nextVertex] = nextCost
            prev[nextVertex] = curVertex
            
            pq.insert(Node(cost: nextCost, vertex: nextVertex))
        }
    }
}

var path = [Int]()
var current = end

while current != start {
    path.append(current)
    current = prev[current]
}

path.append(start)
path.reverse()

print(dist[end])
print(path.count)
print(path.map{ String($0) }.joined(separator: " "))
