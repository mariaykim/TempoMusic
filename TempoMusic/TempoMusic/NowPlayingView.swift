//
//  NowPlayingView.swift
//  TempoMusic
//
//  Created by Maria Kim on 3/12/24.
//

import SwiftUI

struct NowPlayingView: View {
    @StateObject var audioPlayerViewModel = AudioPlayerViewModel()
    @State private var speed = Float(1)
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Text("Files")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Button(action: {
                audioPlayerViewModel.playOrPause()
            }) {
                Image(systemName: audioPlayerViewModel.isPlaying ? "pause.circle" : "play.circle")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            Spacer()
            Slider(
                value: $speed,
                in: 0...2,
                onEditingChanged: { editing in
                    isEditing = editing
                    audioPlayerViewModel.adjustRate(rate: speed)
                }
            )
            Text(String(format: "%.1f", speed) + "x")
                .foregroundColor(isEditing ? .red : .blue)
        }
        .padding(StyleGuide.Size.mediumPadding)
    }
}

