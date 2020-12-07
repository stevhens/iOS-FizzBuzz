//
//  ScoreBox.swift
//  FizzBuzz-SwiftUI
//
//  Created by Stevhen on 07/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import SwiftUI

struct ScoreBox: View {
    let score: Int
    private let size: CGFloat = 120
    
    var body: some View {
        Text("\(score)")
            .font(.system(size: 36, weight: .black, design: .rounded))
            .frame(width: size, height: size)
            .background(Color("CustomYellow"))
            .foregroundColor(.white)
            .cornerRadius(8)
        .accessibility(identifier: "scoreLabel")
    }
}
 
struct ScoreBox_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBox(score: 24)
    }
}
