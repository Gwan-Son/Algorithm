import Foundation

struct Heap<T: Comparable> {
    private var elements: [T] = []
    private let comparer: (T, T) -> Bool
    
    init(comparer: @escaping (T, T) -> Bool) {
        self.comparer = comparer
    }
    
    mutating func insert(_ element: T) {
        // 첫번째 삽입 시 0번째에 요소 할당 (0번 인덱스 사용 X)
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
        
        // 자식 노드 > 부모 노드 라면 swap
        // 루트 노드라면 반복문 탈출
        while index > 1 && comparer(elements[index], elements[index / 2]) {
            elements.swapAt(index, index / 2)
            index /= 2
        }
    }
    
    mutating func pop() -> T? {
        if elements.count < 2 { return nil }
        
        // 루트 노드와 가장 마지막 노드 swap
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
        
        // 왼쪽 자식노드가 있고, 왼쪽 자식노드가 더 크다면 왼쪽 노드를 바꿀 노드로 정함
        if leftIndex < elements.endIndex && comparer(elements[leftIndex], elements[swapIndex]) {
            swapIndex = leftIndex
            isSwap = true
        }
        
        // 오른쪽 자식노드가 있고, 오른쪽 자식노드가 더 크다면 오른쪽 노드를 바꿀 노드로 정함
        if rightIndex < elements.endIndex && comparer(elements[rightIndex], elements[swapIndex]) {
            swapIndex = rightIndex
            isSwap = true
        }
        
        // 바꿀 노드가 있다면, Swap
        // 바꾼 노드에 대해서 diveDown
        if isSwap {
            elements.swapAt(swapIndex, index)
            diveDown(index: swapIndex)
        }
    }
}

var maxHeap = Heap<Int>(comparer: >)

let N = Int(readLine()!)!

for _ in 1...N {
    let input = Int(readLine()!)!
    
    if input == 0 {
        if let result = maxHeap.pop() {
            print(result)
        } else {
            print(0)
        }
    } else {
        maxHeap.insert(input)
    }
}
