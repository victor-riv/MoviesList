//
//  Movie.swift
//  MovieList
//
//  Created by Victor Rivera on 12/27/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let title: String
    let overview: String
    let posterPath: String
    let backdropPath: String
    let originalTitle: String
    let originalLanguage: String
    let id: Int
    let voteCount: Int
    let genreIds: [Int]
    let popularity: Double
    let voteAverage: Double
    let video: Bool
    let adult: Bool
    let releaseDate: Date
    
    private enum CodingKeys: String, CodingKey {
        case title
        case overview
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case id
        case voteCount = "vote_count"
        case genreIds = "genre_ids"
        case popularity
        case voteAverage = "vote_average"
        case video
        case adult
        case releaseDate = "release_date"
    }
}
