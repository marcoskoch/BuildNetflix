//
//  MovieDetail.swift
//  BuildNetflix
//
//  Created by Marcos Michel on 09/02/23.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                    .buttonStyle(PlainButtonStyle())

                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        
                        StandartHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                        
                    }
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie6)
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text("year")
            
            Text("rating")
            
            Text("seasons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
