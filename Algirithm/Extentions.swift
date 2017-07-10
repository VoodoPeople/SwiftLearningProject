//
//  Extentions.swift
//  Algirithm
//
//  Created by Ivan on 03.07.17.
//  Copyright © 2017 boost. All rights reserved.
//

import UIKit


extension Int: Mathable {
    static func `init`(number: Double) -> Int {
        return Int(number)
    }

    
    static func `init`(number: Int) -> Int {
        return number
    }
    
    
    static func +=(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    static func ===(lhs: Int, rhs: Int) -> Bool {
        return lhs == rhs ? true : false
    }
    
}

extension UInt32 : Mathable {
    static func `init`(number: Double) -> UInt32 {
        return UInt32(number)
    }

    static func `init`(number: Int) -> UInt32 {
        return UInt32(number)
    }
    
    static func +=(lhs: UInt32, rhs: UInt32) -> UInt32 {
        return lhs + rhs
    }
    
    static func ===(lhs: UInt32, rhs: UInt32) -> Bool {
        return lhs == rhs ? true : false
    }
    
}
extension Double: Mathable {
    static func `init`(number: Int) -> Double {
        return Double(number)
    }

    
    static func `init`(number: Double) -> Double {
        return Double(number)
    }
}
// MARK : 

protocol Mathable {
    static func `init`(number: Int) -> Self
    static func `init`(number: Double) -> Self
    static func +(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Self) -> Self
    static func ==(lhs: Self, rhs: Self) -> Bool
    
}

