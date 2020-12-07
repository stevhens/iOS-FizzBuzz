//
//  Board.swift
//  FizzBuzz-SwiftUI
//
//  Created by Stevhen on 07/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import SwiftUI

struct Board: View {
    var game: Game?
    
    var body: some View {
        VStack {
            HStack {
                ActionButton(title: "UP", action: {
                    self.moveAction(.number)
                    }).accessibility(identifier: "upButton")
                ActionButton(title: "Fizz", action: {
                    self.moveAction(.fizz)
                }).accessibility(identifier: "fizzButton")
            }
            .padding(8)
            HStack {
                ActionButton(title: "Buzz", action: {
                    self.moveAction(.buzz)
                }).accessibility(identifier: "buzzButton")
                ActionButton(title: "Fizz Buzz", action: {
                    self.moveAction(.fizzBuzz)
                }).accessibility(identifier: "fizzBuzzButton")
            }
        }
        .padding(8)
        .cornerRadius(4)
    }
    
    func moveAction(_ move: Move) {
        if let currentGame = self.game {
            // here goes our core function
            
            currentGame.play(move: move)
        }
    }
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                ActionButton(title: "UP", action: {
                    
                })
                ActionButton(title: "Fizz", action: {
                    
                })
            }
            .padding(8)
            HStack {
                ActionButton(title: "Buzz", action: {
                    
                })
                ActionButton(title: "Fizz Buzz", action: {
                    
                })
            }
        }
        .padding(8)
        .cornerRadius(4)
    }
}
