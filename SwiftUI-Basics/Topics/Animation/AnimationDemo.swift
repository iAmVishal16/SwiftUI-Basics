//
//  AnimationDemo.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 06/11/24.
//

import SwiftUI

struct AnimationDemo: View {
    
    @State private var animate: Bool = false
    let colors:[Color] = [.pink, .blue, .green, .yellow, .red]
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(0 ..< colors.count) { item in
                    Circle()
                        .stroke(lineWidth: 2)
                        .foregroundStyle(colors[item])
                        .frame(height: CGFloat(item + 1) * 20)
                        .rotation3DEffect(
                            .degrees(45),
                                                  axis: (x: 1.0, y: 0.0, z: 0.0)
                        )
                        .offset(y: animate ? -100 : 100)
                        .animation(.spring.repeatForever().delay(0.1 * CGFloat(item)), value: animate)
                }
            }
            .frame(height: 800)
            
            Spacer()
            
            Button(action: {
                animate.toggle()
            }, label: {
                Text("Tap Me")
            })
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    AnimationDemo()
        .preferredColorScheme(.dark)
}
