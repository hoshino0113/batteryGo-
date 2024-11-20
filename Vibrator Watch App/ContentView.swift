//
//  ContentView.swift
//  Vibrator Watch App
//
//  Created by Hoshino on 2024-11-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("🍑") {
                var time = 0
                Timer.scheduledTimer(withTimeInterval: 0.7, repeats: true) {timer in
                    WKInterfaceDevice.current().play(.retry)
                    time += 1
                    if time == 180 {
                        timer.invalidate()
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
