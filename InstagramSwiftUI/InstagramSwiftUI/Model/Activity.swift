//
//  Activity.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import Foundation

enum ActivityType {
    case liked
    case newFollower
    case suggestFollower
    case comment
}

struct Activity: Identifiable {
    var id = UUID()
    var activaty: ActivityType
    var duration: String
    var usersInContext: [User]
    var postImage: String?
    var comment: String?
    
    func getUsernames() -> String {
        return usersInContext.map{$0.userName}.joined(separator: ", ")
    }
}
