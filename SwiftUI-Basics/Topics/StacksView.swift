//
//  StacksView.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 21/04/24.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        ZStack {
            
            Circle()
            
            VStack {
                HStack(spacing: 40) {
                    Circle()
                    Circle()
                }
                .frame(height: 100)
                .foregroundStyle(.white)

                Circle()
                    .trim(from: 0.0, to: 0.5)
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.white)

            }
            
            
        }
        .padding()
    }
}

#Preview("StacksView") {
    StacksView()
}

struct VStackExampleView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Rectangle()
                .foregroundStyle(.red)
                .frame(width: 200, height: 200)


            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 100, height: 100)


            Rectangle()
                .foregroundStyle(.yellow)
                .frame(width: 100, height: 100)


        }
    }
}

#Preview("VStack") {
    VStackExampleView()
}

struct HStackExampleView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Rectangle()
                .frame(width: 100, height: 200)

            Rectangle()
                .frame(width: 100, height: 100)

            Rectangle()
                .frame(width: 100, height: 100)

        }
    }
}

#Preview("HStack") {
    HStackExampleView()
}

struct ZStackExampleView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundStyle(.red)

            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.green)

            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundStyle(.yellow)

        }
    }
}

#Preview("ZStack") {
    ZStackExampleView()
}
