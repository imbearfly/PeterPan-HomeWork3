//: Playground - noun: a place where people can play

import UIKit


// 算全部格子的總和
var sum1 = 0
for i1 in 1...7{
    for v1 in 1...7{
        sum1 += i1*v1
    }
}
sum1

// 算奇數行的總和
var sum2 = 0
for i2 in 1...7 {
    for v2 in 1...7{
        if ((i2%2)==1){
           sum2 += i2*v2
        }
    }
}
sum2

//奇數偶數func
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

//func 最大值 最小值 倍數
var sum4 = 0
func minMaxTotal(min:Int,max:Int,range:Int)->Int{
    for i in min...max{
        if i % range == 0{
            sum4 += i
        }
    }
    return sum4
}

var sum5 = 0
func minMaxTotal2(min:Int,max:Int,range:Int)->Int{
    var numNow = min
    while numNow < max{
        if numNow % range == 0 {
            sum5 += numNow
            numNow += range
        }else{
            numNow += 1
        }
    }
    return sum5
}

minMaxTotal(min: 60, max: 1000, range: 6)
minMaxTotal2(min: 2, max: 1000, range: 8)

//func 奇數行總和
var sum6 = 0
func oddRowsSum(rows:Int,cols:Int )->Int{
    for i in 0...rows{
        if i % 2 == 1{
            for j in 0...cols {
                sum6 += (i * j)
            }
        }
    }
    return sum6
}

oddRowsSum(rows: 5 ,cols: 11)


//func 列數>=行數總和
var sum7 = 0
func countSum(rows:Int,cols:Int)->Int{
    for i in 0...rows{
        for j in 0...cols{
            if i >= j {
                sum7 += (i * j)
            }
        }
    }
    return sum7
}
countSum(rows: 10, cols: 50)

//華氏轉攝氏
var celsius = 0.0
func fahrenheitToCelsius(f:Double)-> Double{
    celsius = (f-32)*5/9
    return celsius
}
fahrenheitToCelsius(f: 200)

//練習最後一題

func oddOrEvens(nums:[Int])->[(title:String,values:[Int])]{
    var odds = [Int]()
    var evens = [Int]()
    for i in nums{
        if(i % 2 == 1){
            odds.append(i)
        }else{
            evens.append(i)
        }
    }
    return [("Odd numbers: ",odds),("Even numbers: ",evens)]
}
var nummm = [1,2,3,4,5,6,7,8,9,10,3,5,8,11,23,54,16]
var times = oddOrEvens(nums: nummm).count
for i in 0...times-1{
  print("\(oddOrEvens(nums: nummm)[i].title) \(oddOrEvens(nums: nummm)[i].values)")

}






