//
//  Shadows.swift
//  Layouts
//
//  Created by Niraj on 01/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct Shadows: View {
    var body: some View {
        VStack(spacing: 20) {

            Text("Shadows OverView")
                .font(.largeTitle)
                .fontWeight(.bold)

            Spacer()

            VStack {
                Text("Basic")
                    .font(.headline)
                Circle()
                    .fill(Color.blue)
                    .frame(height: 60.0)
                    .shadow(color: Color.gray, radius: 8, x: 4, y: 6)

            }

            Spacer()

            Text("Level of Depth")
                .font(.headline)

            HStack {
                Circle()
                 .fill(Color.blue)
                    .shadow(color: .green, radius: 6, x: 5, y: 7)
                Circle()
                 .fill(Color.blue)
                Circle()
                 .fill(Color.blue)
            }
            .frame(height: 60.0)

            Spacer()

            Text("Colored Shadow")
                .font(.headline)

            HStack {
                Circle()
                 .fill(Color.blue)
                Circle()
                 .fill(Color.red)
                Circle()
                 .fill(Color.green)
            }
            .frame(height: 60.0)

            Spacer()

        }
        .padding(.all)

    }
}

struct Shadows_Previews: PreviewProvider {
    static var previews: some View {
        Shadows()
    }
}
