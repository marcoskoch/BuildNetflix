//
//  TopMoviePreview.swift
//  BuildNetflix
//
//  Created by Marcos Michel on 01/02/23.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                 return false
            }
        }
        
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List",
                                        isOnImage: "checkmark",
                                        isOffImage: "plus",
                                        isOn: true) {
                        print("Tapped")
                    }
                    
                    Spacer()
                    
                    PlayButton(text: "play", imageName: "play.fill") {
                        print("Tapped")
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info",
                                        isOnImage: "info.circle",
                                        isOffImage: "info.circle",
                                        isOn: true) {
                        print("Tapped")
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 15)
            }
            .background(
                LinearGradient.blackOpacityGradient
                .padding(.top, 250)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie2)
    }
}
