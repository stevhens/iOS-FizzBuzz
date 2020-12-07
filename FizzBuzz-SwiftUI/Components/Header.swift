//
//  Header.swift
//  FizzBuzz-SwiftUI
//
//  Created by Stevhen on 07/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import SwiftUI

struct Header: View {
    let score: Int
    let life: Int
    let scoreLabel = "SCORE"
    
    var body: some View {
        HStack(alignment: .top) {
            ScoreBox(score: score)
            VStack(alignment: .center, spacing: 10) {
                HStack(alignment: .top) {
                    SmallBox(title: "LIFEPOINT", score: 5)
                    SmallBox(title: "BEST", score: 0)
                }
                SmallActionButton(title: "RESET", action: {
                    print("NOT YET AVBAILABLE")
                }, enabled: false)
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(score: 20, life: 2)
    }
}
