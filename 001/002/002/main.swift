//
//  main.swift
//  002
//
//  Created by 20161104580 on 18/9/14.
//  Copyright © 2018年 20161104580. All rights reserved.
//

import Foundation
var students = [(num: 4580,sex: "n",name: "wangxu",score: 99),
                (num: 4582,sex: "s",name: "wang",score: 80),
                (num: 4583,sex: "n",name: "xu",score: 78),
                (num: 4581,sex: "s",name: "wx",score: 98),
                (num: 4585,sex: "n",name: "u",score: 66)]
var x:(Int,String,String,Int)
for i in 0..<students.count{
    for j in 0..<(students.count-i-1){
        if students[j].score < students[j+1].score {
            x = students[j]
            students[j] = students[j+1]
            students[j+1] = x
        }
    }
}
for student in students{
    print(student)
}

