//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Marcos Michel on 27/01/23.
//

import Foundation
import SwiftUI

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Beginnins and Ending", description: "O iludido chefe Michael procura conduzir seus funcionários insatisfeitos na empresa de papel Dunder Mifflin em meio a incessantes contratempos e idiossincrasias.", season: 1, episode: 1)

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel"
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    promotionHeadline: "Best Rated Show"
)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel"
)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    promotionHeadline: "New episodes coming soon"
)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel"
)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    promotionHeadline: "Watch season 6 now"
)

let exampleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.99)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
