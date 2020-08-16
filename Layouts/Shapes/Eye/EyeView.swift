//
//  EyeView.swift
//  Layouts
//
//  Created by Niraj on 10/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct EyeView: View {

 //   let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
    let conic = RadialGradient(gradient: Gradient(colors: [.green, .purple]), center: .bottom, startRadius: 50, endRadius: 200)

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2975973887))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Rectangle()
                    .fill(Color.clear)
                    .foregroundColor(.white)
                //   .background(LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .bottom, endPoint: .top))

                .background(conic)
                    .frame(width: 250, height: 400)
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 4, x: 2, y: 2)
                    .opacity(0.7)

            }
        }
    }
}

struct EyeView_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
    }
}
