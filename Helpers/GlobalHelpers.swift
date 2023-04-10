//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Marcos Michel on 27/01/23.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
let exampleVideoURL2 = URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!
let exampleVideoURL3 = URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")!
let exampleVideoURL4 = URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4")!
let exampleVideoURL5 = URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4")!
let exampleVideoURL6 = URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/103")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/102")!

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL2, thumbnailImageURL: exampleImageURL2)

let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL3, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]
let exampleTrailers2 = [exampleTrailer1, exampleTrailer2, exampleTrailer3]
let exampleTrailers3 = [exampleTrailer1, exampleTrailer2, exampleTrailer3]


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

let exampleEpisode4 = Episode(
    name: "Beginnings and Endings",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/105",
    description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let exampleEpisode5 = Episode(
    name: "Dark Matter",
    season: 2,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/107",
    description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL)

let exampleEpisode6 = Episode(
    name: "Ghosts",
    season: 3,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/108",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
    length: 52,
    videoURL: exampleVideoURL)

var allExampleEpisodes = [exampleEpisode1, exampleEpisode2, exampleEpisode3, exampleEpisode4, exampleEpisode5, exampleEpisode6]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    accentColor: Color.blue,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Baran bo Oban, Jantje Friese",
    cast: "Luis Hofmann, Oliver Masuci, Jordis Triebel",
    moreLikeThis: exampleMovies,
    episodes: allExampleEpisodes,
    trailers: exampleTrailers,
    previewImageName: "darkPreview",
    previewVideoURL: exampleVideoURL
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
    trailers: exampleTrailers2,
    previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL2
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
    trailers: exampleTrailers3,
    previewImageName: "travelersPreview",
    previewVideoURL: exampleVideoURL3
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
    episodes: allExampleEpisodes,
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers,
    previewImageName: "whiteLinesPreview",
    previewVideoURL: exampleVideoURL4
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
    trailers: exampleTrailers2,
    previewImageName: "dirtyJohnPreview",
    previewVideoURL: exampleVideoURL5
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
    trailers: exampleTrailers3,
    previewImageName: "arrestedDevPreview",
    previewVideoURL: exampleVideoURL6
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
    trailers: exampleTrailers,
    previewImageName: "darkPreview",
    previewVideoURL: exampleVideoURL2
)

var exampleMovies: [Movie] {
    return [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7]
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

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
 }

extension View {
    
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    /// ```
    /// Text("Label")
    ///     .isHidden(true)
    /// ```
    ///
    /// Example for complete removal:
    /// ```
    /// Text("Label")
    ///     .isHidden(true, remove: true)
    /// ```
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
