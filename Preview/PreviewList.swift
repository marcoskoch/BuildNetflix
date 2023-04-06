//
//  PreviewList.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 05/04/23.
//

import SwiftUI

struct PreviewList: View {
    var movies: [Movie]
    
    @Binding var currentSelection: Int
    @Binding var isVisible: Bool
    
    @State private var currentTranslation: CGFloat = 0
    
    let screen = UIScreen.main.bounds
    
    func shouldPlayVideo(index: Int) -> Bool {
        if !isVisible || index != currentSelection {
            return false
        }
        
        return true
    }
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            PagerView(
                pageCount: movies.count,
                currentIndex: $currentSelection,
                translation: $currentTranslation) {
                    
                    ForEach(0..<movies.count, id: \.self) { movieIndex in
                        let movie = movies[movieIndex]
                        
                        PreviewView(
                            vm: PreviewVM(movie: movie),
                            playVideo: shouldPlayVideo(index: movieIndex))
                            .frame(width: screen.width)
                    }
                    
                }
                .frame(width: screen.width)
        }
    }
}

struct ExamplePreviewList: View {
    
    @State private var currentSelection = 0
    @State private var isVisible = true
    
    var body: some View {
        PreviewList(movies: exampleMovies, currentSelection: $currentSelection, isVisible: $isVisible)
    }
}

struct PreviewList_Previews: PreviewProvider {
    static var previews: some View {
        ExamplePreviewList()
    }
}
