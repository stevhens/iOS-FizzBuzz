//
//  GameViewTests.swift
//  FizzBuzz-SwiftUITests
//
//  Created by Stevhen on 17/07/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameViewTests: XCTestCase {
    
    var view: GameView!
    
    //System Under Test
    var sut: Game!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sut = Game()
        view = GameView(game: sut)
        sut = view.game
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testMove1IncrementScore() throws {
        sut.play(move: .number)
        let newScore = sut.score
        
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() throws {
        sut.play(move: .number)
        sut.play(move: .number)
        let newScore = sut.score
        
        XCTAssertEqual(newScore, 2)
    }
    
    func testOnWrongMoveScoreNotIncremented() throws {
        sut.play(move: .fizz)
        let newScore = sut.score
        
        XCTAssertEqual(newScore, 0)
    }
    
    func testFizzMoveIncrementScore() throws {
        sut.score = 2
        sut.play(move: .fizz)
        let newScore = sut.score
        
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzMoveIncrementScore() throws {
        sut.score = 4
        sut.play(move: .buzz)
        let newScore = sut.score
        
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzMoveIncrementScore() throws {
        sut.score = 14
        sut.play(move: .fizzBuzz)
        let newScore = sut.score
        
        XCTAssertEqual(newScore, 15)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
