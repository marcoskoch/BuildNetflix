//
//  CustomTabSwitcher.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 22/02/23.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let text = tab.rawValue
        return text.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                            
                            Button {
                                //
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            
            Text("selected view")
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EDIPODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
