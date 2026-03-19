import Foundation

let str = readLine()!.map{ String($0) }

for i in 0..<str.count {
    if str[i] == "d" {
        if str[i...].joined() == "driip" {
            print("cute")
            exit(0)
        }
    }
}

print("not cute")
