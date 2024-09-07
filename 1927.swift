class MinHeap {
    private var heap: [Int] = []
    
    func push(_ x: Int) {
        heap.append(x)
        heapifyUp(heap.count - 1)
    }
    
    func pop() -> Int {
        if heap.isEmpty {
            return 0
        }
        if heap.count == 1 {
            return heap.removeLast()
        }
        let root = heap[0]
        heap[0] = heap.removeLast()
        heapifyDown(0)
        return root
    }
    
    private func heapifyUp(_ index: Int) {
        var currentIndex = index
        while currentIndex > 0 {
            let parentIndex = (currentIndex - 1) / 2
            if heap[currentIndex] < heap[parentIndex] {
                heap.swapAt(currentIndex, parentIndex)
                currentIndex = parentIndex
            } else {
                break
            }
        }
    }
    
    private func heapifyDown(_ index: Int) {
        var currentIndex = index
        while true {
            let leftChild = 2 * currentIndex + 1
            let rightChild = 2 * currentIndex + 2
            var smallest = currentIndex
            
            if leftChild < heap.count && heap[leftChild] < heap[smallest] {
                smallest = leftChild
            }
            if rightChild < heap.count && heap[rightChild] < heap[smallest] {
                smallest = rightChild
            }
            
            if smallest == currentIndex {
                break
            }
            
            heap.swapAt(currentIndex, smallest)
            currentIndex = smallest
        }
    }
}

// 입력 처리 및 결과 출력
let n = Int(readLine()!)!
let minHeap = MinHeap()
var result: [Int] = []

for _ in 0..<n {
    let x = Int(readLine()!)!
    if x == 0 {
        result.append(minHeap.pop())
    } else {
        minHeap.push(x)
    }
}

// 결과 출력
result.forEach { print($0) }
