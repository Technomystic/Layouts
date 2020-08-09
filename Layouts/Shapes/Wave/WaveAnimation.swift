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
    @State private var degree = 0.0
    @State private var motionCircularPath = false

    var body: some View {
        ZStack {
            VStack() {
                ZStack(alignment: .top) {

                    Wave(yOffset: change ? 0.6 : -0.8)
                        .fill(Color.red)
                        .frame(height:200)
                        .shadow(color: Color.green, radius: 3, x: 4, y: 6)
                        .animation(Animation.easeIn(duration: 1.5).repeatForever(autoreverses: true).speed(1.5))
                     .opacity(0.6)


                    Wave(yOffset: change ? -0.8: 0.6)
                        .fill(Color.green)
                        .frame(height: 190)
                        .shadow(color: Color.red, radius: 3, x: 4, y: 6)

                        .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true).speed(1.5))
                        .opacity(0.6)
                }

                Spacer()

                VStack(spacing: 120) {
                    Spacer()
                    Button(action: {
                            self.change.toggle()
                            self.degree += 180
                        }) {
                            Text("Change")
                    }

                    Spacer()

                    ZStack {
                        Circle()
                            .stroke()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color.red)


                        Circle()
                            .frame(width: 15, height: 15)
                            .offset(y: -50)
                            .rotationEffect(.degrees(change ? 0 : -360))
                            .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false))
                            .onAppear() {
                                self.change.toggle()
                        }
                    }

                     Spacer()
                }



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
