//
//  PostData.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 08/04/24.
//

import Foundation

struct PostData: Identifiable {
    var id = UUID()
    var profileImage: String
    var userName: String
    var postImage: String?
    var isLiked: Bool
    var isSaved: Bool
    var caption: String
    var isVideo: Bool
    var videoURL: String?
}
