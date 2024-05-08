//
//  HomeView.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 07/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UserListView()
    }
}

#Preview("HomeView") {
    HomeView()
}

struct UserListView: View {
    
    @State private var users = [
        User(name: "Ram", age: 34),
        User(name: "Sita", age: 28),
        User(name: "Jag", age: 21),
        User(name: "Dimple", age: 16),
        User(name: "Rohit", age: 31)
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach($users) { $user in
                    UserView(user: $user)
                        .onTapGesture {
                            user.isFav.toggle()
                        }
                }
            }
            .padding()
        }
    }
}

#Preview("UserListView", body: {
    UserListView()
        .preferredColorScheme(.dark)
})

struct UserView: View {
    
    @Binding var user: User
    
    var body: some View {
        VStack {
            HStack {
                Text("\(user.name)")
                Text("\(user.age)")
                
                Spacer()
                
                Button(action: {
                    user.isFav.toggle()
                }, label: {
                    Image(systemName: user.isFav ? "heart.fill" : "heart")
                })
                
            }
        }
        .padding()
        .background(
            .bar
        )
    }
}

#Preview("UserView", body: {
    UserView(user: .constant(User(name: "Ram", age: 34)))
})
