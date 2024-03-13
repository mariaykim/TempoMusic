//
//  ContentView.swift
//  TempoMusic
//
//  Created by Maria Kim on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NowPlayingView()
                .tabItem {
                    Label("Now Playing", systemImage: "play.circle")
                }
            
            FilesView()
                .tabItem {
                    Label("Files", systemImage: "folder")
                }

            SavedTracksView()
                .tabItem {
                    Label("Saved Tracks", systemImage: "note")
                }
        }
    }
}

#Preview {
    ContentView()
}
