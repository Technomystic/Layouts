//
//  RectangleView.swift
//  Layouts
//
//  Created by Niraj on 20/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct RectangleView: View {
    @State private var morph = false
    var body: some View {
        VStack {
           Rectangle()
            .fill(morph ? Color.green : Color.blue)
            .frame(width: morph ? 100 : 50, height: morph ? 100 : 50)
            .cornerRadius(morph ? 0 : 50)
            .animation(.spring(response: 1, dampingFraction: 0.5, blendDuration: 0.5))
            .onTapGesture {
                self.morph.toggle()
            }
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
