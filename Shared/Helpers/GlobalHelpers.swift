//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Marcos Michel on 27/01/23.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.youtube.com/embed/BjDHdf1Vd0E")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/103")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/102")!

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)

let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Beginnins and Ending", description: "O iludido chefe Michael procura conduzir seus funcionários insatisfeitos na empresa de papel Dunder Mifflin em meio a incessantes contratempos e idiossincrasias.", season: 1, episode: 1)

let exampleEpisode1 = Episode(
    name: "Beginnings and Endings",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/102",
    description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let exampleEpisode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/103",
    description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL)

let exampleEpisode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
    length: 52,
    videoURL: exampleVideoURL)

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
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    moreLikeThis: exampleMovies,
    trailers: exampleTrailers
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
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers
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
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    trailers: exampleTrailers
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
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers
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
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    trailers: exampleTrailers
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
    promotionHeadline: "Watch season 6 now",
    trailers: exampleTrailers
)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    promotionHeadline: "Watch season 6 now",
    trailers: exampleTrailers
)

var exampleMovies: [Movie] {
    return [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled()
}

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
