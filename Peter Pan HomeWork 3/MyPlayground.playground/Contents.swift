//: Playground - noun: a place where people can play

import UIKit


// 練習一
var sum1 = 0
for i1 in 1...7{
    for v1 in 1...7{
        sum1 += i1*v1
    }
}
sum1

// 練習二
var sum2 = 0
for i2 in 1...7 {
    for v2 in 1...7{
        if ((i2%2)==1){
           sum2 += i2*v2
        }
    }
}
sum2

//練習三
var sum3 = 0
for i3 in 1...7{
    for v3 in 1...7{
        switch v3 {
        case  let v3Value where v3Value < i3:
            sum3 += i3*v3
        default:
            break
        }
    }
}
sum3