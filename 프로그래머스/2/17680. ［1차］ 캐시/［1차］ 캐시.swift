func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cacheArray: [String] = []
    var runTime: Int = 0

    for i in cities.enumerated() {
        if cacheArray.contains(i.element.uppercased()) {
            cacheArray.remove(at: cacheArray.firstIndex(of: i.element.uppercased())! )
            cacheArray.append(i.element.uppercased())
            runTime += 1
        } else {
            cacheArray.append(i.element.uppercased())
            runTime += 5
        }

        if cacheArray.count > cacheSize {
            cacheArray.removeFirst()
        }
    }
    return runTime    
}