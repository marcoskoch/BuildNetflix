//
//  ContentView.swift
//  Shared
//
//  Created by Marcos Michel on 26/01/23.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("2")
                }.tag(1)
            
            Text("Coming Soon")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("3")
                }.tag(2)
            
            Text("Download")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Home")
                }.tag(3)
            
            Text("More")
                .tabItem {
                    Image(systemName: "equal")
                    Text("Home")
                }.tag(4)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
