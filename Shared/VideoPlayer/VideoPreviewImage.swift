//
//  VideoPreviewImage.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 27/02/23.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    var videoURL: URL
    var imageURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button {
                showingVideoPlayer = true
            } label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            }
            .sheet(isPresented: $showingVideoPlayer) {
                SwiftUIVideoView(url: videoURL)
            }

        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(videoURL: exampleVideoURL, imageURL: exampleImageURL)
    }
}
