//
//  Blueprint1.swift
//  Layouts
//
//  Created by Niraj on 01/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct Blueprint1: View {
    var body: some View {
        ZStack {
            VStack {
                Circle()
                    .fill(Color.secondary)
                    .frame(width: 150.0, height: 150.0)
                    .offset(x: 150, y: -330)

                Circle()
                    .fill(Color.secondary)
                    .frame(width: 150.0, height: 150.0)
                    .offset(x: -170, y: -190)
            }

            GeometryReader { geo in
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 40)
                        .frame(height:  geo.size.height * 0.65)
                        .foregroundColor(.secondary)
                    .offset(y: 40)
                }
            }

            VStack(spacing: 20) {

                Circle()
                    .fill(Color.secondary)
                    .frame(width: 120.0, height: 120.0)

                Text("Hello World")
                    .font(.largeTitle)
                    .fontWeight(.black)

                Capsule()
                    .fill(Color.secondary)
                    .frame(width: 200.0, height: 50.0)

                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.secondary)
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.secondary)
                    }
                    HStack(spacing: 20) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.secondary)
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.secondary)
                    }
                    HStack(spacing: 20) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.secondary)
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.secondary)
                    }
                }
                .padding(.all)
            }
        }
    }
}

struct Blueprint1_Previews: PreviewProvider {
    static var previews: some View {
        Blueprint1()
    }
}
