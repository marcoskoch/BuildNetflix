//
//  ComingSoonRow.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 28/03/23.
//

import SwiftUI

struct ComingSoonRow: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ComingSoonRow_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonRow(movie: exampleMovie1, movieDetailToShow: .constant(nil))
    }
}
