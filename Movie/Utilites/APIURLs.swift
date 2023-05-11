//
//  APIURLs.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import Foundation

enum APIURLs {
    static private let api_key = "e112ed72df8da5c3b38e4e6579896bc6"
    static private let base_url = "https://api.themoviedb.org/3/"
    
    //MARK: - Videos
    static func movieVideo(id: String) -> String {
         "\(base_url)movie/\(id)/videos?api_key=\(api_key)&language=en-US"
    }
    
    static func showVideo(id: String) -> String {
         "\(base_url)tv/\(id)/videos?api_key=\(api_key)&language=en-US"
    }
    
    //MARK: - Image
    static func image(path: String) -> String {
        "https://image.tmdb.org/t/p/w500/\(path)"
    }
    
    //MARK: - Multi Search
    static func multiSearch(query: String) -> String {
        return "\(base_url)search/multi?api_key=\(api_key)&language=en-US&query=\(query)&page=1&include_adult=false"
    }
    
    //MARK: - Person
    static func person(id: String) -> String {
         "\(base_url)person/\(id)?api_key=\(api_key)&language=en-US"
    }
    
    //MARK: - Shows
    static func trendShows() -> String {
         "\(base_url)trending/tv/day?api_key=\(api_key)"
    }
    
    static func showDetail(id: String) -> String {
         "\(base_url)tv/\(id)?api_key=\(api_key)"
    }
    
    static func similarShows(showId: String, page: Int) -> String {
        "\(base_url)/tv/\(showId)/similar?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func latestShow(page: Int) -> String {
        "\(base_url)tv/latest?api_key=\(api_key)&language=en-US"
    }
    
    static func airingTodayShows(page: Int) -> String {
        "\(base_url)tv/airing_today?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func onTheAirShows(page: Int) -> String {
        "\(base_url)tv/on_the_air/?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func popularShows(page: Int) -> String {
        "\(base_url)tv/popular?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func topRatedShows(page: Int) -> String {
        "\(base_url)tv/top_rated?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func showCredits(id: String) -> String {
        "\(base_url)tv/\(id)/credits?api_key=\(api_key)&language=en-US"
    }
    
    static func personShows(personId: String) -> String {
        "\(base_url)person/\(personId)/tv_credits?api_key=\(api_key)&language=en-US"
    }
    
    //MARK: - Movie
    
    static func trendMovies() -> String {
        "\(base_url)trending/movie/day?api_key=\(api_key)"
    }
    
    static func movieDetail(id: String) -> String {
        "\(base_url)movie/\(id)?api_key=\(api_key)"
    }
    
    static func similarMovies(movieId: String, page: Int) -> String {
        "\(base_url)movie/\(movieId)/similar?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func latestMovies(page: Int) -> String {
        "\(base_url)movie/latest?api_key=\(api_key)&language=en-US"
    }
    
    static func nowPlayingMovies(page: Int) -> String {
        "\(base_url)movie/now_playing?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func popularMovies(page: Int) -> String {
        "\(base_url)movie/popular?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func topRatedMovies(page: Int) -> String {
        "\(base_url)movie/top_rated?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func upcomingMovies(page: Int) -> String {
        "\(base_url)movie/upcoming?api_key=\(api_key)&language=en-US&page=\(page)"
    }
    
    static func movieCredits(id: String) -> String {
        "\(base_url)movie/\(id)/credits?api_key=\(api_key)&language=en-US"
    }
    
    static func personMovies(personId: String) -> String {
        "\(base_url)person/\(personId)/movie_credits?api_key=\(api_key)&language=en-US"
    }
}
