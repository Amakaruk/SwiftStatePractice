//
//  ContentView.swift
//  SwiftStatePractice
//
//  Created by Aaron Makaruk on 1/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var isEven = true
    @State private var colorIndex = 0

    let colors: [Color] = [.blue, .purple, .green, .orange, .pink]

    var body: some View {
        VStack(spacing: 40) {
            // Displays the current value of the count state variable
            Text("Count: \(count)")
                .font(.largeTitle)
                .foregroundStyle(colors[colorIndex])
            // This ternary operator checks to see if the value of isEven is true and returns the string "Even" if it is or else the string "Odd" if not.
            Text(isEven ? "Even" : "Odd")
                .font(.title)
            // If the isEven is true, show this text view as an indigo color, otherwise show it as red.
                .foregroundStyle(isEven ? .indigo : .red)
            Button("Tap Me") {
                count += 1
                // Check the current value of count to see if it is even.
                isEven = count % 2 == 0
                // Cycles the color index state variable through the colors array and resets to 0 to begin the cycle again.
                colorIndex = (colorIndex + 1) % colors.count
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .bold(true)
            .tint(colors[colorIndex])
        }
    }
}

#Preview {
    ContentView()
}
