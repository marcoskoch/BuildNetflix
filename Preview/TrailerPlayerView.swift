//
//  TrailerPlayerView.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 03/04/23.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {
    var videoURL: URL?
    
    @Binding var playVideo: Bool
    
    var body: some View {
        if videoURL != nil {
            VideoPlayer(url: videoURL!, play: $playVideo)
        } else {
            Text("Could not load video")
        }
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(videoURL: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!, playVideo: .constant(true))
    }
}
