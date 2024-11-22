//
//  Fizz.swift
//  Tdd
//
//  Created by Anusha Raju on 11/22/24.
//


struct Fizz{
    
    func printFizzBuzz(x: Int) -> String{
        if(x % 3 == 0 && x % 5 == 0){
            return "FizzBuzz"
        } else if (x % 3 == 0) {
            return "Fizz"
        } else if (x % 5 == 0){
            return "Buzz"
        }
        
        return String(x)
    }
}
