//
//  ComingSoonVM.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 29/03/23.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
