//
//  StandartHomeMovie.swift
//  BuildNetflix
//
//  Created by Marcos Michel on 27/01/23.
//

import SwiftUI
import Kingfisher

struct StandartHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandartHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandartHomeMovie(movie: exampleMovie1)
    }
}
