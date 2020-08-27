//
//  TopTabView.swift
//  Layouts
//
//  Created by Niraj on 27/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct TopTabView: View {
    var body: some View {
        NavigationView {
            ScrollView {

                TopView()

                HStack {
                    Text("Popular Apps")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading)

                    Spacer()
                }
            }
            .navigationTitle(Text("App Store"))
        }
    }
}

struct TopTabView_Previews: PreviewProvider {
    static var previews: some View {
        TopTabView()
    }
}

struct TopView: View {
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                VStack {
                    HStack {
                        VStack {
                            Text("Some text")
                        }
                    }
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                }
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.width, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

    }
}
