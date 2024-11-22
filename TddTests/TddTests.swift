//
//  TddTests.swift
//  TddTests
//
//  Created by Shobhakar Tiwari on 11/22/24.
//


/// TDD -->> Test driven developement
/// you write test cases first  ,and then test ,  it failed , refactor the code and then test , it will pass
/// Fail, Refactor, Success


/// PROBLEM STATEMENT:  Design a calculator in swift having
/// 1. sum
/// 2. sub
/// 3. mul
/// 4. div

// consider using Structure here: Calculator is the structure for this
// assume it
// test it
// failed
// refacotor

//1.for multiples of 3 print “Fizz” instead of the number and for the multiples of 5 print “Buzz“. For numbers which are multiples of both 3 and 5 print “FizzBuzz”.



import XCTest
@testable import Tdd


final class TddTests: XCTestCase {
    var objCalculator: Calculator?
    
    var employee: Employee?
    
    var user : UserModel?
    
    var fizz: Fizz?
    
    override func setUpWithError() throws {
        objCalculator = Calculator()
        employee = Employee(name: "Anusha", salary: 1000, position: "Developer")
        user = UserModel(username: "Anusha123", password: "password")
        fizz = Fizz()
    }

    override func tearDownWithError() throws {
        objCalculator = nil
        employee = nil
        user = nil
        fizz = nil
    }
    
    func test_sum_successful() {
        let result = objCalculator?.sum(120, 2)
        XCTAssertEqual(result, 100)
    }
    
    func test_sum_of_two_negative_numbers() {
        let result = objCalculator?.sum(-1, -2)
        XCTAssertEqual(result, -3)
    }
    
    func test_sum_of_optional_numbers() {
        let result1 = objCalculator?.sum(1, nil)
        XCTAssertEqual(result1, 0)
        
        let result2 = objCalculator?.sum(nil, 1)
        XCTAssertEqual(result2, 0)
        
        let result3 = objCalculator?.sum(nil, nil)
        XCTAssertEqual(result3, 0)
    }
    
    func test_subtract_successful() {
        let result = objCalculator?.subtract(120, 2)
        XCTAssertEqual(result, 118)
    }
    
    func test_substract_optionals(){
        let result = objCalculator?.subtract(nil, 2)
        XCTAssertEqual(result, 0)
        let result2 = objCalculator?.subtract(2, nil)
        XCTAssertEqual(result2, 0)
        let result3 = objCalculator?.subtract(nil, nil)
        XCTAssertEqual(result3, 0)
    }
    
    func test_substract_bigger_number(){
        let result = objCalculator?.subtract(100, 200)
        XCTAssertLessThan(result ?? 0, 0)
    }
    
    func test_salary(){
        let salary = employee?.salary
        XCTAssertGreaterThan(salary!, -1)
    }
    
    func test_addBonus_successful(){
        
        let result = employee?.getTotalSalary(bonus: 100, salary: 1200)
        XCTAssertEqual(result!, 1200)
        
    }
    
    func test_update_salary(){
        employee?.promote(newPosition: "Lead Developer", salaryIncrease: 2000)
        
        let salary = employee?.salary
        XCTAssertEqual(salary!, 3000)
        
        let position = employee?.position
        XCTAssertEqual(position, "Lead Developer")
    }
    
    func test_username_alphanumeric(){
        user?.username = "Anusha123"
        let result = user?.isUsernameAlphanumeric()
        XCTAssertTrue(result!)
    }
    
    func test_username_only_alphabets(){
        user?.username = "Anusha"
        let result = user?.isUsernameAlphanumeric()
        XCTAssertFalse(result!)
    }
    
    func test_username_only_numeric(){
        user?.username = "12345"
        let result = user?.isUsernameAlphanumeric()
        XCTAssertFalse(result!)
    }
    
    func test_print_fizz(){
        let result = fizz?.printFizzBuzz(x: 9)
        XCTAssertEqual(result, "Fizz")
    }
    
    func test_print_buzz(){
        let result = fizz?.printFizzBuzz(x: 10)
        XCTAssertEqual(result, "Buzz")
    }
    
    func test_print_fizzbuzz(){
        let result = fizz?.printFizzBuzz(x: 15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func test_fizz_not_applicable(){
        let result = fizz?.printFizzBuzz(x: 17)
        XCTAssertEqual(result, "Not Applicable")
    }
    
}
