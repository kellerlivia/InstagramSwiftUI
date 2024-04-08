//
//  StoryView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 06/04/24.
//

import SwiftUI

struct StoryView: View {
    
    @State var story: StoryData
    
    private let gradient = LinearGradient(gradient: Gradient(colors: [
        Color.yellow,
        Color(red: 252/255, green: 175/255, blue: 69/255),
        Color(red: 225/255, green: 48/255, blue: 108/255),
        Color(red: 193/255, green: 53/255, blue: 132/255),
        Color(red: 131/255, green: 58/255, blue: 180/255)]), startPoint: .bottomLeading, endPoint: .topTrailing)
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Circle().stroke(gradient, style: StrokeStyle(lineWidth: 3, lineCap: .round))
                    .frame(width: 72)
                Image(story.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 62, height: 62)
                    .clipShape(Circle())
                if story.myStory {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .background(Color.white.clipShape(Circle()))
                        .foregroundStyle(.blue)
                        .offset(x: 28, y: 20)
                }
            }
            Text(story.name)
                .lineLimit(1)
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.primary)
        }
        .padding(.top, 5)
    }
}

#Preview {
    StoryView(story: StoryMock[0])
}
