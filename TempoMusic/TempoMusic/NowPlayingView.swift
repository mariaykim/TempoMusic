//
//  NowPlayingView.swift
//  TempoMusic
//
//  Created by Maria Kim on 3/12/24.
//

import SwiftUI

struct NowPlayingView: View {
  @StateObject var audioPlayerViewModel = AudioPlayerViewModel()

  var body: some View {
    VStack {
      Button(action: {
        audioPlayerViewModel.playOrPause()
      }) {
        Image(systemName: audioPlayerViewModel.isPlaying ? "pause.circle" : "play.circle")
          .resizable()
          .frame(width: 64, height: 64)
      }
    }
  }
}

