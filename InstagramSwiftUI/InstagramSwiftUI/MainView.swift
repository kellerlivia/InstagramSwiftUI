//
//  MainView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 06/04/24.
//

import SwiftUI

struct MainView: View {
    
    @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
            HomeView()
                .tabItem {
                    Image(selection == 1 ? "home-selected" : "home")
                }.tag(1)
            
            NotificationView()
                .tabItem {
                    Image("add-button")
                }.tag(2)
            
            ProfileView()
                .tabItem {
                    Image(selection == 3 ? "user-selected" : "user")
                }.tag(3)
        })
    }
}

#Preview {
    MainView()
}
