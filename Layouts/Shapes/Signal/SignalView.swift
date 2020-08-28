//
//  SignalView.swift
//  Layouts
//
//  Created by Niraj on 26/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

class Signals: ObservableObject {

    enum SignalState {
        case stop, ready, go
    }

    @Published var currentSignalState: SignalState = .stop

    func configureSignalState() {
        currentSignalState = .stop
    }


}

struct SignalView: View {
    @State var signalState = Signals()
    @State private var signal = false
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 250, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                        LightsView(state: $signalState.currentSignalState)
                    }
                }
                .onAppear() {
                    signalState.configureSignalState()
                }
        }
    }
}

struct SignalView_Previews: PreviewProvider {
    static var previews: some View {
        SignalView()
    }
}

struct LightsView: View {
    @Binding var state: Signals.SignalState
    @State private var red = false
    @State private var yellow = false
    @State private var green = false
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(spacing: 30) {

            Circle()
                .fill(red ? Color.red : Color.red.opacity(0.5))
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)


            Circle()
                .fill(yellow ? Color.yellow : Color.yellow.opacity(0.5))
                .frame(width: 100, height: 100, alignment: .center)


            Circle()
                .fill(green ? Color.green : Color.green.opacity(0.5))
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

        }
        .onReceive(timer) { input in
            if state == .stop {
                state = .ready
                yellow = false
                green = false
                red.toggle()
            } else if state == .ready {
                state = .go
                red = false
                green = false
                yellow.toggle()
            } else {
                state = .stop
                yellow = false
                red = false
                green.toggle()
            }
        }
    }
}
