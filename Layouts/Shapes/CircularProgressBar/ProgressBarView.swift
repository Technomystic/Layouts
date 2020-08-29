//
//  ProgressBarView.swift
//  Layouts
//
//  Created by Niraj on 29/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct ProgressBarView: View {
    @State private var progressValue: Float = 0.28
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.5)
                .edgesIgnoringSafeArea(.all)

            VStack {
                ProgressBar(progress: $progressValue)
                    .frame(width: 150, height: 150)
                    .padding(40)
            }

        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}

struct ProgressBar: View {
    @Binding var progress: Float
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(Color.red)
                .opacity(0.3)

            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.red)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)

            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
        }
    }
}
