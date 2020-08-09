//
//  MorphView.swift
//  Layouts
//
//  Created by Niraj on 09/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct MorphView: View {
    @State private var morph = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(morph ? Color.blue : Color.green)
                .frame(width: morph ? 120 : 300, height: morph ? 120 : 300)
                .cornerRadius(morph ? 300/2: 0)
                .rotationEffect(.degrees(morph ? 145: 0))
                .animation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 0.5))
                .onTapGesture {
                     self.morph.toggle()
            }
        }
    }
}

struct MorphView_Previews: PreviewProvider {
    static var previews: some View {
        MorphView()
    }
}
