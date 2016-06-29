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

//練習最後一題

func oddOrEvens(nums:[Int])->[(title:String,values:[Int])]{
    var odds = [Int]()
    var evens = [Int]()
    for i in nums{
        if(nums[i-1]%2 == 1){
            odds.append(nums[i-1])
        }else{
            evens.append(nums[i-1])
        }
    }
    return [("Odd numbers: ",odds),("Even numbers: ",evens)]
}
var nummm = [1,2,3,4,5,6,7,8,9,10]
var times = oddOrEvens(nums: nummm).count
for i in 0...times-1{
  print("\(oddOrEvens(nums: nummm)[i].title) \(oddOrEvens(nums: nummm)[i].values)")

}






