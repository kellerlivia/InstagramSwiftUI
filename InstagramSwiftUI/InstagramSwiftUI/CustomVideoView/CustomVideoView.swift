//
//  CustomVideoView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 09/04/24.
//

import SwiftUI
import AVKit

struct CustomVideoView: View {
    
    @Binding var isMuted: Bool
    var videoURL: URL?
    @State var player = AVPlayer()
    
    init(isMuted: Binding<Bool>, url: String?) {
        _isMuted = isMuted
        self.videoURL = Bundle.main.url(forResource: url, withExtension: "mov")
    }
    
    var body: some View {
        if let url = videoURL {
            ZStack(alignment: .bottomTrailing) {
                VideoPlayer(player: player)
                    .onAppear {
                        player.pause()
                        player = AVPlayer(url: url)
                        player.play()
                        player.isMuted = isMuted
                    }
                    .onDisappear {
                        player.pause()
                    }
                Color.white.opacity(0)
                Button {
                    isMuted.toggle()
                } label: {
                    Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.2.fill")
                        .foregroundStyle(.white)
                        .padding()
                        .background(.black.opacity(0.7))
                        .clipShape(Circle())
                }
                .padding(8)
            }
        } else {
            VStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .resizable()
                    .foregroundStyle(.yellow)
                    .frame(width: 50, height: 50)
                Text("ops, tivemos um problema com esse video")
                    .lineLimit(2)
            }
        }
    }
}

#Preview {
    CustomVideoView(isMuted: .constant(true), url: "code")
}
