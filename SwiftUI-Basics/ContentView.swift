//
//  ContentView.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 19/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! @iamvishal16")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct MainView: View {
    var body: some View {
        HStack {
            Text("Hello, Main!")
        }
    }
}

#Preview {
    MainView()
}
