//
//  SearchBar.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 07/03/23.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var text: String = ""
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 270, height: 36)
                .cornerRadius(8)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                    .background(Color.graySearchBackground)
                    .foregroundColor(.white)
                
                
                Button {
                    //
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.graySearchText)
                        .frame(width: 35, height: 35)
                }
                .padding(.trailing, 18)
                
                Button {
                    //
                } label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                }
                .padding(.trailing, 10)

            }
        }
        
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SearchBar()
                .padding()
        }
    }
}
 
