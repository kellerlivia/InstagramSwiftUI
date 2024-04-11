//
//  NotificationViewModel.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import Foundation

@Observable
class NotificationViewModel {
    
    var activityList: [Activity] = [
        Activity(activaty: .liked,
                 duration: "20m",
                 usersInContext: [
                    User(userName: "apple", userImage: "apple"),
                    User(userName: "palmeiras", userImage: "palmeiras"),
                    User(userName: "tecna", userImage: "tecna")
                 ],
                 postImage: "whatsapp"),
        
        Activity(activaty: .comment,
                 duration: "50m",
                 usersInContext: [
                    User(userName: "apple", userImage: "apple")
                 ],
                 postImage: "whatsapp",
                 comment: "uauuuuuuu!!"),
        
        Activity(activaty: .suggestFollower,
                 duration: "1h e 25m",
                 usersInContext: [
                    User(userName: "tecna", userImage: "tecna")
                 ],
                 postImage: "apple"),
        
        Activity(activaty: .newFollower,
                 duration: "2h e 35m",
                 usersInContext: [
                    User(userName: "palmeiras", userImage: "palmeiras")
                 ],
                 postImage: "apple"),
    ]
}
