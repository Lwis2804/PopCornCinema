//
//  ModeloMovies.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 18/07/24.
//

import Foundation


struct ModeloMovies : Codable {
    var adult : Bool?
    var backdropPath : String?
    var id : Int?
    var title : String?
    var originalLanguage : String?
    var originalTitle : String?
    var overview : String?
    var posterPath : String?
    var mediaType : String?
    var genreIds : [Int]?
    var popularity : Double?
    var releaseDate : String?
    var video : Bool?
    var voteAverage : Double?
    var voteCount : Int?
    
    /// CodingKey nos ayudara a manejar variables a nuestro gusto, sin romper el codable
    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case id = "id"
        case title = "title"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview = "overview"
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIds = "genre_ids"
        case popularity = "popularity"
        case releaseDate = "release_date"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
