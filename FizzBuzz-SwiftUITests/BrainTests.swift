//
//  BrainTests.swift
//  FizzBuzz-SwiftUITests
//
//  Created by Stevhen on 15/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    let brain = Brain()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsDivisibleByThree() throws {
        //Given
        
        //When
        let result = brain.isDivisibleByThree(number: 3)
        
        //Then
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        
        let result = brain.isDivisibleByThree(number: 2)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        
        let result = brain.isDivisibleByFive(number: 6)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByThreeAndFive() {
        
        let result = brain.isDivisibleByThreeAndFive(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThreeAndFive() {
        
        let result = brain.isDivisibleByThreeAndFive(number: 16)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.fizz)
    }
    
    func testSayBuzz() {
        
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.buzz)
    }
    
    func testSayFizzBuzz() {
        
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.fizzBuzz)
    }
    
    func testSayNumber() {
        
        let result = brain.check(number: 1)
        XCTAssertEqual(result, Move.number)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
