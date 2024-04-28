//
//  BuiltInViews.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 27/04/24.
//

import SwiftUI

struct BuiltInViews: View {
    
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            Text("Hello, World! Lorem Impsum La Lorem imsum")
                .font(.custom("Jersey25-Regular.ttf", size: 21))
                .foregroundStyle(.red)
                .underline(true, color: .green)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .fontDesign(.monospaced)
//                .lineLimit(1)
                .padding([.leading, .trailing], 24)
            
            Label("Files", systemImage: "folder")
            
            Button("Button") {
                print("Button Clicked")
            }
            
            Button(action: {
                print("custom Button Clicked")
            }, label: {
                Text("Login")
                    .frame(width: 100, height: 40)
                    .background(
                        .black
                    )
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                

            })
            
            Image(systemName: "rainbow")
                .resizable()
                .frame(width: 100, height: 50)
                .padding(.top)
                
            Image("dextor")
                .resizable()
                .frame(width: 200, height: 200)

            ColorPicker("Color Picket", selection: .constant(.green))
                .padding()
            
            TextField("Username", text: $username)
                .padding()
                .background(
                    .regularMaterial
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding()
                .foregroundStyle(.black)
                .tint(.purple)
            
            List {
                Section("Section 1") {
                    Text("Row 1")
                    Text("Row 2")
                }
                
                Section("Section 1") {
                    Text("Row 3")
                    Text("Row 4")
                    Text("Row 5")
                }
            }
            .listRowSpacing(0)
        }
    }
}

#Preview {
    BuiltInViews()
}
