//
//  HomeStack.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 06/03/23.
//

import Foundation
import SwiftUI 

struct HomeStack: View {
    var vm: HomeVM
    
    var topRowSelection: HomeTopRow
    
    @Binding var movieDetailToShow: Movie?
    
    @Binding var showPreviewFullScreen: Bool
    @Binding var previewStartingIndex: Int
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                .padding(.leading, 6)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 135, height: 200)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
            .padding(.leading, 6)
        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HomeStack(vm: HomeVM(), topRowSelection: .home, movieDetailToShow: .constant(nil), showPreviewFullScreen: .constant(false), previewStartingIndex: .constant(0))
            }
        }
        .foregroundColor(.white)
    }
}

