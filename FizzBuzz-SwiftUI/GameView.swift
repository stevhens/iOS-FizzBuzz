//
//  ContentView.swift
//  FizzBuzz-SwiftUI
//
//  Created by David Gunawan on 29/06/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game: Game
    
    var body: some View {
        VStack(alignment: .center, spacing: 48) {
            Header(score: self.game.score, life: 2)
            Board(game: self.game)
        }.frame(minWidth: .zero,
                maxWidth: .infinity,
                minHeight: .zero,
                maxHeight: .infinity,
                alignment: .center)
            .background(Color("Background"))
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = Game()
        return GameView(game: game)
    }
}



