//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 06/04/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    UserProfileView()
                    HighlightView(data: viewModel.highlightData)
                    PostGridView(data: viewModel.profilePostData)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Text("kellerlivia")
                        .font(.system(size: 22, weight: .bold))
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        print("button")
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .foregroundStyle(.black)
                            .frame(width: 32, height: 22)
                    })
                }
            })
        }
    }
}

#Preview {
    ProfileView()
}
