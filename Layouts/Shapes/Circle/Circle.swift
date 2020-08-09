//
//  Circle.swift
//  Layouts
//
//  Created by Niraj on 07/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct Circle1: Shape {

    var yOffset: CGFloat =  105

    var animatableData: CGFloat {
        get {
            return yOffset
        }
        set {
            yOffset = newValue
        }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.maxX * 0.50, y: rect.minY))

//        path.addCurve(to: CGPoint(x: rect.maxX * 0.50, y: rect.minY), control1: CGPoint(x: rect.minX + 50, y: -rect.minY - 250), control2: CGPoint(x: rect.midX + 50, y: rect.minY))
//        path.closeSubpath()

//        path.addCurve(to: CGPoint(x: rect.maxX * 0.50, y: rect.minY ), control1: CGPoint(x: rect.minX + 50, y: rect.minY + 250), control2: CGPoint(x: rect.midX + 50, y: yOffset))

        path.addEllipse(in: CGRect(x: 120, y: 0, width: 150, height: 150))
        path.closeSubpath()
        
        return path
    }
}

struct Circle1_Previews: PreviewProvider {
    static var previews: some View {
        Circle1(yOffset: 100)
            .stroke(Color.red, lineWidth: 5)
            .frame(height: 50)
            .padding()
    }
}
