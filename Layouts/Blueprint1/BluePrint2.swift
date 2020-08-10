//
//  BluePrint2.swift
//  Layouts
//
//  Created by Niraj on 10/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct BluePrint2: View {
    @State private var tField = ""
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack {
                        Text("Home Page")
                            .font(Font.system(.title))
                        Spacer()

                        Circle()
                            .stroke()
                            .frame(width: 50, height: 50)
                    }
                }
                HStack {
                    TextField("Search", text: $tField)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                HStack {
                    Rectangle()
                        .fill(Color.blue)
                        .opacity(0.5)
                        .frame(maxWidth: .infinity, maxHeight: 200)

                }

                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Rectangle()
                                .frame(width: 50, height: 50)
                            Rectangle()
                                .frame(width: 50, height: 50)
                        }
                    }
                }
                Spacer()

                Group {
                    Rectangle()
                        .fill(Color.purple)
                        .opacity(0.5)
                        .frame(maxWidth: .infinity, maxHeight: 200)
                    Rectangle()
                        .fill(Color.purple)
                        .opacity(0.5)
                        .frame(maxWidth: .infinity, maxHeight: 200)
                }

            }
            Spacer()
            .padding()
        }
    }
}

struct BluePrint2_Previews: PreviewProvider {
    static var previews: some View {
        BluePrint2()
    }
}
