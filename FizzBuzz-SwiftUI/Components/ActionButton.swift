//
//  ActionButton.swift
//  FizzBuzz-SwiftUI
//
//  Created by Stevhen on 07/07/20.
//  Copyright © 2020 Stevhen. All rights reserved.
//

import SwiftUI

struct ActionButton: View {
    let title: String
    let action: () -> ()
    private let size: CGFloat = 140
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 24, weight: .black, design: .rounded))
                .frame(width: size, height: size)
                .foregroundColor(Color("TIleForeGround"))
                .padding(12)
                .background(Color("TileBackground"))
                .cornerRadius(8)
        }
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(title: "ADD MORE") { }
    }
}
