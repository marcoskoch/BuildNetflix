//
//  EpisodesView.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 28/02/23.
//

import SwiftUI

struct EpisodesView: View {
    
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack {
            // Season picker
            HStack {
                Button {
                    showSeasonPicker = true
                } label: {
                    Group {
                        Text("Season 1")
                        
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                }

                
                Spacer()
            }
            
            // Episodes list
            
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                Text(episode.name)
            }
            
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            EpisodesView(episodes: [exampleEpisode1, exampleEpisode2, exampleEpisode3], showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
