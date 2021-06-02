//
//  main.swift
//  test
//
//  Created by r.gadeev on 02.06.2021.
//

import Foundation

var i : Int = 1
var input = readLine() ?? ""
var array2: [String] = input.components(separatedBy: " ")
var array: [Int]  = array2.compactMap{Int($0)}
var min: Int = array.first!
var index: Int
i = 1
array.enumerated().forEach( {index, value in
    if value < min {
    min = value
        i = index
    }
} )
print("Minimal int takes \(i+1) place and equals \(min)")
