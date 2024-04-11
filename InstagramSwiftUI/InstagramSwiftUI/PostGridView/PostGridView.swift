//
//  PostGridView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import SwiftUI

struct PostGridView: View {
    
    let data: [ProfilePost]
    let gridLayout: [GridItem] = Array(repeating: .init(.flexible(), spacing: 2), count: 3)
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 2) {
            ForEach(data) { item in
                ZStack(alignment: .topTrailing) {
                    Image(item.image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: (UIScreen.main.bounds.width - (CGFloat(gridLayout.count) * 2)) / CGFloat(gridLayout.count))
                    Image(systemName: item.type == .video ? "play.fill" : "square.fill.on.square.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .foregroundStyle(.white)
                        .padding(5)
                }
            }
        }
    }
}

#Preview {
    PostGridView(data: ProfilePostMock)
}
