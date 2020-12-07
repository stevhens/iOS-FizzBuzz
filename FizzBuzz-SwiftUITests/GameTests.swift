//
//  GameTests.swift
//  FizzBuzz-SwiftUITests
//
//  Created by Stevhen on 17/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGameStartAtZero() throws {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() throws {
        game.play()
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayScoreIncrementedTwice() throws {
        game.play()
        game.play()
        XCTAssertTrue(game.score == 2)
    }
    
    func testOnPlayNotScoreIncremented() throws {
        game.play()
        XCTAssertFalse(game.score == 0)
    }
    
    func testOnPlayScoreNotIncrementedTwice() throws {
        game.play()
        game.play()
        XCTAssertFalse(game.score == 1)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(move: .fizz)
        
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: .fizz)
        
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let res = game.play(move: .buzz)
        XCTAssertEqual(res, true)
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let res = game.play(move: .buzz)
        XCTAssertEqual(res, false)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let res = game.play(move: .fizzBuzz)
        XCTAssertEqual(res, true)
    }
    
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let res = game.play(move: .fizzBuzz)
        XCTAssertEqual(res, false)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 12
        let res = game.play(move: .number)
        XCTAssertEqual(res, true)
    }
    
    func testIfNumberMoveIsWrong() {
        game.score = 2
        let res = game.play(move: .number)
        XCTAssertEqual(res, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        
        _ = game.play(move: .fizz)
        
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnNewScore() {
        _ = game.play(move: .number)
        XCTAssertNotNil(game.score)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
