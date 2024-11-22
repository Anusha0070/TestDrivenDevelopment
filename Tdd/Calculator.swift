//
//  Calculator.swift
//  Tdd
//
//  Created by Shobhakar Tiwari on 11/22/24.
//


struct Calculator {
    func sum(_ a: Int?, _ b: Int?) -> Int {
        guard let a, let b else { return 0 }
        if a > 100 {
            return 100
        }
        return a + b
    }
    
    func subtract(_ a: Int?, _ b: Int?) -> Int {
        guard let a, let b else { return 0 }
        return a - b
    }
}
