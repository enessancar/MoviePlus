//
//  Content.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import Foundation

struct Content: Codable {
    let page: Int?
    let results: [ContentResult]?
    let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct ContentResult: Codable, Hashable {
    let id: Int?
    let overview: String?
    let posterPath, releaseDate, title, name: String?
    let voteAverage: Double?

    enum CodingKeys: String, CodingKey {
        case id
        case overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, name
        case voteAverage = "vote_average"
    }
}
