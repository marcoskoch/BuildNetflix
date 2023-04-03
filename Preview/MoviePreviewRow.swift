//
//  MoviePreviewRow.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 31/03/23.
//

import SwiftUI

struct MoviePreviewRow: View {
    var movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Previews")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.leading, 6)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack{
                    ForEach(0..<movies.count, id: \.self) { movieIndex in
                        let movie = movies[movieIndex]
                        
                        MoviePreviewCell(movie: movie)
                            .frame(width: 120, height: 120)
                            .padding(.trailing, 14)
                            .padding(.leading, 6)
                    }
                }
            }
        }
        .frame(height: 185)
    }
}

struct MoviePreviewRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            MoviePreviewRow(movies: exampleMovies)
        }
    }
}
