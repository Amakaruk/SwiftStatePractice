//
//  ContentView.swift
//  SwiftStatePractice
//
//  Created by Aaron Makaruk on 1/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Count: \(count)")
                .font(.largeTitle)
            Button("Tap Me") {
                count += 1
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .bold(true)
        }
    }
}

#Preview {
    ContentView()
}
