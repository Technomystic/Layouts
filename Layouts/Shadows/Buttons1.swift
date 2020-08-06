//
//  Buttons.swift
//  Layouts
//
//  Created by Niraj on 02/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct Buttons1: View {
    @State private var change = false
    var body: some View {
        ZStack {
            VStack {
                Wave(yOffset: change ? 0.5 : -0.5)
                    .frame(height: 150)
                 Spacer()
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 200, height: 60)
                        .background(
                            ZStack {
                                Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))

                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .foregroundColor(.white)
                                .blur(radius: 4)
                                .offset(x: -8, y: -8)

                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                                .padding(2)
                                .blur(radius: 4)

                            }
                    )
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), radius: 20, x: 20, y: 20)
                     .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                        .onTapGesture {
                            self.change.toggle()
                    }
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons1()
    }
}
