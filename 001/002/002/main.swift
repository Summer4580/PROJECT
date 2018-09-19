//
//  main.swift
//  002
//
//  Created by 20161104580 on 18/9/14.
//  Copyright © 2018年 20161104580. All rights reserved.
//

import Foundation

var numbers = [5,4,6,3,7,8,1,2,9]
var x = 0
for i in 0..<10{
    for j in 0..<(10-i-1){
        if numbers[j] < numbers[j+1]{
            x = numbers[j]
            numbers[j] = numbers[j+1]
            numbers[j+1] = x
        }
    }
}
print(numbers)

