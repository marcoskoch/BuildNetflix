//
//  Trailer.swift
//  BuildNetflix (iOS)
//
//  Created by Marcos Michel on 27/02/23.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
