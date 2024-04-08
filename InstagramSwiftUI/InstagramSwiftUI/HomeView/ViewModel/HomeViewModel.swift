//
//  HomeViewModel.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 07/04/24.
//

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

}
