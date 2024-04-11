//
//  HighlightView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import SwiftUI

struct HighlightView: View {
    
    let data: [HighligthData]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10) {
                ForEach(data) { item in
                    VStack {
                        ZStack {
                            Image(item.cover)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 58, height: 58)
                                .clipShape(Circle())
                            
                            Circle().stroke(.gray.opacity(0.5), style: StrokeStyle(lineWidth: 1, lineCap: .round))
                                .frame(width: 68, height: 68)
                        }
                        Text(item.name)
                            .lineLimit(1)
                            .font(.system(size: 12, weight: .regular))
                            .frame(width: 75)
                            .foregroundStyle(.black)
                    }
                }
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    HighlightView(data: HighlightMock)
}
