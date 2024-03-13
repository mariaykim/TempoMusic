//
//  AudioPlayerViewModel.swift
//  TempoMusic
//
//  Created by Maria Kim on 3/12/24.
//

import AVFoundation

class AudioPlayerViewModel: ObservableObject {
    var audioPlayer: AVAudioPlayer?
    
    @Published var isPlaying = false
    
    init() {
        if let sound = Bundle.main.path(forResource: "sample", ofType: "m4a") {
            do {
                self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
            } catch {
                print("AVAudioPlayer could not be instantiated.")
            }
        } else {
            print("Audio file could not be found.")
        }
    }
    
    func playOrPause() {
        guard let player = audioPlayer else { return }
        
        
        if player.isPlaying {
            player.pause()
            isPlaying = false
        } else {
            player.play()
            isPlaying = true
        }
    }

    func playerDidFinishPlaying(note: NSNotification) {
        // Your code here
    }
}
