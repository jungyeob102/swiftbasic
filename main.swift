//
//  main.swift
//  swiftbasic
//
//  Created by admin on 2021/01/28.
//

import Foundation

//백준 10430

let line = readLine()
let abc = line!.split(separator: " ").map{(a:Substring) -> Int in
    return Int(a)!
}
let A = abc[0]
let B = abc[1]
let C = abc[2]


print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
