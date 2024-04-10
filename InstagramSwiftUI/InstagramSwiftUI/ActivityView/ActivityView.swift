//
//  ActivityView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import SwiftUI

struct ActivityView: View {
    
    let activity: Activity
    
    var body: some View {
        HStack {
            Image(activity.usersInContext.first?.userImage ?? "")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
            if activity.activaty != .comment {
                Text(activity.getUsernames())
                    .font(.system(size: 12, weight: .semibold))
                + Text(getDescription())
                    .font(.system(size: 12, weight: .regular))
                + Text(activity.duration)
                    .font(.system(size: 10, weight: .light))
            } else {
                Text(activity.getUsernames())
                    .font(.system(size: 12, weight: .semibold))
                + Text(" comentou em sua publicação: ")
                    .font(.system(size: 12, weight: .regular))
                + Text(activity.comment ?? "")
                    .font(.system(size: 12, weight: .semibold))
                + Text(" " + activity.duration)
                    .font(.system(size: 10, weight: .light))
            }
            
            Spacer()
            
            if activity.activaty == .suggestFollower || activity.activaty == .newFollower {
                Button(activity.activaty == .suggestFollower ? "seguir" : "seguindo") {
                    print("button")
                }
                .font(.system(size: 14, weight: .semibold))
                .frame(width: 100, height: 30)
                .foregroundStyle(activity.activaty == .suggestFollower ? .white : .primary)
                .background(activity.activaty == .suggestFollower ? .blue : .white)
                .clipShape(RoundedRectangle(cornerRadius: 6.0))
                .overlay {
                    RoundedRectangle(cornerRadius: 6.0)
                        .stroke(activity.activaty == .suggestFollower ? .clear : .gray, lineWidth: 1)
                }
            } else {
                Image(activity.postImage ?? "apple")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.horizontal)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
    }
    
    func getDescription() -> String {
        switch activity.activaty {
        case .liked:
            return activity.usersInContext.count == 1 ? " curtiu sua publicação" : " e outras pessoas curtiram a sua publicação. "
        case .newFollower:
            return activity.usersInContext.count == 1 ? " começou a seguir você " : " começaram a seguir você \(activity.usersInContext.count - 1) pessoas "
        case .suggestFollower:
            return " quem talvez você conheça está na apple "
        case .comment:
            return ""
        }
    }
    
}

#Preview {
    ActivityView(activity: ActivityMock[0])
}
