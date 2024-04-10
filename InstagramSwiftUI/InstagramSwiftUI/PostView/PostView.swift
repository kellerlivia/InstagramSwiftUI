//
//  PostView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 08/04/24.
//

import SwiftUI

struct PostView: View {
    
    @Binding var post: PostData
    @Binding var isMuted: Bool
    @State var islikeAnimation: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 10.0) {
                Image(post.profileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 33, height: 33)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 0.5)
                    }
                Text(post.userName)
                    .font(.system(size: 14, weight: .semibold))
                
                Spacer()
                
                Button(action: {
                    print("button")
                }, label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.black)
                })
            }
            .padding(.vertical, 10.0)
            .padding(.horizontal, 12.0)
            
            ZStack {
                if !post.isVideo {
                    Image(post.postImage ?? "error")
                        .resizable()
                        .scaledToFit()
                        .onTapGesture(count: 2, perform: {
                            tappedLike()
                        })
                } else {
                    CustomVideoView(isMuted: $isMuted, url: post.videoURL)
                        .frame(minWidth: 350)
                        .onTapGesture(count: 2, perform: {
                            tappedLike()
                        })
                }
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFill()
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 100)
                    .scaleEffect(islikeAnimation ? 1 : 0)
                    .opacity(islikeAnimation ? 1 : 0)
                    .animation(.spring, value: islikeAnimation)
            }
            
            HStack {
                Button(action: {
                    post.isLiked.toggle()
                }, label: {
                    Image(systemName: post.isLiked ? "heart.fill" : "heart")
                        .resizable()
                        .frame(width: 26, height: 24)
                        .foregroundStyle(post.isLiked ? .red : .black)
                })
                
                Button(action: {
                    print("comment")
                }, label: {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.black)
                })
                
                Button(action: {
                    print("share")
                }, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.black)
                })
                
                Spacer()
                
                Button(action: {
                    post.isSaved.toggle()
                }, label: {
                    Image(systemName: post.isSaved ? "bookmark.fill" : "bookmark")
                        .resizable()
                        .frame(width: 18, height: 24)
                        .foregroundStyle(.black)
                })
            }
            .padding(.top, 8)
            .padding(.horizontal, 15)
            
            if !post.caption.isEmpty {
                HStack {
                    Text(post.userName)
                        .font(Font.system(size: 14, weight: .bold))
                    + Text(" ")
                    + Text(post.caption)
                        .font(Font.system(size: 14, weight: .regular))
                    
                    Spacer()
                }
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 15)
                .padding(.top, 2)
                .padding(.bottom, 10)
            }
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    func tappedLike() {
        islikeAnimation = true
        post.isLiked = true
        hiddeAnimation()
    }
    
    func hiddeAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            withAnimation {
                islikeAnimation = false
            }
        }
    }
}

#Preview {
    @State var post = PostMock[0]
    return PostView(post: $post, isMuted: .constant(true))
        .background(.black)
}
