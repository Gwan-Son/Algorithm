import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

func powf(_ base: Int, _ exponent: Int, _ mod: Int) -> Int {
    if exponent == 1 {
        return base
    }
    if exponent % 2 != 0 {
        return base * powf(base, exponent - 1, mod)
    }
    
    let temp = powf(base, exponent / 2, mod) % mod
    return temp * temp % mod
}

print(powf(input[0],input[1], input[2])%input[2])