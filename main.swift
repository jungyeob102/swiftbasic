//
//  main.swift
//  swiftbasic
//
//  Created by admin on 2021/01/28.
//

import Foundation

//백준 10718

let multiply =  readLine()!.split(separator: " ").map{(A : Substring) -> Int in
    return Int(A)!
}

print(multiply[0]*multiply[1])
