//
//  main.swift
//  swiftbasic
//
//  Created by admin on 2021/01/28.
//

import Foundation

//백준 1001번
//readLine() 함수는 String? 값으로 입력값을 주기 때문에, 강제언래핑
let minus = readLine()!.split(separator: " ").map{(A : Substring) -> Int in
    return Int(A)!
}
print(minus[0] - minus [1])
