//
//  NotificationView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 06/04/24.
//

import SwiftUI

struct NotificationView: View {
    
    @State private var viewModel: NotificationViewModel = NotificationViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    ForEach(viewModel.activityList) { activity in
                        ActivityView(activity: activity)
                    }
                }
            }
            .navigationTitle("notificações")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    NotificationView()
}
