import Foundation

func countZero(_ n: Int) -> Int {
	var count = 0
    let length = String(n).count

    for i in 1...length {
        let leftDigits = n / Int(pow(10.0, Double(i)))
        let currentDigits = (n / Int(pow(10.0, Double(i - 1)))) % 10
        let rightDigits = n % Int(pow(10.0, Double(i - 1)))

        if currentDigits > 0 {
            count += leftDigits * Int(pow(10.0, Double(i - 1)))
        } else {
            count += (leftDigits - 1) * Int(pow(10.0, Double(i - 1))) + rightDigits + 1
        }
    }
    return count
}

func calcZero(_ n: Int, _ m: Int) -> Int {
    let nZeroCount = String(n).filter { $0 == "0" }.count
    if nZeroCount == 0 {
        return countZero(m) - countZero(n)
    } else {
        return countZero(m) - countZero(n) + nZeroCount
    }
}

while let input = readLine() {
    let input = input.split(separator: " ").map{ Int(String($0))! }
    let n = input[0], m = input[1]

    if n == -1 || m == -1 { break }

	print(calcZero(n, m))
}