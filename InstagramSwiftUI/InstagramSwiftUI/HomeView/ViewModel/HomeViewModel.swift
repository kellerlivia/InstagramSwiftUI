//
//  HomeViewModel.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 07/04/24.
//

import SwiftUI

@Observable
class HomeViewModel {
    
    var storyList: [StoryData] = [
        StoryData(image: "livia", name: "seu story", myStory: true),
        StoryData(image: "github", name: "github", myStory: false),
        StoryData(image: "instagram", name: "instagram", myStory: false),
        StoryData(image: "apple", name: "apple", myStory: false),
        StoryData(image: "palmeiras", name: "palmeiras", myStory: false),
        StoryData(image: "tecna", name: "tecna", myStory: false),
        StoryData(image: "whatsapp", name: "whatsapp", myStory: false)
    ]
    
    var isMuted: Bool = true

    var postList: [PostData] = [
        PostData(profileImage: "apple", userName: "apple", postImage: "apple", isLiked: true, isSaved: false, caption: "iOS is better", isVideo: false, videoURL: nil),
        PostData(profileImage: "apple", userName: "apple", postImage: "", isLiked: false, isSaved: true, caption: "xcode mobile desenvolvimento iOS", isVideo: true, videoURL: "code")
    ]
}
