//
//  SmallActionButton.swift
//  FizzBuzz-SwiftUI
//
//  Created by David Gunawan on 07/07/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import SwiftUI

struct SmallActionButton: View {
    let title: String
    let action: () -> ()
    var enabled: Bool
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 19, weight: .black, design: .rounded))
                .padding(.horizontal, 20)
                .padding(.vertical, 9)
        }.disabled(!enabled)
            .frame(width: 210, alignment: .center)
            .background(enabled ? Color.orange : Color(UIColor.orange.withAlphaComponent(0.5)))
            .foregroundColor(enabled ? Color.white : Color(UIColor.white.withAlphaComponent(0.5)))
            .cornerRadius(4)
    }
}

struct SmallActionButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallActionButton(title: "RESET", action: {}, enabled: false)
    }
}
