//
//  User.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 07/05/24.
//

import Foundation

struct User: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var age: Int
    var isFav: Bool = false
}
