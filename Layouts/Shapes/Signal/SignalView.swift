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

                        LightsView(signal: $signal, state: $signalState.currentSignalState)
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
    @Binding var signal: Bool
    @Binding var state: Signals.SignalState
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(spacing: 30) {

            Circle()
                .fill(state == .stop ? Color.red : Color.black)
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .opacity(signal ? 0.5 : 1)

            Circle()
                .fill(state == .ready ? Color.yellow : Color.black)
                .frame(width: 100, height: 100, alignment: .center)
                .opacity(signal ? 0.5 : 1)

            Circle()
                .fill(state == .go ? Color.green : Color.black)
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .opacity(signal ? 0.5 : 1)
        }
        .onReceive(timer) { input in
            if state == .stop {

                state = .ready
            } else if state == .ready {
                state = .go
            } else {
                state = .stop
            }
        }
    }
}
