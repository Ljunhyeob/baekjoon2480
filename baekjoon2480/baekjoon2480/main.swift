//
//  main.swift
//  baekjoon2480
//
//  Created by 이준협 on 2023/01/04.
//

import Foundation

let line = readLine()!
let lineArr = line.components(separatedBy: " ")
var a = Int(lineArr[0])!
var b = Int(lineArr[1])!
var c = Int(lineArr[2])!

var money = 0
var max = 0

if a == b && a == c {
    money = 10000+a*1000
}else if a == b && a != c || a == c && a != b || b == c && b != a{
        // a랑b 같고 c 틀림  ,  a랑 c같고 b틀림 , b랑c같고 a틀림
    money = 1000+a*100
    if b == c {
        money = 1000+b*100
    }
}else {
    if max < a {
        max = a
    }
    
    if max < b{
        max = b
    }
    
    if max < c{
        max = c
    }
    money = max*100
}

print(money)



