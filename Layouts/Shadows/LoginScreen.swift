//
//  LoginScreen.swift
//  Layouts
//
//  Created by Niraj on 02/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var password = ""

    private var shadowRadius: CGFloat = 8
    private var xAxis: CGFloat = 8
    private var yAxis: CGFloat = 8


    private let linearGradient = LinearGradient(gradient: Gradient(colors: [Color.clear,Color.themeBackground]), startPoint: UnitPoint.topLeading, endPoint: .bottomTrailing)

    var body: some View {

        ZStack {
           linearGradient
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 40) {
                Image(systemName: "person.circle")
                    .font(.system(size: 150, weight: .thin))
                    .foregroundColor(Color.themeForeground)
                    .shadow(radius: shadowRadius, x: xAxis, y: yAxis)

                Text("Login Screen")
                    .font(.largeTitle)
                    .foregroundColor(Color.themeForeground)
                .shadow(radius: shadowRadius, x: xAxis, y: yAxis)

                TextField("Name", text: $email)
                .padding()
                    .background(Capsule()
                        .fill(Color.themeForeground)
                        .opacity(0.6)
                        .shadow(radius: shadowRadius, x: xAxis, y: yAxis))

                SecureField("Password", text: $password)
                .padding()
                .background(Capsule()
                        .fill(Color.themeForeground)
                        .opacity(0.6)
                        .shadow(radius: shadowRadius, x: xAxis, y: yAxis))

                Button(action: {

                }, label: {
                    Text("Login")
                    .padding()
                        .frame(maxWidth: .infinity)
                    .background(Capsule()
                        .fill(Color.themeForeground))
                    .shadow(radius: shadowRadius, x: xAxis, y: yAxis)
                })

                Buttons1()
            }
            .padding([.horizontal])
        }
    }
}

struct Login_Preview: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
