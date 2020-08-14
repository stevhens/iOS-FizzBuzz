//
//  Game.swift
//  FizzBuzz-SwiftUI
//
//  Created by David Gunawan on 02/07/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class Game: ObservableObject {
    @Published var score: Int
    let brain: Brain

    init() {
        score = 0
        brain = Brain()
    }
    
    func play() {
        score += 1
    }
    
    func play(move: Move) -> Bool {
//        return move == .fizz
        score += 1
        
        let res = brain.check(number: score)
        
        if res == move {
            return true
        } else {
            score -= 1
            return false
        }
    }
}
