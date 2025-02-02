import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var truck_weights = truck_weights
    var time = 0
    var bridge_weight = 0
    var bridge = Array(repeating: 0, count: bridge_length)
    
    while !truck_weights.isEmpty || bridge_weight != 0{
        time += 1
        bridge_weight -= bridge.removeFirst()
        
        if !truck_weights.isEmpty{
            if bridge_weight + truck_weights[0] <= weight {
                bridge_weight += truck_weights[0]
                bridge.append(truck_weights[0])
                truck_weights.removeFirst()
            }else{
                bridge.append(0)
            }
        }
    }
    return time
}