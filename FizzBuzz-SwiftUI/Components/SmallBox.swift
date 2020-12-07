//
//  SmallBox.swift
//  FizzBuzz-SwiftUI
//
//  Created by Stevhen on 07/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import SwiftUI

struct SmallBox: View {
    let title: String
    let score: Int
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .foregroundColor(.init(white: 0.9))
            Text(score.description)
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .minimumScaleFactor(0.9)
                .truncationMode(.tail)
                .foregroundColor(.white)
                .accessibility(identifier: "\(title.lowercased())Value")
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 8)
        .background(Color("CustomGrey"))
        .cornerRadius(6)
    }
}

struct SmallBox_Previews: PreviewProvider {
    static var previews: some View {
        SmallBox(title: "LIFE", score: 1234)
    }
}
