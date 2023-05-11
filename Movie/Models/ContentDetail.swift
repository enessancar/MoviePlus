//
//  ContentDetail.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import Foundation

struct ContentDetail: Codable {
    let id: Int?
    let title, name, overview, posterPath, releaseDate: String?
    let numberOfSeasons: Int?
    let firstAirDate, lastAirDate, status: String?
    let runtime: Int?
    let genres: [Genre]?
    let voteAverage: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, title, name, overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case numberOfSeasons = "number_of_seasons"
        case firstAirDate = "first_air_date"
        case lastAirDate = "last_air_date"
        case status, runtime, genres
        case voteAverage = "vote_average"
    }
    
    var isMovie: Bool {
        title != nil && name == nil
    }
    
}

struct Genre: Codable {
    let id: Int?
    let name: String?
}
