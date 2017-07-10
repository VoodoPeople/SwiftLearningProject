//
//  Series.swift
//  Algirithm
//
//  Created by Ivan on 10.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit

class Series: NSObject {

    
    func mainSeries() {
        let randArr : Array<Int> = Util.randomArray(capacity: 10)
        
        print(randArr)
        
        print("sum of numbers \(self.series1(numbers: randArr))")
        print("mult of numbers \(self.series2(numbers: randArr))")
        print("seredne of numbers \(self.series3(numbers: randArr))")
        
    }
    
    func series1<Number : Mathable>(numbers: Array<Number>) -> Number {
        var sum : Number = Number.init(number: 0)
        for element : Number in numbers {
            sum  = sum + element
        }
        return sum
    }
    
    func series2<Number : Mathable>(numbers: Array<Number>) -> Number {
        
        var sum : Number = Number.init(number: 1)
        for element : Number in numbers {
            sum = sum * element
        }
        return sum
    }
    
    func series3<Number : Mathable>(numbers: Array<Number>) -> Number {
        let sum = self.series1(numbers: numbers)
        let count : Number = Number.init(number: numbers.count)
        return sum/count
    }

}


class Util : NSObject {
    
    static public func randIntNumber(to: UInt32) -> Int {
        let randNumber : Int = Int((arc4random_uniform(to) + UInt32(1)))
        return  randNumber
    }
    
    
    static public func randDoubleNumber(to: UInt32) -> Double {
        let randNumber : Double = Double((arc4random_uniform(to) + UInt32(1)))
        return  randNumber
    }
    
    
    
    static public func randomArray<T : Mathable>(capacity: Int) -> Array<T> {
        
        var randArr : Array<T> = Array()
        for _ in 0..<capacity {
            let number : T = T(number: self.randDoubleNumber(to: 9))
            randArr.append(number)
        }
        return randArr
    }
    
}

extension NSObject {
    var className: String {
        return NSStringFromClass(self as! AnyClass).components(separatedBy: ".").last ?? ""
    }
    
    public class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
}

