//
//  MoreLikeThis.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 24/02/23.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            
            ForEach(movies) { movie in
                StandardHomeMovie(movie: movie)
            }
            
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
