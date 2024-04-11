//
//  HomeView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 06/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 237/255, green: 237/255, blue: 237/255)
                HStack(spacing: 20.0) {
                    ScrollView(.vertical) {
                        LazyVStack {
                            ForEach(viewModel.storyList) { story in
                                StoryView(story: story)
                            }
                        }
                    }
                    .background(.white)
                    .frame(width: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .scrollIndicators(.hidden)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach($viewModel.postList) { post in
                                PostView(post: post, isMuted: $viewModel.isMuted)
                            }
                        }
                    }
                }
                .padding()
            }
            .toolbarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 32)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button(action: {
                            print("search")
                        }, label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(.black)
                        })
                        
                        Button(action: {
                            print("message")
                        }, label: {
                            ZStack {
                                Image(systemName: "message")
                                    .foregroundStyle(.black)
                                
                                Text("3")
                                    .font(.system(size: 13, weight: .bold))
                                    .frame(width: 18, height: 18)
                                    .background(.red)
                                    .foregroundStyle(.white)
                                    .clipShape(Circle())
                                    .offset(x: 9, y: -9)
                            }
                        })
                    }
                }
            })
        }
    }
}

#Preview {
    HomeView()
}
