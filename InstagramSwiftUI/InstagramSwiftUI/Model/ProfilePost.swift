//
//  ProfilePost.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import Foundation

enum PostType: String {
    case video
    case multiple
}

struct ProfilePost: Identifiable {
    var id = UUID()
    var image: String
    var type: PostType
}
