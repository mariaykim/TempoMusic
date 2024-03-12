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
