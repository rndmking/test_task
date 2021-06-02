//
//  main.swift
//  test
//
//  Created by r.gadeev on 02.06.2021.
//

import Foundation

var i: Int = 1
var input = readLine() ?? ""
// var array5: String = input.unicodeScalars.filter { !$0.properties.isEmojiPresentation }.reduce(""){$0  + String($1)}
var array4: [String] = input.components(separatedBy: " ")
var array: [Int?] = array4.map {Int($0)}
var min: Int = Int.max
var index: Int
i = 1
array.enumerated().forEach( {index, value in
    if value ?? Int.max < min && value != nil {
        min = value ?? Int.max
        i = index
    }
} )
print("Minimal int takes \(i+1) place and equals \(min)")
