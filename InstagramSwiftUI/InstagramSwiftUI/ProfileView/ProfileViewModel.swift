//
//  ProfileViewModel.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import UIKit

@Observable
class ProfileViewModel {
    
    var highlightData: [HighligthData] = [
        HighligthData(name: "iOS", cover: "apple"),
        HighligthData(name: "SwiftUI", cover: "apple"),
        HighligthData(name: "UIKit", cover: "apple"),
        HighligthData(name: "ViewCode", cover: "apple"),
        HighligthData(name: "Storyboard", cover: "apple"),
        HighligthData(name: "MVVM", cover: "apple")
    ]
    
    var profilePostData: [ProfilePost] = [
        ProfilePost(image: "apple", type: .multiple),
        ProfilePost(image: "github", type: .multiple),
        ProfilePost(image: "github", type: .video),
        ProfilePost(image: "apple", type: .multiple),
        ProfilePost(image: "github", type: .video),
        ProfilePost(image: "apple", type: .multiple),
        ProfilePost(image: "github", type: .multiple),
        ProfilePost(image: "github", type: .video)
    ]
}
