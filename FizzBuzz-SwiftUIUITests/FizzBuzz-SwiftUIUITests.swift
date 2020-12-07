//
//  FizzBuzz-SwiftUIUITests.swift
//  FizzBuzz-SwiftUIUITests
//
//  Created by Stevhen on 15/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import XCTest

class FizzBuzz_SwiftUIUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTapUpButtonIncrementScore() {
        let upButton = app.buttons["upButton"]
        let scoreLabel = app.staticTexts["scoreLabel"]
        
        upButton.tap()
        
        let newScore = scoreLabel.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapUpButtonIncrementScoreTwice() {
        let upButton = app.buttons["upButton"]
        let scoreLabel = app.staticTexts["scoreLabel"]
        
        upButton.tap()
        upButton.tap()
        
        let newScore = scoreLabel.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButton() {
        let upButton = app.buttons["upButton"]
        let fizzButton = app.buttons["fizzButton"]
        let scoreLabel = app.staticTexts["scoreLabel"]
        
        upButton.tap()
        upButton.tap()
        fizzButton.tap()
        
        let newScore = scoreLabel.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapFizzBuzzButtonIncrementsTo15() {
        let upButton = app.buttons["upButton"]
        let fizzButton = app.buttons["fizzButton"]
        let scoreLabel = app.staticTexts["scoreLabel"]
        
        for _ in 0 ..< 3 {
            playTo15()
        }
        
        let newScore = scoreLabel.label
        XCTAssertEqual(newScore, "45")
    }
    
    func playTo15() {
        let upButton = app.buttons["upButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        upButton.tap()
        upButton.tap()
        fizzButton.tap()
        upButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        upButton.tap()
        upButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        upButton.tap()
        fizzButton.tap()
        upButton.tap()
        upButton.tap()
        fizzBuzzButton.tap()
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            let upButton = app.buttons["upButton"]
            let scoreLabel = app.staticTexts["scoreLabel"]
            
            upButton.tap()
        }
    }
}
