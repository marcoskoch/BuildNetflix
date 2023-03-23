//
//  SearchView.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 20/03/23.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var vm = SearchVM()
    
    @State private var searchText = ""
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set: { text in
            searchText = text
            vm.updateSearchText(with: text)
        }

        
        return ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SearchBar(text: searchTextBinding, isLoading: $vm.isLoading)
                    .padding()
                
                ScrollView {
                    if vm.isShowingPopularMovies {
                        Text("Popular movies")
                    }
                    
                    if vm.viewState == .empty {
                        Text("Empty")
                    } else if vm.viewState == .ready && !vm.isShowingPopularMovies {
                        Text("Search Results")
                    }
                }
                
                Spacer()
            }
        }
        .foregroundColor(.white )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
