import Foundation

func readDoubles() -> [Double] {
    guard let line = readLine() else { return [] }
    return line.split(separator: " ").compactMap { Double($0) }
}

let abc = readDoubles()
let ijk = readDoubles()

if abc.count == 3, ijk.count == 3 {
    let a = abc[0], b = abc[1], c = abc[2]
    let i = ijk[0], j = ijk[1], k = ijk[2]

    var candidates: [Double] = []
    if i > 0 { candidates.append(a / i) }
    if j > 0 { candidates.append(b / j) }
    if k > 0 { candidates.append(c / k) }

    let t = candidates.min() ?? 0.0

    let ra = a - i * t
    let rb = b - j * t
    let rc = c - k * t

    print(String(format: "%.10g %.10g %.10g", ra, rb, rc))
}
