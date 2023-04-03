//
//  HomeView.swift
//  BuildNetflix
//
//  Created by Marcos Michel on 26/01/23.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie! = nil
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenres
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack {
                    
                    TopRowButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre, showGenreSelection: $showGenreSelection, showTopRowSelection: $showTopRowSelection)
                    
                    TopMoviePreview(movie: exampleMovie5)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    MoviePreviewRow(movies: exampleMovies)
                    
                    HomeStack(vm: vm, topRowSelection: topRowSelection, movieDetailToShow: $movieDetailToShow)
                }
            }
            
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeInOut)
                    .transition(.opacity)
            }
            
            if showTopRowSelection {
                Group {
                    Color.black.opacity(0.8)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        
                        ForEach(HomeTopRow.allCases, id: \.self) { topRow in
                            
                            Button {
                                topRowSelection = topRow
                                showTopRowSelection = false
                            } label: {
                                Text("\(topRow.rawValue)")
                                    .foregroundColor(topRowSelection == topRow ? .white : .gray)
                                    .bold()
                                    .font(topRowSelection == topRow ? .title : .title2)
                            }
                            
                        }
                        
                        Spacer()
                        
                        Button (action: {
                            showTopRowSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom, 30)
                    }
                    
                    
                   
                }
                .edgesIgnoringSafeArea(.all)
            }
            
            if showGenreSelection {
                Group {
                    Color.black.opacity(0.8)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        
                        ScrollView {
                            ForEach(vm.allGenre, id: \.self) { genre in
                                
                                Button {
                                    homeGenre = genre
                                    showGenreSelection = false
                                } label: {
                                    Text("\(genre.rawValue)")
                                        .foregroundColor(homeGenre == genre ? .white : .gray)
                                        .bold()
                                        .font(homeGenre == genre ? .title : .title2)
                                }
                                .padding(.bottom, 40)
                                
                            }
                        }
                        
                        Spacer()
                        
                        Button (action: {
                            showGenreSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom, 30)
                    }
                    
                    
                   
                }
                .edgesIgnoringSafeArea(.all)
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre: HomeGenre
    
    @Binding var showGenreSelection: Bool
    @Binding var showTopRowSelection: Bool
    
    var body: some View {
        
        switch topRowSelection {
        case .home:
            HStack {
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: {
                    topRowSelection = .tvShow
                }, label: {
                    Text("TV Shows")
                })
                .buttonStyle(PlainButtonStyle())
                
                
                Spacer()
                
                Button(action: {
                    topRowSelection = .movies
                }, label: {
                    Text("Movies")
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: {
                    topRowSelection = .myList
                }, label: {
                    Text("My List")
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
        case .tvShow, .movies, .myList:
            HStack {
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(PlainButtonStyle())
                
                HStack(spacing: 20) {
                    Button(action: {
                        showTopRowSelection = true
                    }, label: {
                        HStack {
                            Text(topRowSelection.rawValue)
                                .font(.system(size: 18))
                            
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180))
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        showGenreSelection = true
                    }, label: {
                        HStack {
                            Text(homeGenre.rawValue)
                                .font(.system(size: 12))
                            
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180))
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
            }
            .padding(.leading, 30)
            .padding(.trailing, 30)
        }
        
        
    }
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShow = "TV Show"
    case movies = "Movies"
    case myList = "My List"
}

enum HomeGenre: String {
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Thriller
}


