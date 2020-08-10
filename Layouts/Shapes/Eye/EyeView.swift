//
//  EyeView.swift
//  Layouts
//
//  Created by Niraj on 10/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct EyeView: View {
    var body: some View {
        ZStack {
            Circle()
            .stroke()
            .frame(width: 50, height: 50)

            Ellipse()
            .stroke()
            .frame(width: 150, height: 50)


        }
    }
}

struct EyeView_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
    }
}
