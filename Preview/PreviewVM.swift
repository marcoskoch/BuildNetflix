//
//  PreviewVM.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 03/04/23.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
