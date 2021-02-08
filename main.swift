//
//  main.swift
//  swiftbasic
//
//  Created by admin on 2021/01/28.
//

import Foundation

//백준 10869

let Q =  readLine()!.split(separator: " ").map{(A : Substring) -> UInt in
    return UInt(A)!
}

print(Q[0] + Q[1])
print(Q[0] - Q[1])
print(Q[0] * Q[1])
print(Q[0] / Q[1])
print(Q[0] % Q[1])
