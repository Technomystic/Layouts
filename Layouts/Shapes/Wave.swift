//
//  Wave.swift
//  Layouts
//
//  Created by Niraj on 04/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct Wave: Shape {

    func path(in rect: CGRect) -> Path {
         var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX * 0.75, y: rect.midY),
                      control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY * 1.5))
        path.closeSubpath()

        return path
    }

}

struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        Wave()
            .stroke(Color.red, lineWidth: 5)
            .frame(height: 200)
        .padding()

    }
}
