//
//  StoryData.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 06/04/24.
//

import Foundation

struct StoryData: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var myStory: Bool
}
