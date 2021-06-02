import Foundation

var i: Int = 1
var input = readLine() ?? ""
var arrayOfStrings: [String] = input.components(separatedBy: " ")
var array: [Int?] = arrayOfStrings.map { Int($0) }
var min = Int.max
var index: Int
i = 1
array.enumerated().forEach { index, value in
    if value ?? Int.max < min, value != nil {
        min = value ?? Int.max
        i = index
    }
}

print("Minimal int takes \(i + 1) place and equals \(min)")
