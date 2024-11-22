//
//  Employee.swift
//  Tdd
//
//  Created by Anusha Raju on 11/22/24.
//


struct Employee{
    var name: String
    var salary: Int
    var position: String
    
    mutating func getTotalSalary(bonus: Int, salary: Int) -> Int{
        self.salary = salary + bonus
        return salary
    }
    
    mutating func promote(newPosition: String, salaryIncrease: Int = 0) {
        self.position = newPosition
        self.salary += salaryIncrease
    }
    
    
}