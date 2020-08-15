//
//  DoubleCircleView.swift
//  Layouts
//
//  Created by Niraj on 15/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct DoubleCircleView: View {
    @State private var centralGap = false
    @State private var morph = false
    var count = 6
    let blackScreen = Color(red: 0, green: 0, blue: 0)

    var body: some View {
        ZStack {
            blackScreen
                .edgesIgnoringSafeArea(.all)

            ZStack {
                ForEach(0..<count) {
//                    Circle()
//                        .foregroundColor(self.centralGap ? Color.green : Color.blue)
//                        .frame(width: 150, height: 150)
//                        .offset(x: self.centralGap ? 0 : 45)
//                        .rotationEffect(.degrees(Double($0) * 60))
//                    .rotationEffect(.degrees(self.centralGap ? Double($0) * 60 : 0))
//                        .animation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 0.5))
//                        .opacity(self.centralGap ? 1 : 0.5)
//                        .onTapGesture {
//                            self.centralGap.toggle()
//                    }

                    Rectangle()
                        .foregroundColor(self.centralGap ? Color.blue : Color.yellow)
                        .frame(width: 150, height: 150)
                     //   .cornerRadius(self.centralGap ? 150 : 0)
                        .offset(x: self.centralGap ? 0 : 45)
                        .rotationEffect(.degrees(Double($0) * 60))
                        .rotationEffect(.degrees(self.centralGap ? Double($0) * 30 : 0))
                        .animation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 0.5))
                        .opacity(self.centralGap ? 1 : 0.5)
                        .onTapGesture {
                            self.centralGap.toggle()
                    }
                }

            }
        }
    }
}

struct DoubleCircleView_Previews: PreviewProvider {
    static var previews: some View {
        DoubleCircleView()
    }
}
