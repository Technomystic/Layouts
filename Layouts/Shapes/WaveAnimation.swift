//
//  WaveAnimation.swift
//  Layouts
//
//  Created by Niraj on 06/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct WaveAnimation: View {

    @State private var change = false

    var body: some View {
        ZStack {
            VStack() {
                ZStack(alignment: .top) {

                    Wave(yOffset: change ? 0.6 : -0.8)
                        .fill(Color.blue)
                        .frame(height:200)
                        .animation(Animation.easeIn(duration: 0.5).repeatForever(autoreverses: true))
                     .opacity(0.6)


                    Wave(yOffset: change ? -0.8: 0.6)
                        .fill(Color.green)
                        .frame(height: 190)
                        .animation(Animation.easeOut(duration: 0.5).repeatForever(autoreverses: true))
                        .opacity(0.5)

                }

                Spacer()

                Button(action: {
                    self.change.toggle()
                }) {
                    Text("Change")
                }

                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct WaveAnimation_Previews: PreviewProvider {
    static var previews: some View {
        WaveAnimation()
    }
}
