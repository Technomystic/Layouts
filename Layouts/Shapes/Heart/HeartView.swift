//
//  HeartView.swift
//  Layouts
//
//  Created by Niraj on 09/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct HeartView: View {
    @State private var bounce = false
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 80, height: 80)

            Circle()
                .frame(width: 80, height: 80)
                .offset(x: 40)

            Circle()
                .frame(width: 80, height: 80)
                .offset(y: 40)
        }
        .rotationEffect(.degrees(225))
        .foregroundColor(.red)
        .scaleEffect(bounce ? 1: 2)
        .animation(.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0.5))
        .onTapGesture {
            self.bounce.toggle()
        }
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView()
    }
}
